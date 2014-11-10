<?php

class IndexController extends BaseController {

    /**
     * User Model
     * @var User
     */
    protected $user;

    /**
     * Inject the models.
     * @param Post $post
     * @param User $user
     */
    public function __construct(User $user)
    {
        parent::__construct();

        $this->user = $user;
    }

	/**
	 * Returns all the blog posts.
	 *
	 * @return View
	 */
	public function getIndex()
	{
		// Get all the blog posts
		// $posts = $this->post->orderBy('created_at', 'DESC')->paginate(10);

		// Show the page

    	$books = DB::select('select * from tb_book order by CommentScore;');

    	$count = count($books);

    	$next ++;

    	if ($next == $count ) {
    		$next = 0;
    	}

	   return View::make('site/index', array('book' => $books[$next], 'next' => $next));
	}

}
