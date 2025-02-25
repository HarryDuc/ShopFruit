<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OrderResource\Pages;
use App\Filament\Resources\OrderResource\RelationManagers\AddressRelationManager;
use App\Models\Order;
use App\Models\Product;
use Filament\Forms\Components\Group;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\ToggleButtons;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use filament\Forms\Set;
use filament\Forms\Get;
use Filament\Tables;
use Filament\Tables\Columns\SelectColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Number;

class OrderResource extends Resource
{
    protected static ?string $model = Order::class;
    protected static ?int $navigationSort = 5;
    protected static ?string $navigationIcon = 'heroicon-o-shopping-bag';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Group::make()->schema([
                    Section::make('Order Information')->schema([
                        Select::make('user_id')
                            ->label('Người dùng')
                            ->relationship('user', 'name')
                            ->searchable()
                            ->preload()
                            ->required(),
                        Select::make('payment_method')
                            ->label('Phương thức thanh toán')
                            ->options([
                                'cod' => 'Cash on delivery',
                                'stripe' => 'Stripe',
                                'paypal' => 'PayPal',
                                'momo' => 'MoMo',
                                'vnpay' => 'VN Pay',
                                'zalopay' => 'Zalo Pay',
                            ])
                            ->required(),
                        Select::make('payment_status')
                            ->label('Trạng thái thanh toán')
                            ->options([
                                'pending' => 'Pending',
                                'paid' => 'Paid',
                                'failed' => 'Failed'
                            ])
                            ->default('pending')
                            ->required(),
                        ToggleButtons::make('status')
                            ->label('Trạng thái đơn hàng')
                            ->inline()
                            ->default('new')
                            ->required()
                            ->options([
                                'new' => 'Đơn hàng mới',
                                'processing' => 'Đang xử lý',
                                'shipped' => 'Đang giao',
                                'delivered' => 'Đã giao hàng',
                                'cancelled' => 'Đã hủy'
                            ])
                            ->colors([
                                'new' => 'info',
                                'processing' => 'warning',
                                'shipped' => 'success',
                                'delivered' => 'success',
                                'cancelled' => 'danger',
                            ])
                            ->icons([
                                'new' => 'heroicon-m-sparkles',
                                'processing' => 'heroicon-m-arrow-path',
                                'shipped' => 'heroicon-m-truck',
                                'delivered' => 'heroicon-m-check-badge',
                                'cancelled' => 'heroicon-m-x-circle',
                            ]),
                        Select::make('currency')
                            ->label('Tiền tệ')
                            ->options([
                                'vnd' => 'VND',
                                'eur' => 'Euros',
                                'usd' => 'USD',
                            ])
                            ->default('vnd')
                            ->required(),
                        Select::make('shipping_method')
                            ->label('Phương thức giao hàng')
                            ->options([
                                'spxexpress' => 'SPX Express',
                                'viettel' => 'Viettel Post',
                                'ninjavan' => 'Ninja Van',
                                'jtexpress' => 'J&T Express',
                            ]),
                        Textarea::make('notes')
                            ->label('Lưu ý')
                            ->columnSpanFull()
                    ])->columns(2),
                    Section::make('Sản phẩm trong hóa đơn')->schema([
                        Repeater::make('items')
                            ->relationship()
                            ->schema([
                                Select::make('product_id')
                                    ->label('Sản phẩm')
                                    ->relationship('product', 'name')
                                    ->searchable()
                                    ->preload()
                                    ->required()
                                    ->distinct()
                                    ->disableOptionsWhenSelectedInSiblingRepeaterItems()
                                    ->columnSpan(4)
                                    ->reactive()
                                    ->afterStateUpdated(fn($state, Set $set) => $set('unit_amount', Product::find($state)?->price ?? 0))
                                    ->afterStateUpdated(fn($state, Set $set) => $set('total_amount', Product::find($state)?->price ?? 0)),
                                TextInput::make('quantity')
                                    ->label('Số lượng')
                                    ->numeric()
                                    ->required()
                                    ->default(1)
                                    ->minValue(1)
                                    ->columnSpan(2)
                                    ->reactive()
                                    ->afterStateUpdated(fn($state, Set $set, Get $get) => $set('total_amount', $state * $get('unit_amount'))),
                                TextInput::make('unit_amount')
                                    ->label('Giá sản phẩm')
                                    ->numeric()
                                    ->required()
                                    ->disabled()
                                    ->dehydrated()
                                    ->columnSpan(3),

                                TextInput::make('total_amount')
                                    ->label('Tổng tiền')
                                    ->numeric()
                                    ->dehydrated()
                                    ->required()
                                    ->columnSpan(3),

                            ])->columns(12),
                        Placeholder::make('grand_total_placeholder')
                            ->label('Tổng hóa đơn')
                            ->content(function (Get $get, Set $set) {
                                $total = 0;
                                if (!$repeaters = $get('items')) {
                                    return $total;
                                }
                                foreach ($repeaters as $key => $repeater) {
                                    $total += $get("items.{$key}.total_amount");
                                }
                                $set('grand_total', $total);
                                return number_format($total, 0, ',', '.') . '₫';
                            }),
                        Hidden::make('grand_total')
                            ->default(0)

                    ])
                ])->columnSpanFull()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('user.name')
                    ->label('Người dùng')
                    ->searchable()
                    ->searchable(),
                TextColumn::make('grand_total')
                    ->label('Tổng hóa đơn')
                    ->sortable()
                    ->numeric()
                    ->formatStateUsing(fn($state) => number_format($state, 2) . ' VND'),
                TextColumn::make('payment_method')
                    ->label('Phương thức thanh toán')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('payment_status')
                    ->label('Trạng thái thanh toán')
                    ->searchable()
                    ->sortable(),
                // TextColumn::make('currency')
                //     ->sortable()
                //     ->searchable(),
                TextColumn::make('shipping_method')
                    ->label('Giao hàng')
                    ->searchable()
                    ->sortable(),
                SelectColumn::make('status')
                    ->label('Tình trạng')
                    ->options([
                        'new' => 'Đơn hàng mới',
                        'processing' => 'Đang xử lý',
                        'shipped' => 'Đang giao',
                        'delivered' => 'Đã giao hàng',
                        'cancelled' => 'Đã hủy'
                    ])
                    ->searchable()
                    ->sortable(),
                TextColumn::make('created_at')
                    ->sortable()
                    ->dateTime()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->sortable()
                    ->dateTime()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([

            ])
            ->headerActions([
                Tables\Actions\Action::make('exportUsers')
                    ->label('Xuất dữ liệu hóa đơn')
                    ->icon('heroicon-m-check-badge')
                    ->color('primary')
                    ->url(route('orders.export'))
                    ->openUrlInNewTab(),
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\ViewAction::make(),
                    Tables\Actions\DeleteAction::make()
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            AddressRelationManager::class
        ];
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }

    public static function getNavigationBadgeColor(): string|array|null
    {
        return static::getModel()::count() > 10 ? 'success' : 'danger';
    }
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListOrders::route('/'),
            'create' => Pages\CreateOrder::route('/create'),
            'view' => Pages\ViewOrder::route('/{record}'),
            'edit' => Pages\EditOrder::route('/{record}/edit'),
        ];
    }
}
