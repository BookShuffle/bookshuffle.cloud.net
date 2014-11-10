<?php

/**
 * This file is part of Rakuten Web Service SDK
 *
 * (c) Rakuten, Inc
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with source code.
 */

/**
 * ItemRanking
 *
 * @package RakutenRws
 * @subpackage Api_Definition
 */
class RakutenRws_Api_Definition_ItemRanking extends RakutenRws_Api_RwsApi
{
    protected
        $versionMap = array(
            '2010-08-05' => '3.0',
            '2010-06-30' => '3.0',
            '2009-04-15' => '2.0',
            '2008-09-01' => '2.0'
        ),
        $autoSetIterator = true;
}
