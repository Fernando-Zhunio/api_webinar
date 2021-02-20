<?php

namespace App\Http\Controllers;

use App\webinar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class WebinarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('can:webinar_aprobar')->only('aprobarWebinar');
        $this->middleware('auth:api')->except('index');
        
        // $this->middleware('can:webinar_aprobar');
        // $this->middleware('can:webinar_aprobar');
    }
    public function index()
    {
       $search = request()->get('search');
        $webinars = webinar::with('user','coordinate')->Search($search)->paginate(10);
        
        return response()->json([
            'success'=>true,
            'data'=>$webinars
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function aprobarWebinar(webinar $webinar){
        $webinar->status = !$webinar->status;
        $webinar->save();
        return response()->json([
            'success'=>true,
            'data'=>$webinar
        ]);
    } 


    // public function create()
    // {
        
    // }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules =[
            'description'=>'required|max:1000',
            'name'=>'required|max:250',
            'url_img'=>'image|mimes:jpeg,jpg,png,gif|max:4000',
            'address'=>'required',
            'start'=>'required|date_format:Y-m-d H:i|after_or_equal:now'
        ];

        $validator = Validator::make($request->all(),$rules);
        if($validator->fails()){
            $errors = collect($validator->errors()->toArray());
            return response()->json(array(
                'success' => false,
                'errors' => $errors->implode('0', ' - '),
            ));
        }
        if(!$request->has("url_img") || empty($request->url_img)){
            $request->url_img = "default_webinar_".random_int(1,2);
        }

        $webinar = new webinar($request->all());
        $data = $request->user()->webinar()->save($webinar);

        return response()->json([
            'success'=>true,
            'data'=>$data
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\webinar  $webinar
     * @return \Illuminate\Http\Response
     */
    public function show(webinar $webinar)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\webinar  $webinar
     * @return \Illuminate\Http\Response
     */
    public function edit(webinar $webinar)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\webinar  $webinar
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, webinar $webinar)
    {
        $this->authorize('pass',$webinar);
        $rules =[
            'description'=>'max:1000',
            'name'=>'max:250',
            'url_img'=>'image|mimes:jpeg,jpg,png,gif|max:4000',
            'address'=>'max:250',
            'start'=>'date_format:Y-m-d H:i|after_or_equal:now'
        ];
        $validator = Validator::make($request->all(),$rules);
        if($validator->fails()){
            $errors = collect($validator->errors()->toArray());
            return response()->json(array(
                'success' => false,
                'errors' => $errors->implode('0', ' - '),
            ));
        }
        $webinar->update($request->all());

        // $data = $request->user()->webinar()->update($request->all());

        return response()->json([
            'success'=>true,
            'data'=>$webinar
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\webinar  $webinar
     * @return \Illuminate\Http\Response
     */
    public function destroy(webinar $webinar)
    {
        $this->authorize('pass',$webinar);
        $webinar->delete();
        return response()->json([
            'success'=>true,
            'data'=>'Eliminado con exito'
        ]);
    }
}
