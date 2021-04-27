<?php

namespace App\Http\Controllers\admin;

use App\Models\plataformas;
use App\Models\juegos;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class plataformasController extends Controller
{
    public function getjuegos($id){
        $juegos1 = Plataformas::with('juegos')->where('id','=',$id)->get();
        $juegos = juegos::select("*")
                            ->where('plataformaid', $id)
                            ->get();
        return response()->json([
            'status' => 'success',
            'message' => 'juegos de la Plataforma '. $id ,
            'code' => 401,
            'data' => $juegos
        ]);
    }
    public function index()
    {
        {

            $plataformas = plataformas::all();
            return response()->json([
                'status' => 'success',
                'message' => 'plataformas de los juego',
                'code' => 401,
                'data' => $plataformas
            ]);
        
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        echo "nueva plataforma";
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
