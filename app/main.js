/* aftersave: uglifyjs <self> -mco ../public/js/main.js */

$(document).ready(function(){
    app.slider.init($("#sliderOne .content.slider .item"), $("#sliderOne .content.slider .arrow.left"), $("#sliderOne .content.slider .arrow.right"), null, null);

    setTimeout(function(){
        console.log("Seras");
        app.slider.init($("#sliderSecond .content.slider .item"), $("#sliderSecond .content.slider .arrow.left"), $("#sliderSecond .content.slider .arrow.right"), null, null);
    },5000);

	$('#formContact').submit(function(){
		var parameters 			= [];
		parameters['name'] 		= $('#formContact').find('#name').val(),
		parameters['email'] 	= $('#formContact').find('#email').val(),
		parameters['message'] 	= $('#formContact').find('#message').val();
		f('sendForm', parameters);

        $("#contact").html('<div class="content container"><header></br><h2>Gracias por tu consulta. Pronto estaremos en contacto</h2></br></br></br></header></div>');
	});
});
function f(funcion, parameters, notloading) {
    if (!notloading) loading();
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


var delete_cookie = function(name) {
    document.cookie = name + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
};


function error(errorMsg) {
    $('#dlgErrorMsg').html(errorMsg);
    $("#dlgError").dialog("open");
}
function success(msg) {
    $('#dlgSuccessMsg').html(msg);
    $("#dlgSuccess").dialog("open");
}
function loading() {
    if ($('#loading').css('display') == 'none') $("#loading").animate({width:'toggle'},350);
}
function stoploading() {
    $('#loading').stop(true,true).hide();
    $('button.disabled').removeClass('disabled');
}
function f(funcion, parameters, notloading) {
    if (!notloading) loading();
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
    if (!notloading) loading();
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


app                         = {
    slider:         {
        listen:         {
            arrows:     function(items, left, right) {
                $(left).click(function(){
                    app.slider.event.showPrev(items);
                });
                $(right).click(function(){
                    app.slider.event.showNext(items);
                });
            }
        },
        event:          {
            showNext:   function(items) {
                var idToHide    = $(items).parent().find(".active").attr("id"),
                    toHide      = $(items)[parseInt(idToHide)];
                
                if (parseInt(idToHide) == ($(items).length-1))
                    var toShow  = $(items)[0];
                else 
                    var toShow  = $(items)[parseInt(parseInt(idToHide)+1)];
                
                $(toHide).removeClass("active").fadeOut(0);
                $(toShow).addClass("active").fadeIn(500);
                if ($(toShow).find("img").attr("src") === undefined)
                    $(toShow).find("img").attr("src", $(toShow).find("img").attr("data-src"));
            },
            showPrev:   function(items) {
                var idToHide    = $(items).parent().find(".active").attr("id"),
                    toHide      = $(items)[parseInt(idToHide)];
                
                if (parseInt(idToHide) == 0)
                    var toShow  = $(items)[($(items).length-1)];
                else 
                    var toShow  = $(items)[parseInt(parseInt(idToHide)-1)];
                
                $(toHide).removeClass("active").fadeOut(0);
                $(toShow).addClass("active").fadeIn(500);
                if ($(toShow).find("img").attr("src") === undefined)
                    $(toShow).find("img").attr("src", $(toShow).find("img").attr("data-src"));
            },
            carousel: function(interval, items){
                if (typeof interval != "undefined") {
                    setTimeout(function(){
                        app.slider.event.showNext(items);
                        app.slider.event.carousel(interval, items);
                    }, interval);
                }    
            }
        },
        init:           function(items, arrowLeft, arrowRight){
            var first = $(items)[0], length = $(items).length;
            $.each(items, function(key, value){
                $(this).removeClass('hide').attr("id", key).fadeOut();
            }).promise().done(function(){
                $(first).addClass('active').fadeIn();
                $(first).find("img").attr("src", $(first).find("img").attr("data-src"));
                if (typeof arrowLeft != "undefined" && typeof arrowRight != "undefined") {
                    app.slider.listen.arrows(items, arrowLeft, arrowRight);
                    app.slider.event.carousel(8000, items)
                } else
                    app.slider.event.carousel(8000, items);
            });
        }
    }
};
