<?php

namespace App\Http\Controllers;


use App\Models\UserImportData;
use Illuminate\Http\Request;
use App\Models\UsersExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\Http\Controllers\Controller;

class ImportExportController extends Controller
{
   
	public function importExportView()
    {
       return view('admin.importexport.import');
    }
   
    /**
    * @return \Illuminate\Support\Collection
    */
    public function export(Request $req) 
    {
        return Excel::download(new UsersExport, 'users.xlsx');
    }
   
    /**
    * @return \Illuminate\Support\Collection
    */
    public function import() 
    {
        Excel::import(new UserImportData,request()->file('file'), 'UTF-8');
           
        //return back();
		return redirect()->back()->with('success', 'All good!');
    }
}
