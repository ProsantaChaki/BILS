<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

#Login

Route::get('/login',array('as'=>'Sign in', 'uses' =>'SystemAuthController@authLogin'));
Route::get('/',array('as'=>'Sign in', 'uses' =>'SystemAuthController@authLogin'));
Route::get('/auth',array('as'=>'Sign in', 'uses' =>'SystemAuthController@authLogin'));
Route::get('auth/login',array('as'=>'Sign in', 'uses' =>'SystemAuthController@authLogin'));
Route::post('auth/post/login',array('as'=>'Sign in' , 'uses' =>'SystemAuthController@authPostLogin'));



#ForgetPassword
Route::get('auth/forget/password',array('as'=>'Forgot Password' , 'uses' =>'SystemAuthController@forgetPasswordAuthPage'));
Route::post('auth/forget/password',array('as'=>'Forgot Password' , 'uses' =>'SystemAuthController@authForgotPasswordConfirm'));
Route::get('auth/forget/password/{user_id}/verify',array('as'=>'Forgot Password Verify' , 'uses' =>'SystemAuthController@authSystemForgotPasswordVerification'));
Route::post('auth/forget/password/{user_id}/verify',array('as'=>'New Password Submit' , 'uses' =>'SystemAuthController@authSystemNewPasswordPost'));



Route::group(['middleware' => ['auth']], function () {
    #logout
    Route::get('auth/logout/{email}',array('as'=>'Logout' , 'uses' =>'SystemAuthController@authLogout'));	
	Route::get('/dashboard',array('as'=>'Dashboard' , 'uses' =>'AdminController@index'));
	Route::get('/admin/admin-user-management',array('as'=>'Admin Users' , 'uses' =>'AdminController@adminUserManagement'));
	Route::get('/admin/ajax/admin-list',array('as'=>'Admin User List' , 'uses' =>'AdminController@ajaxAdminList'));
	Route::post('/admin/admin-user-entry',array('as'=>'Admin User Entry' , 'uses' =>'AdminController@ajaxAdminEntry'));

	Route::get('/admin/delete/{id}',array('as'=>'Admin Delete' , 'uses' =>'AdminController@adminDestroy'));
	Route::get('/admin/admin-view/{id}',array('as'=>'Admin View' , 'uses' =>'AdminController@adminUserView'));
	Route::get('/admin/edit/{id}',array('as'=>'Admin Edit' , 'uses' =>'AdminController@adminUserEdit'));
	Route::get('/general/setting',array('as'=>'General Setting' , 'uses' =>'SettingController@generalSetting'));
	Route::post('/general/setting-update',array('as'=>'General Setting Update' , 'uses' =>'SettingController@generalSettingUpdate'));
	
	Route::get('/module/manage-module',array('as'=>'Manage Module' , 'uses' =>'SettingController@moduleManagement'));

	Route::get('/module/menu-list',array('as'=>'Menu List' , 'uses' =>'SettingController@ajaxMenuList'));
	
	Route::get('/module/get-parent-menu',array('as'=>'Parent Menu List' , 'uses' =>'SettingController@getParentMenu'));
	
	Route::get('/module/get-module-id/{module_name}',array('as'=>'Menu ID' , 'uses' =>'SettingController@getMenuID'));
	
	Route::post('/module/module-entry/',array('as'=>'Module Entry' , 'uses' =>'SettingController@moduleEntry'));

	Route::get('/module/edit/{id}',array('as'=>'Module Edit' , 'uses' =>'SettingController@moduleEdit'));
	Route::get('/module/delete/{id}',array('as'=>'Module Edit' , 'uses' =>'SettingController@moduleDelete'));

	/*--------------Web Action start-------------*/
	Route::get('/web/action-management',array('as'=>'Web Action Management' , 'uses' =>'SettingController@webActionManagement'));
	Route::get('/web-action/get-module-name',array('as'=>'Web Action Management' , 'uses' =>'SettingController@getModuleName'));
	Route::post('/web-action/web-action-entry',array('as'=>'Web Action Entry' , 'uses' =>'SettingController@webActionEntry'));
	Route::get('/web-action/action-lists',array('as'=>'Web Action List' , 'uses' =>'SettingController@webActionList'));
	Route::get('/web-action/edit/{id}',array('as'=>'Web Action Edit' , 'uses' =>'SettingController@web_action_edit'));
	/*--------------Web Action End-------------*/
	
	/*--------------Groups start-------------*/
	Route::get('admin/admin-group-management',array('as'=>'Admin Groups Management' , 'uses' =>'AdminController@admin_user_groups'));
	Route::post('/admin/admin-group-entry',array('as'=>'Admin Groups Entry' , 'uses' =>'AdminController@admin_groups_entry_or_update'));
	Route::get('/admin/admin-group-list',array('as'=>'Admin Groups List' , 'uses' =>'AdminController@admin_groups_list'));
	Route::get('/admin/admin-group-edit/{id}',array('as'=>'Admin Groups Edit' , 'uses' =>'AdminController@admin_group_edit'));
	Route::get('/admin/admin-group-delete/{id}',array('as'=>'Admin Groups Delete' , 'uses' =>'AdminController@admin_group_delete'));
	/*--------------Groups End-------------*/
	
});



/*

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
*/
