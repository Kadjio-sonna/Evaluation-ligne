<?php

namespace App\Http\Controllers;

use App\Cour;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;


class CoursController extends Controller
{
    public static function addCour(Request $request)
    {

        $validator = validator::make($request->all(), [
            'titre' => 'required',
            'description' => 'required',
            'heure' => 'required',
            'image' => 'required'
        ]);

        if ($validator->fails()) {
            return Response::json(['error' => $validator->errors()->all()], 409);
        }

        $cour = new Cour();
        $cour->titre = $request->titre;
        $cour->description = $request->description;
        $cour->heure = $request->heure;

        $image = $request->file("image");
        $name = time()."-". $image->getClientOriginalName();
        $image->move(public_path("uploads"), $name);
        $cour->image = url("uploads/" . $name);

        $cour->save();

        return Response::json(['message' => 'Cour Successfully Added !']);
    }

    public static function updateCour(Request $request)
    {

        $validator = validator::make($request->all(), [
            'id' => 'required',
            'titre' => 'required',
            'description' => 'required',
            'heure' => 'required'
        ]);

        if ($validator->fails()) {
            return Response::json(['error' => $validator->errors()->all()], 409);
        }

        $cour = Cour::find($request->id);
        $cour->titre = $request->titre;
        $cour->description = $request->description;
        $cour->heure = $request->heure;

        $cour->save();

        return Response::json(['message' => 'Cour Successfully Updated !']);
    }

    public static function deleteCour(Request $request)
    {

        $validator = validator::make($request->all(), [
            'id' => 'required',
        ]);

        if ($validator->fails()) {
            return Response::json(['error' => $validator->errors()->all()], 409);
        }

        try {
            $cour = Cour::where('id', $request->id)->delete();
            return Response::json(['message' => 'Cour Successfully Deleted !']);
        } catch (Exception $e) {
            return Response::json(['error' => ['Cour connot be Delete !']], 409);
        }
    }

    public static function showCour(Request $request)
    {
        session(['key' => $request->keywords]);
        $cours = Cour::where(function ($q) {
            $value = session('key');
            $q->where('cours.id', 'LIKE', '%' . $value . '%')
                ->orwhere('cours.titre', 'LIKE', '%' . $value . '%')
                ->orwhere('cours.description', 'LIKE', '%' . $value . '%')
                ->orwhere('cours.heure', 'LIKE', '%' . $value . '%');
        })->get();

        return Response::json($cours);
    }

    public static function showOneCour(int $id) {

        $cour = Cour::find($id);
        return Response::json($cour);
    }
}
