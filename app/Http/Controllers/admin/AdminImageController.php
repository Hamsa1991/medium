<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;

class AdminImageController extends Controller
{
    /**
     * Uploads image using CKEditor
     * @param Request $request
     */
    public function upload(Request $request){
        if($request->hasFile('upload')){
            //set file name
            $originName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = $fileName.'_'.time().'.'.$extension;

            //save image file
            $request->file('upload')->move(public_path('uploads/ckeditor'),$fileName);

            $CKEditorFuncName = $_GET['CKEditorFuncNum'];
            $url = URL::asset('uploads/ckeditor/').'/'. $fileName;
            $response = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncName,'$url')</script>";

            @header('content-type: text/html; charset-utf-8');
            echo $response;
        }
    }
}
