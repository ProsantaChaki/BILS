<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Session;
use DB;
use \App\System;
use \App\Setting;
use App\Menu;
use App\Web_action;
use App\User_group;
use App\User_group_permission;

class MessageController extends Controller
{
	public function __construct(Request $request)
    {
        $this->page_title = $request->route()->getName();
        $description = \Request::route()->getAction();
        $this->page_desc = isset($description['desc']) ? $description['desc'] : $this->page_title;
    }

    public function all_messages(){
    	$data['page_title'] = $this->page_title;
		$data['module_name']= "Messages";
		$data['sub_module']= "All Messages";
		return view('messages.all_messages',$data);
    }
}
