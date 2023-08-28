<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreUserRequest;
use App\Http\Resources\UserResource;
use App\Models\Session;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\Facades\DataTables;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('home.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data = User::all();
        return DataTables::of($data)
        ->addIndexColumn()
        ->addColumn('aksi', function ($data) {
            return view('home.tombol')->with('data', $data);
        })
        ->make(true);
        return UserResource::collection($data);
    }

    public function added(StoreUserRequest $request)
    {
        $posts = User::create($request->all());
        
        return new UserResource($posts);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validasi = Validator::make($request->all(),[
            'name' => 'required|min:2',
            'email' => 'required',
        ]);

        if ($validasi->fails()) {
            return response()->json(['errors'=>$validasi->errors()]);
        } else {
            $data = [
                'name' =>$request->name,
                'email' =>$request->email,
                'code' => Str::random(10),
                'password' => bcrypt($request->name.date('Y')),
            ];
        }
            User::create($data);
            return response()->json(['success'=>"Successfully created data!"]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = User::where('id', $id)->first();
        return response()->json(['result'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
         $validasi = Validator::make($request->all(),[
            'name' => 'required|min:2',
            'email' => 'required',
        ]);

        if ($validasi->fails()) {
            return response()->json(['errors'=>$validasi->errors()]);
        } else {
            $data = [
                'name' =>$request->name,
                'email' =>$request->email,
            ];
        }
            User::where('id', $id)->update($data);
            return response()->json(['success'=>"Successfully updated data!"]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
    $userIdInSession = Session::all(); 
    // dd($userIdInSession);
    if ($userIdInSession === $id) {
        return response()->json(['error' => "User is currently logged in and cannot be deleted."]);
    } else {    
        User::where('id', $id)->delete();
        return response()->json(['success' => "Successfully deleted data!"]);
    }


    }
}
