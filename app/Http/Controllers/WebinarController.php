<?php

namespace App\Http\Controllers;

use App\Coordinate;
use App\Webinar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
        $this->middleware('role:admin')->only('switchStatus');
        $this->middleware('auth:api')->except('index');
        // $this->authorizeResource(Webinar::class);
        
        // $this->middleware('can:webinar_aprobar');
        // $this->middleware('can:webinar_aprobar');
    }
    public function index()
    {
       $search = request()->get('search');
        $webinars = Webinar::Search($search)->paginate(10);
        
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

    public function getWebinarUser(Request $request){

        $webinar_user = $request->user()->webinar()->paginate();
        return response()->json([
            'success'=>true,
            'data'=>$webinar_user
        ]);
    }

    public function switchStatus($id){
        $webinar = Webinar::find($id);
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
            'address_web'=>'nullable|url',
            // 'start'=>'required|date_format:Y-m-d H:i|after_or_equal:now',
            // 'end'=>'required|date_format:Y-m-d H:i|after_or_equal:now',
            'start'=>'required|date_format:Y-m-d|after_or_equal:now',
            'end'=>'required|date_format:Y-m-d|after_or_equal:now',
            'latitude'=>'required|numeric',
            'longitude'=>'required|numeric'
        ];
        $validator = Validator::make($request->all(),$rules);
        if($validator->fails()){
            $errors = collect($validator->errors()->toArray());
            return response()->json(array(
                'success' => false,
                'errors' => $errors->implode('0', ' - '),
            ),422);
        }

        // return $request->all();
        return DB::transaction( function () use($request){
            $coordinate = Coordinate::create([
                'latitude'=>$request->latitude,
                'longitude'=>$request->longitude
            ]);
            $image_webinar = $request->url_img;
            if(!$request->has("url_img") || empty($request->url_img)){
                $image_webinar = "default_webinar_".random_int(1,2);
            }
            $webinar = new Webinar([
                'name'=>$request->name,
                'description'=>$request->description,
                'url_img'=>$image_webinar,
                'address'=>$request->address,
                'address_web'=>$request->address_web,
                'start'=>$request->start,
                'end'=>$request->end,
                'status'=>false,
                'coordinate_id'=>$coordinate->id
            ]);
            $data = $request->user()->webinar()->save($webinar);

            return response()->json([
                'success'=>true,
                'data'=>$data
            ]);
        });

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\webinar  $webinar
     * @return \Illuminate\Http\Response
     */
    public function show(Webinar $webinar)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\webinar  $webinar
     * @return \Illuminate\Http\Response
     */
    public function edit(Webinar $webinar)
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
    public function update(Request $request, Webinar $webinar)
    {
        $this->authorize('pass',$webinar);
        $rules =[
            'description'=>'max:1000',
            'name'=>'max:250',
            'url_img'=>'image|mimes:jpeg,jpg,png,gif|max:4000',
            'address'=>'max:250',
            'address_web'=>'url',
            'start'=>'date_format:Y-m-d H:i|after_or_equal:now',
            'end'=>'date_format:Y-m-d H:i|after_or_equal:now',
            'latitude'=>'numeric',
            'longitude'=>'numeric'
        ];
        $validator = Validator::make($request->all(),$rules);
        if($validator->fails()){
            $errors = collect($validator->errors()->toArray());
            return response()->json(array(
                'success' => false,
                'errors' => $errors->implode('0', ' - '),
            ));
        }
        $coordinate = Coordinate::find($webinar->coordinate_id);
        $coordinate->latitude = $request->latitude;
        $coordinate->longitude = $request->longitude;
        $coordinate->save();

        $image_webinar = $request->url_img;
        if(!$request->has("url_img") || empty($request->url_img)){
            $image_webinar = "default_webinar_".random_int(1,2);
        }

        $webinar->update([
            'name'=>$request->name,
            'description'=>$request->description,
            'url_img'=>$image_webinar,
            'address'=>$request->address,
            'address_web'=>$request->address_web,
            'start'=>$request->start,
            'end'=>$request->end,
            'status'=>false,
            'coordinate_id'=>$coordinate->id
        ]);

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
    public function destroy(Webinar $webinar)
    {
        $this->authorize('pass',$webinar);
        $webinar->delete();
        return response()->json([
            'success'=>true,
            'data'=>$webinar
        ]);
    }
}
