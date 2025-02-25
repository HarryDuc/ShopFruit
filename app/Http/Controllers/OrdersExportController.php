<?php

namespace App\Http\Controllers;

use App\Exports\OrdersExport;
use Maatwebsite\Excel\Facades\Excel;

class OrdersExportController extends Controller
{
    public function export()
    {
        return Excel::download(new OrdersExport, 'orders.xlsx');
    }
}
