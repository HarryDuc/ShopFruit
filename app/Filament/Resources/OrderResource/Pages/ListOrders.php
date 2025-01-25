<?php

namespace App\Filament\Resources\OrderResource\Pages;

use App\Filament\Resources\OrderResource;
use App\Filament\Resources\OrderResource\Widgets\OrderStats;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;

class ListOrders extends ListRecords
{
    protected static string $resource = OrderResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
    protected function getHeaderWidgets(): array {
        return [
            OrderStats::class
        ];
    }
    public function getTabs(): array {
        return [
            'null' => Tab::make('Tất cả'),
            'Mới' => Tab::make()->query(fn ($query) => $query->where('status', 'new')),
            'Xử lý' => Tab::make()->query(fn ($query) => $query->where('status', 'processing')),
            'Đã giao' => Tab::make()->query(fn ($query) => $query->where('status', 'shipped')),
            'Hoàn thành' => Tab::make()->query(fn ($query) => $query->where('status', 'delivered')),
            'Hủy' => Tab::make()->query(fn ($query) => $query->where('status', 'cancelled'))
        ];
    }
}
