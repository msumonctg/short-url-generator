<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

Use Redirect;

use GuzzleHttp\Client;

use App\Url;

class UrlsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('index');
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
        $random = str_random(10);
        $this->validate(request(), ['originalURL' => 'required|min:7']);
        Url::create([
            'originalURL' => $request->input('originalURL'),
            'shortURL' => $random,
            'ip' => $request->ip(),
            'count' => 0,
            ]);

        $shortURL = url('/')."/".$random;
        return back()->with('message', $shortURL);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($data)
    {
        // $redirectURL = Url::where('shortURL', $url)->get();
        $redirectURL = Url::where('shortURL', $data)->get();

        foreach($redirectURL as $url)
        {
            $count = $url->count;
            $count++;
            Url::where('shortURL', $data)
                ->update(['count' => $count]);
            return redirect()->to($url->originalURL);
        }
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
