/* aftersave: uglifyjs <self> -mco ../public/js/main.js */

$(document).ready(function(){

	$('#formContact').submit(function(){
		var parameters 			= [];
		parameters['name'] 		= $('#formContact').find('#name').val(),
		parameters['email'] 	= $('#formContact').find('#email').val(),
		parameters['message'] 	= $('#formContact').find('#message').val();
		f('sendForm', parameters);
	});
});

function f(funcion, parameters, notloading) {
    parameters = $.extend({}, parameters);

    $.ajax({
        type: 'POST',
        data: (parameters),
        cache: false,
        dataType: "json",
        success: processAjax,
        beforeSend: function(xhr) {
            xhr.setRequestHeader("AJAX_URL", $(location).attr('href'));
            xhr.setRequestHeader("AJAX_FUNCTION", funcion);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log('Ajax error: ' + jqXHR.responseText);
        }
    });
}

function fUrl(url, funcion, parameters, notloading) {
    parameters = $.extend({}, parameters);

    if (!window.location.origin)
            window.location.origin = window.location.protocol+"//"+window.location.host;
    $.ajax({
        url: url,
        type: 'POST',
        data: (parameters),
        cache: false,
        dataType: "json",
        success: processAjax,
        beforeSend: function(xhr) {
            xhr.setRequestHeader("AJAX_URL", window.location.origin + url);
            xhr.setRequestHeader("AJAX_FUNCTION", funcion);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log('Ajax error: ' + jqXHR.responseText);
        }
    });
 }
function processAjax(responses) {
    var response;
    for (var i in responses) {
        response = responses[i];
        if (response[0] == 'redirect') location.href = response[1];
        else if (response[0] == 'assign') $('#'+response[1]).html(response[2]);
        else if (response[0] == 'script') eval(response[1]);
        else if (response[0] == 'log') console.log(response[1]);
        else if (response[0] == 'fadeout') $(response[1]).fadeOut();
        else if (response[0] == 'append') $('#'+response[1]).append(response[2]);
        else if (response[0] == 'prepend') $('#'+response[1]).prepend(response[2]);
        else if (response[0] == 'alert') alert(response[1]);
    }
}
