<?php

use Nicolaslopezj\Searchable\SearchableTrait;

class Book extends Eloquent{

    protected $table = 'tb_book';

    protected $primary_key = 'BookId';

    use SearchableTrait;

    /**
     * Searchable rules.
     *
     * @var array
     */
    protected $searchable = [
        'columns' => [
            'BookTitle' => 10,
            'ISBN' => 10,
            'ItemCaption' => 2,
            'GenreName' => 5,
            'Author' => 2,
            'PublisherName' => 1,
        ],
    ];

}
