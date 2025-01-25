<?php

namespace App\Exports;

use App\Models\Order;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OrdersExport implements FromCollection, WithHeadings
{
    public function collection()
    {
        return Order::select('id', 'user_id', 'grand_total', 'payment_method', 'payment_status', 'status', 'notes', 'created_at')->get();
    }

    public function headings(): array
    {
        return ['ID', 'User', 'Grand Total', 'Payment Method', 'Payment Status', 'Status', 'Notes', 'Created At'];
    }
}
