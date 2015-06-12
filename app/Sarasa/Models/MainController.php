<?php

namespace Sarasa\Models;

use Sarasa\Models\Template;
use Sarasa\Core\CustomException;

class MainController extends \Sarasa\Core\FrontController
{

    public function __construct()
    {
        parent::__construct();
    }
    public function cache()
    {
        if (\Sarasa\Core\FrontController::config('production')) {
            $this->setCaching(parent::CACHING_LIFETIME_SAVED);
            $this->setCacheLifetime(\Sarasa\Core\FrontController::config('cache_lifetime'));
            $this->setCompileCheck(false);
        }
    }

    public static function sanitizeOutput($buffer)
    {
        if (self::$sanitize) {
            return parent::sanitizeOutput($buffer);
        } else {
            return $buffer;
        }
    }

    public static function noSanitize()
    {
        self::$sanitize = false;
    }

    public static function slug($str)
    {
        if ($str !== mb_convert_encoding(mb_convert_encoding($str, 'UTF-32', 'UTF-8'), 'UTF-8', 'UTF-32')) {
            $str = mb_convert_encoding($str, 'UTF-8', mb_detect_encoding($str));
        }

        $str = htmlentities($str, ENT_NOQUOTES, 'UTF-8');
        $str = preg_replace('`&([a-z]{1,2})(acute|uml|circ|grave|ring|cedil|slash|tilde|caron|lig);`i', '\\1', $str);
        $str = html_entity_decode($str, ENT_NOQUOTES, 'UTF-8');
        $str = preg_replace(array('`[^a-z0-9]`i','`[-]+`'), '-', $str);
        $str = strtolower(trim($str, '-'));
        return $str;
    } 
}
