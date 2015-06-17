<?php

namespace Home\Controllers;

use Sarasa\Models\Template;

class MainController extends \Sarasa\Models\MainController
{
    public function index()
    {
        $em = $this->getEntityManager();
        $template = new Template();

        $template->title('Inicio');
        $template->display('main.tpl');
    }
    public function sendForm(&$objResponse, $parameters)
    {

    	$objResponse->log($parameters['name']);



        $destinatario =  "matin.g.lobo@gmail.com" ; 
        $asunto = "Contacto vía Web"; 
        $cuerpo = ' 
        <html lang="es"> 
        <head> 
            <meta http-equiv="Content-Type" content="text/html"; charset=UTF-8" />
           <title>Full Apple Service | Contacto</title> 
        </head> 
        <body> 
        <h3>Full Apple Service</h3> 
        <p> 
            Nombre: ' . $parameters['name'] . ' <br/>
            Correo: ' . strip_tags($parameters['email']) . ' <br/>
            Mensaje: ' . strip_tags($parameters['message']) . ' <br/>

        </p> 
        </body> 
        </html> 
        '; 

        //para el envío en formato HTML 
        $headers = "Content-type: text/html; charset=UTF-8\r\n"; 

        //dirección del remitente 
        $headers .= "From:  " . strip_tags($parameters['email']) . "\r\n"; 
        /*
        //dirección de respuesta, si queremos que sea distinta que la del remitente 
        $headers .= "Reply-To: mariano@desarrolloweb.com\r\n"; 

        //ruta del mensaje desde origen a destino 
        $headers .= "Return-path: holahola@desarrolloweb.com\r\n"; 

        //direcciones que recibián copia 
        $headers .= "Cc: maria@desarrolloweb.com\r\n"; 
        */


        mail($destinatario,$asunto,$cuerpo,$headers) 

    

}
