<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
// use Brian2694\Toastr\Facades\Toastr;
class SettingController extends Controller
{
    function __construct()
	{
		// $this->middleware('auth');
		// $this->middleware('permission:websetting-edit', ['only' => ['edit','update']]);

        // $setting_edit = Permission::get()->filter(function($item) {
        //     return $item->name == 'websetting-edit';
        // })->first();


        // if ($setting_edit == null) {
        //     Permission::create(['name'=>'websetting-edit']);
        // }
	}

	public function edit()
	{
        $setting = Setting::find(1);
        // $currencies = Currency::where('status',1)->get();
		return view('settings.edit',compact('setting'));
	}

	public function update(Request $request, $id=1)
	{
		$rules = [
            'website_title' 			=> 'nullable|string',
            'website_logo_dark'         => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'training_cost'             => 'nullable|numeric',
             'about'                    => 'nullable|string',
            'website_logo_light'        => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'website_favicon'           => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'meta_title'                => 'nullable|string',
            'our_vision'                => 'nullable|string',
            'meta_description'          => 'nullable|string',
            'meta_tag'                  => 'nullable|string',
            'currency'                  => 'nullable|string',
            'address'                   => 'nullable|string',
            'phone'                     => 'nullable|string',
            'email'                     => 'nullable|string',
            'telegram_group'            => 'nullable',
        ];

        $messages = [
            
        ];

        $this->validate($request, $rules, $messages);
		$input = $request->all();
        // dd($input);
		$setting = Setting::find($id);
        if (!empty($input['website_logo_dark'])) {

            $newImageName = uniqid() . '-' .'logo'. '.' . $request->website_logo_dark->extension();

            $request->website_logo_dark->move(public_path('images/settings'), $newImageName);

            $input['website_logo_dark']  = $newImageName;
            // dd($input);
        }
        if (!empty($input['website_logo_light'])) {

            $newImageName = uniqid() . '-' .'logo'. '.' . $request->website_logo_light->extension();

            $request->website_logo_light->move(public_path('images/settings'), $newImageName);

            $input['website_logo_light']  = $newImageName;
            // dd($input);
        }
        if (!empty($input['website_favicon'])) {

            $newImageName = uniqid() . '-' .'favicon'. '.' . $request->website_favicon->extension();

            $request->website_favicon->move(public_path('images/settings'), $newImageName);

            $input['website_favicon']  = $newImageName;
            // dd($input);
        }

        try {
			$setting->update($input);
            // Toastr::success(__('setting.message.update.success'));
		    return redirect()->route('website-setting.edit');
		} catch (Exception $e) {
            // Toastr::success(__('setting.message.update.error'));
		    return redirect()->route('website-setting.edit');
		}
	}
}

