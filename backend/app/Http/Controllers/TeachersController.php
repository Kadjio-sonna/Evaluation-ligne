<?php

namespace App\Http\Controllers;

use App\Teacher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;


class TeachersController extends Controller
{

    public static function addTeacher(Request $request) {

        $validator = validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'subject' => 'required',
            'phone' => 'required',
            'sexe' => 'required',
            'image_prof' => 'required'
        ]);

        if ($validator->fails()) {
            return Response::json(['error' => $validator->errors()->all()], 409);
        }

         $teacher = new Teacher();

         $teacher->name = $request->name;
         $teacher->email = $request->email;
         $teacher->subject = $request->subject;
         $teacher->phone = $request->phone;
         $teacher->sexe = $request->sexe;

        $image_prof = $request->file("image_prof");
        $name = time() . "-" . $image_prof->getClientOriginalName();
        $image_prof->move(public_path("uploads/profil"), $name);
        $teacher->image_prof = url("uploads/profil/". $name);


        $teacher->save();

        return Response::json(['message' => 'Professeur Successfully Added !']);
    }
}
