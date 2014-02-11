// calender and wrapper width default value
var screenResolution = {
	'big' : {
		'wrap': {'width':'1100px'}, 
	    'calendar':{'width': '900px', 'float':'right'}
	},
	'small' : {
		'wrap': {'width':'960px'}, 
	    'calendar':{'width': '800px', 'margin':'0 auto'}
	}
};
var $wrapdiv       = $('#wrap'),
    $caldiv        = $('#calendar'),
    $externaldiv   = $('#external-events'),
    $guessform     = $('#guessInfoForm'),
    $externalevent = $('#external-events div.custom-external-event'),
    $guessformdiv  = $('#guessInfo'),
    $guessname     = $('#guessname'),
    $title         = $('#title'),
    $contactno     = $('#contactno'),
    $email         = $('#email'),
    $preference    = $('#preference'),
    $noadult       = $('#noadult'),
    $nochild       = $('#nochild'),
    $nonight       = $('#nonight'),
    $roomno        = $('#roomno'),
    $roomrate      = $('#roomrate'),
    $roomtypediv   = $('#roomtype'),
    $errorblock    = $('#errorblock-div2'),
    $enddate       ='';
    $transid       =0;

function adjustScreen(){
	"use strict";
	var width = screen.width;

	if(width>1200){
		$wrapdiv.css(screenResolution.big.wrap);
		$caldiv.css(screenResolution.big.calendar);
		$externaldiv.show();
	}else{
		$wrapdiv.css(screenResolution.small.wrap);
		$caldiv.css(screenResolution.small.calendar);
		$externaldiv.hide();
	}
}
function setRadio(id) {
	"use strict";
    var radio = $('#' + id);
    radio[0].checked = true;
    radio.button("refresh");
}
function setNewDefault(mode){
	"use strict";
	// set default spinner value to 1
	$noadult.spinner( "value", 1 );
	$noadult.spinner("option", "min", 1);
	$nonight.spinner( "value", 1 );
	$nonight.spinner("option", "min", 1);
	$nochild.spinner( "value", 0 );
	$nochild.spinner("option", "min", 0);
	// set all the text box to null 
	$guessname.val('');
	$title.val('');
	$contactno.val('');
	$email.val('');
	$preference.val('');
	// select mode set roomtype default to standard
	if(mode == 'select'){
		$('#rt_standard').attr('checked',true).button('refresh');
		$('#rr_standard').attr('checked',true).button('refresh');
	}
}
function getGuessFormArray(){
	"use strict";
	var formArr = {
		'roomtype'   : $('input[name=roomtype]:checked', '#guessInfoForm').val(),
		'roomrate'   : $('input[name=roomrate]:checked', '#guessInfoForm').val(),
		'title'      : $title.val(),
		'guessname'  : $guessname.val(),
		'noadult'    : $noadult.spinner( "value" ),
		'nochild'    : $nochild.spinner( "value" ),
		'nonight'    : $nonight.spinner( "value" ),
		'contactno'  : $contactno.val(),
		'email'      : $email.val(),
		'selroomno'  : $roomno.select2('data').id,
		'preference' : $preference.val(),
	};
	return formArr;
}
function updateRoomDate(data){
/*	console.log(data);*/
	"use strict";
	$.ajax({
		url: "updRoomDate",
		type: "post",
		async:false,
		data: data,
		success: function (data,textStatus,jqXHR) {
			console.log(data);
		},
		error: function (){
			console.log(data);
			//showAlert(changeqtyerror);
		}
	});
}
function populateGuessForm(data){
	"use strict";
	// set value for spinner
	$noadult.spinner( "value", data.noadult );
	$nochild.spinner( "value", data.nochild );
	$nonight.spinner( "value", data.nonight );
	// set value for textbox
	$guessname.val(data.guessname);
	$title.val(data.custtitle);
	$contactno.val(data.contactno);
	$email.val(data.email);
	console.log(data.preference);
	$preference.val(data.preference);
	$roomno.select2("val", data.roomno);	

	// select2 selection
	// set value for radio button
	$('#rt_'+data.roomtype).attr('checked',true).button('refresh');
	$('#rr_'+data.roomrate).attr('checked',true).button('refresh');
}
function newRoom(formData){
	"use strict";
	$transid = 0; 
	$.ajax({
		url: "newRoom",
		type: "post",
		async:false,
		data: formData,
		success: function (data,textStatus,jqXHR) {
			console.log(data);
			$transid = data;
		},
		error: function (){
			console.log(data);
			//showAlert(changeqtyerror);
		}
	});
}
function getEndDate(startdate,nonight){
	$.ajax({
		url: "getEndDay",
		type: "post",
		async:false,
		data: {'startdate' : startdate, 'nonight' : nonight},
		success: function (data,textStatus,jqXHR) {
			$enddate = data;
		},
		error: function (){
			//showAlert(changeqtyerror);
		}
	});

}

