/* Object declaration
-------------------------------------------------------------------*/
var $input = {
	'theme'          : $('#theme'),
	'language'       : $('#language'),
	'sessiontime'    : $('#sessiontime')
};

var $div = {
	'gensetting'     : $('#gensettingdiv'),
	'slisessiontime' : $('#slider-sessiontime'),
};


var $button = {
	'save'         : $('#save'),
	'resetdefault' : $('#resetdefault')
}; 
function getFormData(){
	var formArr = {
		'theme'         : $input.theme.find("option:selected").val(),
		'themetitle'    : $input.theme.find("option:selected").text(),
		'language'      : $input.language.find("option:selected").val(),
		'languagetitle' : $input.language.find("option:selected").text(),
		'sessiontime'   : $input.sessiontime.val(),

	};
	return formArr;
}
$(function() {
	getFormData();
	/*
	* Initialize UI 
	-------------------------------------------------------------------*/
	$div.gensetting.accordion({
		active: 0,
		heightStyle: "content"
	});


	// initialize sessiontime slider
	$div.slisessiontime.slider({
      range: "max",
      min: 1,
      max: 60,
      value: def.sessiontime,
      slide: function( event, ui ) {
        $input.sessiontime.val( ui.value );
      }
    });
    $input.sessiontime.val( $div.slisessiontime.slider( "value" ) );

	$button.save.click(function(){
		$.ajax({
			url: "updSetting",
			type: "post",
			async:false,
			data: getFormData(),
			success: function (data,textStatus,jqXHR) {
				console.log(data);
			},
			error: function (){
				showAlert('Update Setting Failed!');
			},
			complete: function(){
				setTimeout(showAlert('Setting updated successfully!'),1500);
				location.reload();
			}
		});
		
	});
	$button.resetdefault.click(function(){
		$.ajax({
			url: "resetDefault",
			type: "post",
			async:false,
			success: function (data,textStatus,jqXHR) {
				console.log(data);
			},
			error: function (){
				showAlert('Reset default failed');
			},
			complete: function(){
				setTimeout(showAlert('Setting reset to default'),1500);
				location.reload();
			}
		});
		
	});
	
	
});

