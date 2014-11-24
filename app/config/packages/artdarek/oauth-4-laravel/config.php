<?php

return array(

	/*
	|--------------------------------------------------------------------------
	| oAuth Config
	|--------------------------------------------------------------------------
	*/

	/**
	 * Storage
	 */
	'storage' => 'Session',

	/**
	 * Consumers
	 */
	'consumers' => array(

		/**
		 * Facebook
		 */
        'Facebook' => array(
            'client_id'     => '729158613845077',
            'client_secret' => 'd02d804cf4e71ae60671ab37b6eb3972',
            'scope'         => array('email', 'user_birthday', 'user_likes'),
        ),

	)

);
