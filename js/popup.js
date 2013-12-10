function showAlert ( msg, buttonText/*optional, default is 'OK'*/, titleText/*optional, default is 'Alert'*/) {
   buttonText = typeof buttonText !== 'undefined' ? buttonText : 'OK';
   titleText = typeof titleText !== 'undefined' ? titleText : 'Alert';
   var $currfocus = $(':focus');
    $("#msgdialog").remove();
    $("body").append("<div id='msgdialog'></div>"); 
    msgDiv = $("#msgdialog");
    msgDiv.dialog({
        title: titleText, 
        modal: true,
		draggable : false,
		resizable : false,
        autoOpen: false,
        buttons: [{
			text : buttonText,
            click : function (){
                $(this).dialog("close");
            }
        }],
		open: function( event, ui ) {
			$(this).closest('.ui-dialog').find('.ui-dialog-buttonpane button:eq(0)').focus();
		},
		close : function () {
			$currfocus.focus().select();
		}
    });
	
    msgDiv.html(msg);
    msgDiv.dialog('open');
}

function showConfirm ( msg, callback, yesText/*optional, default is 'Yes'*/, noText/*optional, default is 'No'*/, titleText/*optional, default is 'Confirm'*/) { 

/*
Example usage:
	showConfirm ("Are you sure?", function (ret) {
			if (ret) { // if user click yes
				
			}
			else { // if user click no
			
			}
		});
*/
   yesText = typeof yesText !== 'undefined' ? yesText : 'Yes';
   noText = typeof noText !== 'undefined' ? noText : 'No';
   titleText = typeof titleText !== 'undefined' ? titleText : 'Confirm';
   
    $("#msgdialog").remove();
    $("body").append("<div id='msgdialog'></div>"); 
    msgDiv = $("#msgdialog");
    msgDiv.dialog({
        title: titleText, 
        modal: true,
		draggable : false,
		resizable : false,
        autoOpen: false,
		open: function( event, ui ) {
			$(this).closest('.ui-dialog').find('.ui-dialog-buttonpane button:eq(0)').focus();
		},
        buttons: [
				{
					text : yesText,
					click : function (){
						if ($.isFunction(callback)) {
							callback(true);
						}
						$(this).dialog("close");

					}
				},
				{
					text : noText,
					click : function (){
						if ($.isFunction(callback)) {
							callback(false);
						}
						$(this).dialog("close");

					}
				}
		]
    });
	
    msgDiv.html(msg);
    msgDiv.dialog('open');
}

function blockUI (msg, callbackFn) {
	if (typeof callbackFn !== 'function')  callbackFn = null;
	if(!msg) msg='Please Wait...';
	$.blockUI({ 
		message: '<h1>'+msg+'</h1>',
		css: { 
			border: 'none', 
			padding: '15px', 
			backgroundColor: '#000', 
			'-webkit-border-radius': '10px', 
			'-moz-border-radius': '10px', 
			opacity: 0.8, 
			color: '#fff' 
		},
		onBlock : callbackFn
	}); 
}

function blockUIError(val) {
	if(!val) val='Error Occurred';
	$.blockUI({ 
		message: '<h1>'+val+'<h1>',
		css: { 
			border: 'none', 
			padding: '15px', 
			backgroundColor: '#000', 
			'-webkit-border-radius': '8px', 
			'-moz-border-radius': '8px',
			'border-radius': '8px',
			opacity: 0.8, 
			color: 'red'
		},
		fadeIn: 100, 
		fadeOut: 100,
		timeout : 2000
	})
}

function unblockUI(callbackFn) {
	if (typeof callbackFn !== 'function')  callbackFn = null;
	$.unblockUI({
		fadeIn: 100, 
		fadeOut: 100,
		onUnblock : callbackFn
	});
}