function changeButtonState(radiodiv,radioid){

	$('#'+radiodiv+' input[type=radio]').each(function(){
		$(this).removeAttr('checked');
	})

	$('#'+radiodiv+' label').each(function(){
		$(this)
			.removeClass( "ui-state-active" )
			.attr( "aria-pressed", "false" );		
	});
	
	$('label[for='+radioid+']')
			.addClass( "ui-state-active" )
			.attr( "aria-pressed", "true" );


	$('#'+radioid).prop('checked',true);
}
/*function getSelectedRadioValue(radiodiv){
	var radioval = '';
	$('#'+radiodiv+' input[type=radio]').each(function(){
		console.log($(this));
		if($(this).is(':checked')) radioval = $(this).val();
	});
	return radioval;
}*/
$(document).ready(function() {

	/*var dontBlock = true;
	$(document).ajaxStart(function () {
		if(!dontBlock) blockUI();
	}).ajaxStop(function () {
		if(!dontBlock) unblockUI();
	});	*/

	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();

	// handle screen resolution 
	adjustScreen();

    /* initialize guess form validation
	-----------------------------------------------------------------*/
	$guessform.validate({
		// make sure we show/hide both blocks
		errorContainer: "#errorblock-div1, #errorblock-div2",
		// put all error messages in a UL
		errorLabelContainer: "#errorblock-div2 ul",
		// wrap all error messages in an LI tag
		wrapper: "li",
		// rules/messages are for the validation
		rules: {
	        guessname: "required"
	    },
	    messages: {
	        guessname: "Please enter guess name."
	    }
	});

    /* initialize jquery ui radio button and spinner
	-----------------------------------------------------------------*/

	$('.spinner').each(function(){
		$(this).spinner();
	});
	// create radio button
	$( ".radio" ).each(function(){
		$(this).buttonset();
	});
	
	/* initialize available room filter by roomtype
	-----------------------------------------------------------------*/
	function initRoomSelection(startdate){		
		$roomno.select2({
			minimumResultsForSearch: -1,
			ajax: {
                cache: false,
                async:false,
                dataType: 'json',
                type: 'POST',
                url: 'getRoomNo',                 
                data: function (registration, page) {
                	// just pass in start date and roomtype 
                    return {
                    	'startdate': startdate, 'roomtype':$('input[name=roomtype]:checked', '#guessInfoForm').val() 
                    };
                },
                results: function (data, page) {
                    return { results: data }; // notice we return the value of more so Select2 knows if more results can be loaded
                },                
            },
            initSelection : function (element, callback) {
        		var data = $.ajax({
					url: "defaultRoom",
					type: "post",
					async:false,
					dataType: 'json',
					data: {'startdate':startdate, 'roomtype': $('input[name=roomtype]:checked', '#guessInfoForm').val() },
					success: function (data,textStatus,jqXHR) {
						callback(data);
					},
					error: function (){
						//showAlert(changeqtyerror);
					}
				});
		    },
		    //formatResult: format
  		});		
	}
	function format(item){
		return "<input type='hidden' name='roomno' value='"+item.id+"' />";
	}
	

	/* initialize the external events
	-----------------------------------------------------------------*/

	$externalevent.each(function() {	
		// initialize the object value 
		var eventObject = {
			title: $.trim($(this).text()).substr(0,3), // use the element's text first 3 character as the event title
			roomtype: $(this).data('roomtype') // room type
		};		
		// store the Event Object in the DOM element so we can get to it later
		$(this).data('eventObject', eventObject);
		
		// make the event draggable using jQuery UI
		$(this).draggable({
			zIndex: 999,
			revert: true,      // will cause the event to go back to its
			revertDuration: 0  //  original position after the drag
		});		
	});


	/* initialize the calendar
	-----------------------------------------------------------------*/
	
	var $calendar = $caldiv.fullCalendar({
		theme: true,		
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		selectable: true,
		selectHelper: true,
		select: function(start, end, allDay) {
			var formatdate = $.fullCalendar.formatDate( start, "yyyy-MM-dd HH:mm:ss");
			// set the guess info form to default value
			setNewDefault('select');

			// default select first roomtype
			$('input[name=roomtype]:first').attr('checked', true).button('refresh');
			// get the available room 
			initRoomSelection(formatdate);
			// hide the error message div
			$errorblock.hide();

			// open the dialog form
			$guessformdiv.dialog({
				autoOpen: false,
				height: 'auto',
				width: 'auto',
				modal: true,
				overflow:'visible',
				open: function(){
					$guessname.focus();		
				},
				buttons: {
					Comfirm: function() {
						 var isValid = $guessform.valid();						 
						// confirm only render the object						
						if(isValid){						
							// get end date
							getEndDate(formatdate,$nonight.spinner( "value" ));

							var calenddate = $.fullCalendar.parseDate($enddate),
								startdate = {'startdate': formatdate},
							    frmData = 	getGuessFormArray(),
							    insData = $.extend({},startdate,frmData);   
							// insert record to db
							newRoom(insData);
							// render the event on the calendar
							var eventtitle =  $roomno.select2('data').text+ ': '+$guessname.val();
							$calendar.fullCalendar('renderEvent',
								{
									id:$transid,
									title: eventtitle,
									start: start,
									end: calenddate,
									allDay: allDay,
									formData: frmData
								},
								true // make the event "stick"
							);
							
							$calendar.fullCalendar('unselect');
							$( this ).dialog( "close" );		
						}
						
					},
					Cancel: function() {
						$( this ).dialog( "close" );
					}
				}				
			});
			$guessformdiv.dialog( "open" );	
		},
		editable: true,
		droppable: true, // this allows things to be dropped onto the calendar !!!
		events: function(start, end, callback) {
	        $.ajax({
	            url: 'getRoomInfoByMonth',
	            type: "post",
	            dataType: 'json',
	            data: {
	                startdt: $.fullCalendar.formatDate( start, "yyyy-MM-dd"),
	                enddt: $.fullCalendar.formatDate( end, "yyyy-MM-dd")
	            },
	            success: function(obj) {
	                var events = [];
					$.each(obj, function(i, data) {

						data.startdt =  $.fullCalendar.parseISO8601( data.startdt );
						data.enddt   =  $.fullCalendar.parseISO8601( data.enddt );
					 	events.push({
	                        title     : data.title,
	                        start     : data.startdt,
	                        end       : data.enddt,
	                        noadult   : data.noadult,
	                        nochild   : data.nochild,
	                        nonight   : data.nonight,
	                        guessname : data.guessname,
	                        custtitle : data.custtitle,
	                        contactno : data.contactno,
	                        email     : data.email,
	                        preference: data.preference,
	                        roomtype  : data.roomtype,
	                        id        : data.id
	                    });
					  });
					 callback(events);
	            }
	        });
	    },
		drop: function(date, allDay) { // this function is called when something is dropped
			// retrieve the dropped element's stored Event Object
			var originalEventObject = $(this).data('eventObject'),
			    formatdate = $.fullCalendar.formatDate( date, "yyyy-MM-dd HH:mm:ss");
			
			// check the radio base on the room type use drop				
			changeButtonState('roomtype','rt_'+originalEventObject.roomtype);
			// get the available room 
			initRoomSelection(formatdate);
			// hide the error message div
			$errorblock.hide();
			
			setNewDefault('drag');
			// open the dialog form
			$guessformdiv.dialog({
				autoOpen: false,
				height: 'auto',
				width: 'auto',
				modal: true,
				overflow:'visible',
				open: function(){
					$guessname.focus();		
				},
				buttons: {
					Comfirm: function() {
						 var isValid = $("#guessInfoForm").valid();

						// confirm only render the object
						if(isValid){
							// get end date
							getEndDate(formatdate,$nonight.spinner( "value" ));
							
							var copiedEventObject = $.extend({}, originalEventObject), // we need to copy it, so that multiple events don't have a reference to the same object
							    calenddate = $.fullCalendar.parseDate($enddate), // end date get from hotel management class
							    startdate = {'startdate': formatdate}, // startdate
							    frmdata = getGuessFormArray(),
							    insData = $.extend({},startdate,frmdata); // data to be insert to DB
							//console.log(frmData);
							// insert data into db
							newRoom(insData);
							// assign it the date that was reported						
							copiedEventObject.title =  $roomno.select2('data').text + ': ' +$guessname.val();
							copiedEventObject.start = date;
							copiedEventObject.id = $transid;
							copiedEventObject.end = calenddate;
							copiedEventObject.allDay = allDay;
							copiedEventObject.formData = frmdata;
														
							// render the event on the calendar
							// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
							$calendar.fullCalendar('renderEvent', copiedEventObject, true);	
							$( this ).dialog( "close" );		
						}
						
					},
					Cancel: function() {
						$( this ).dialog( "close" );
					}
				}				
			});
			$guessformdiv.dialog( "open" );			
		},
		eventClick: function(calEvent, jsEvent, view) {
			//getEventData(calEvent.id);
			//console.log(calEvent);
			populateGuessForm(calEvent);
			$guessformdiv.dialog({
				autoOpen: false,
				height: 'auto',
				width: 'auto',
				modal: true,
				overflow:'visible',
				open: function(){
					$guessname.focus();		
				},
				buttons: {
					Comfirm: function() {
						 var isValid = $("#guessInfoForm").valid();
						// confirm only render the object
						if(isValid){
							var eventtitle =  $.trim($('input[name=roomtype]:checked', '#guessInfoForm').val()).substr(0,3) + ': '+$guessname.val();

							calEvent.title = eventtitle;
							calEvent.formData = getGuessFormArray();
							// render the event on the calendar
							// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
							$calendar.fullCalendar('updateEvent', calEvent);	
							$( this ).dialog( "close" );		
						}
						
					},
					Cancel: function() {
						$( this ).dialog( "close" );
					}
				}				
			});
			$guessformdiv.dialog( "open" );		
	    },
	    eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc, jsEvent, ui, view) {
	    	startdt = $.fullCalendar.formatDate( event._start, "yyyy-MM-dd HH:mm:ss");
	    	enddt = $.fullCalendar.formatDate( event._end, "yyyy-MM-dd HH:mm:ss");

	    	var obj ={
	    		startdate: startdt,
	    		enddate  : enddt,
	    		id       : event.id
	    	};
	    	updateRoomDate(obj);
		},	   
	    eventResize: function(event, dayDelta, minuteDelta, revertFunc, jsEvent, ui, view) {
			startdt = $.fullCalendar.formatDate( event._start, "yyyy-MM-dd HH:mm:ss");
	    	enddt = $.fullCalendar.formatDate( event._end, "yyyy-MM-dd HH:mm:ss");

	    	var obj ={
	    		startdate: startdt,
	    		enddate  : enddt,
	    		id       : event.id
	    	};
	    	updateRoomDate(obj);
		},
	});
		
});