<?php

namespace Home\Controllers;

use Sarasa\Models\Template;

class TestController extends \Sarasa\Models\MainController
{
    public function index()
    {
        $em = $this->getEntityManager();
        $template = new Template();

        $template->title('Inicio');
        $template->display('mainTest.tpl');
    }
}
