<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home')->with([
            'plugins'=>DB::table('plugins')->get(),
            'hosts' => DB::table('hosts')->count()
            ]);
    }
    
    public function getHostsStart()
    {
        if( DB::table('reload')->update(['status'=>1]) )
            return redirect()->route('home')
                ->with('success',DB::table('systemsg')->where('code','=',3)->first()->msg);

        return redirect()->back()
            ->with('error',DB::table('systemsg')->where('code','=',4)->first()->msg);    
    }
    
}
