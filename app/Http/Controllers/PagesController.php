<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Config;


class PagesController extends AppController {
    public function home(){
    	return view('pages.home');
    }

    public function projects(){
        return view('pages.projects');
    }

    public function project_item($project_id = 0){
        return view('pages.project_item');
    }

    public function contacts(){
    	return view('pages.contacts');
    }

    public function terms(){
        return view('pages.terms');
    }

    public function legal(){
        return view('pages.legal');
    }

}
