<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Session;
use DB;
use \App\System;
use App\App_user;

class AppUserController extends Controller
{
	public function __construct(Request $request)
    {
        $this->page_title = $request->route()->getName();
        $description = \Request::route()->getAction();
        $this->page_desc = isset($description['desc']) ? $description['desc'] : $this->page_title;
    }

    public function index(){
    	$data['page_title'] = $this->page_title;
		$data['module_name']= "User";
        return view('app_user.index', $data);
    }

    /*----- App User Entry And Update Start -----*/
    public function app_user_entry_update(Request $request){
    	$rule = [
            'app_user_name' => 'Required|max:50',
            'nid_no' => 'Required|max:20',
            'contact_no' => 'Required|max:20',
            'email' => 'Required|email',
            //'emp_image_upload' => 'mimes:jpeg,jpg,png,svg'
        ];

        $validation = Validator::make($request->all(), $rule);
        if ($validation->fails()) {
			$return['result'] = "0";
			$return['errors'] = $validation->errors();
			return json_encode($return);
        }
		else{
			//insert
			if ($request->app_user_edit_id == ''){
				#EmailCheck
	            $email_verification = App_user::where('email',$request->email)->first();
	            if(isset($email_verification->id)){
					$return['result'] = "0";
					$return['errors'][] = $request->email." is already exists";
					return json_encode($return);
				}
			}
			//update
			else{
				 $email_verification = App_user::where([['email',$request->email],['id', '!=', $request->app_user_edit_id]])->first();
           		if(isset($email_verification->id)){
					$return['result'] = "0";
					$return['errors'][] = $request->email." is already exists";
					return json_encode($return);
				}
			}		
			
			try{
				DB::beginTransaction();
				$password = ($request->password =="")?md5('1234'):md5($request->password);
				$is_active = ($request->is_active=="")?"0":$request->is_active;
				$column_value = [
					'name'=>$request->app_user_name,
					'nid_no'=>$request->nid_no,
					'contact_no'=>$request->contact_no,
					'email'=>$request->email,
					'address'=>$request->address,
					'password'=>$password,
					'status'=>$is_active,
					'remarks'=>$request->remarks
					//'user_profile_image'=>$image_name,	
				];
				
				if ($request->app_user_edit_id == '') {
					$response = App_user::create($column_value);
				}
				else if($request->app_user_edit_id != ''){
					$data = App_user::find($request->app_user_edit_id);
					$data->update($column_value);
					// echo $data;
				}
				DB::commit();
				$return['result'] = "1";
				return json_encode($return);
			}
			catch (\Exception $e){
				DB::rollback();
				$return['result'] = "0";
				$return['errors'][] ="Faild to save";
				return json_encode($return);
			}
		}
    }
    /*----- App User Entry And Update End -----*/


    /*----- App User List Start -----*/
    public function app_user_list(){
    	$app_user_details = App_user::Select('user_profile_image', 'id',  'name',  'email', 'status')->get();		
		$return_arr = array();
		foreach($app_user_details as $user){			
			$user['status']=($user->status == 1)?"<button class='btn btn-xs btn-success' disabled>Active</button>":"<button class='btn btn-xs btn-danger' disabled>In-active</button>";
			$user['actions']="<button onclick='app_user_edit(".$user->id.")' id=edit_" . $user->id . "  class='btn btn-xs btn-green admin-user-edit' ><i class='clip-pencil-3'></i></button>"
							." <button onclick='app_user_view(".$user->id.")' id='view_" . $user->id . "' class='btn btn-xs btn-primary admin-user-view' ><i class='clip-zoom-in'></i></button>"
							." <button onclick='delete_app_user(".$user->id.")' id='delete_" . $user->id . "' class='btn btn-xs btn-danger admin-user-delete' ><i class='clip-remove'></i></button>";
			$return_arr[] = $user;
		}
		return json_encode(array('data'=>$return_arr));
    }
    /*----- App User List End -----*/


    /*----- App User Delete Start -----*/
    public function app_user_delete($id){
    	App_user::find($id)->delete();
		return json_encode(array(
			"deleteMessage"=>"Deleted Successful"
		));
    }
    /*----- App User Delete End -----*/



    /*----- App User Edit Start -----*/
    public function app_user_edit($id){
    	$data = App_user::find($id);
		return json_encode($data);
    }
    /*----- App User Edit End -----*/


    /*----- App User View Start -----*/
    public function app_user_view($id){
    	$data = App_user::find($id);
		return json_encode($data);
    }
    /*----- App User View End -----*/


   













    
}
