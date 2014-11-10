<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

/** ------------------------------------------
 *  Frontend Routes
 *  ------------------------------------------
 */

Route::model('user', 'User');

Route::pattern('user', '[0-9]+');

// User reset routes
Route::get('user/reset/{token}', 'UserController@getReset');
// User password reset
Route::post('user/reset/{token}', 'UserController@postReset');
//:: User Account Routes ::
Route::post('user/{user}/edit', 'UserController@postEdit');

//:: User Account Routes ::
Route::post('user/login', 'UserController@postLogin');

# User RESTful Routes (Login, Logout, Register, etc)
Route::controller('user', 'UserController');

Route::get('search', function() {

    $q = Input::get('q');

    //$q = "Java Python";

    $q_array = explode(" ", $q);

    $result = array();

    foreach($q_array as $q) {
        $result = array_merge($result, Book::search($q)->get()->toArray());
    }

    usort($result, function($a, $b){
        return $a['CommentScore'] < $b['CommentScore'];
    });

    dd($result);

});


Route::get('/{bookId?}/{next?}/{like?}', function($bookId = 1, $next = 0, $like = 1)
{


    if (Auth::check()) {
        DB::insert('insert into rltb_user_book(UserId, BookId) values(?, ?)', array(Auth::user()->id, $bookId));

        exec("java -jar ScoreSystem.jar {$bookId}", $tmpId);

        if ($like == 1) {
            $books = DB::select('select * from tb_book where BookId = ?', array(intval($tmpId[0])));
        } else {
            $books = DB::select('select * from tb_book where BookId = ?', array(intval($tmpId[1])));
        }
        $book = $books[0];

        $next = 0;
    } else {

        $books = DB::select('select * from tb_book order by CommentScore;');

        $count = count($books);

        $next ++;

        if ($next == $count ) {
            $next = 0;
        }

        $book = $books[$next];

    }


    return View::make('site/index', array('book' => $book, 'next' => $next));
});
