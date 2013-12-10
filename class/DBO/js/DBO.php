var DBO = DBO || {
	toggleListCheckbox : function(dboID){
		// toggler id : dbo_'.$dbo->id.'_list_cb_toggle
		// checklist name : dbo_'.$this->id.'_list_cb[], id : dbo_'.$this->id.'_list_cb_'.($no+1).'
		var toggleStatus = document.getElementById('dbo_'+dboID+'_list_cb_toggle').checked;
		var list = document.getElementsByName('dbo_'+dboID+'_list_cb[]');
		if(!list) return;
		for(var i=0; i<list.length; i++){
			list[i].checked = toggleStatus;
		}
	},
	refreshDependent : function(changedCol, saveDir, dboID, state, col, affectingCols, findcols){
		// console.log(affectingCols);
		// console.log(findcols);
		var form = changedCol.form;
		var url = saveDir+'/'+dboID+'/'+dboID+'.php?dboid='+dboID+'&dboajax=1&dbostate='+state+'&colchanged='+col;
		var findCols = findcols.split(', ');
		var findColsArray = new Array('affectingCols='+affectingCols);
		for(var i=0; i<findCols.length; i++){
			var formColContainer = document.getElementById('dbo_'+dboID+'_'+state+'_cont_'+findCols[i]);
			var formColName = 'dbo_'+dboID+'_'+state+'_'+findCols[i];
			var inputType = formColContainer.getAttribute('inputtype');
			var val;
			switch(inputType){
				case 'text':
				case 'password':
				case 'hidden':
				case 'textarea':
				case 'select':
				case 'radio':
					val = changedCol.value;
					// val = document.getElementById(formColName).value;
				break;
				case 'multiselect':
					var arr = new Array();
					for(var j=0; j<changedCol.length; j++){
						if(changedCol.options[j].selected){
							arr.push(changedCol.options[j].value);
						}
					}
					val = arr.join(', ');
				break;
				case 'checkbox':
					var arr = new Array();
					var list = document.getElementsByName(changedCol.name);
					for(var j=0; j<list.length; j++){
						if(list[j].checked){
							arr.push(list[j].value);
						}
					}
					val = arr.join(', ');
				break;
			}
			findColsArray.push(findCols[i]+'='+escape(val));
		}
		url = url + '&' + (findColsArray.join('&'));
		// console.log('url : '+url);
		var response = ajaxGet(url);
		// console.log(url);
		// console.log(response);
		var obj = JSON.parse(response);
		// console.log(obj);
		for(var col in obj){
			var formColContainer = document.getElementById('dbo_'+dboID+'_'+state+'_cont_'+col);
			var formColName = 'dbo_'+dboID+'_'+state+'_'+col;
			// console.log('2 : '+formColName);
			var inputType = formColContainer.getAttribute('inputtype');
			var inputTypeSize = formColContainer.getAttribute('inputtypesize');
			// console.log(inputTypeSize);
			var newInput = obj[col];
			var newInputCount = newInput.length;
			// console.log(newInput);
			switch(inputType){
				case 'text':
				case 'password':
				case 'hidden':
					var input = document.getElementById(formColName);
					var valueArr = new Array();
					for(var optionIndex in newInput){
						var i=0;
						var value, text;
						for(var key in newInput[optionIndex]){
							i++;
							if(i==1) value = text = newInput[optionIndex][key];
							else if(i==2) text = newInput[optionIndex][key];
							else break;
						}
						valueArr.push(value);
					}
					input['value'] = valueArr.join(', ');
					fireEvent('change', input);
				break;
				case 'textarea':
					var input = document.getElementById(formColName);
					var valueArr = new Array();
					for(var optionIndex in newInput){
						var i=0;
						var value, text;
						for(var key in newInput[optionIndex]){
							i++;
							if(i==1) value = text = newInput[optionIndex][key];
							else if(i==2) text = newInput[optionIndex][key];
							else break;
						}
						valueArr.push(value);
					}
					input['innerHTML'] = valueArr.join(', ');
				break;
				case 'select':
					var input = document.getElementById(formColName);
					this.clearOption(input);
					this.addOption(input, '', '');
					for(var optionIndex in newInput){
						var i=0;
						var value, text;
						for(var key in newInput[optionIndex]){
							i++;
							if(i==1) value = text = newInput[optionIndex][key];
							else if(i==2) text = newInput[optionIndex][key];
							else break;
						}
						this.addOption(input, value, text);
					}
					fireEvent('change', input);
				break;
				case 'multiselect':
					var input = document.getElementById(formColName+'[]');
					this.clearOption(input);
					for(var optionIndex in newInput){
						var i=0;
						var value, text;
						for(var key in newInput[optionIndex]){
							i++;
							if(i==1) value = text = newInput[optionIndex][key];
							else if(i==2) text = newInput[optionIndex][key];
							else break;
						}
						this.addOption(input, value, text);
					}
					fireEvent('change', input);
				break;
				case 'checkbox':
					// console.log(newInput.length);
					/*var tobeDrop = new Array();
					for(var idx in formColContainer.childNodes){
						var tagname = formColContainer.childNodes[idx]['tagName'];
						if(tagname != undefined && (tagname=='LABEL' || (tagname=='INPUT' && formColContainer.childNodes[idx]['type']=='checkbox'))){
							tobeDrop.push(formColContainer.childNodes[idx]);
						}
					}
					for(var i=0;i<tobeDrop.length;i++){
						formColContainer.removeChild(tobeDrop[i]);
					}*/
					formColContainer.innerHTML = '';
					var table = document.createElement('table');
					var tr = document.createElement('tr');
					var no = -1;
					var no1 = 0;
					for(var optionIndex in newInput){
						var i=0;
						var value, text;
						for(var key in newInput[optionIndex]){
							i++;
							if(i==1) value = text = newInput[optionIndex][key];
							else if(i==2) text = newInput[optionIndex][key];
							else break;
						}
						// this.addCheckbox(formColContainer, formColName, value, text);
						no++;
						no1++;
						var td = document.createElement('td');
						this.addCheckbox(td, formColName, value, text);
						tr.appendChild(td);
						// last td
						if(!(no1%inputTypeSize)){
							table.appendChild(tr);
							var tr = document.createElement('tr');
						}
						// last row
						if(no1==newInputCount){
							var extratd = no1%inputTypeSize;
							if(extratd){
								var td = document.createElement('td');
								td['colSpan'] = inputTypeSize-extratd;
								td['innerHTML'] = '&nbsp;';
								tr.appendChild(td);
								table.appendChild(tr);
							}
						}
					}
					formColContainer.appendChild(table);
				break;
				case 'radio':
					/*var tobeDrop = new Array();
					for(var idx in formColContainer.childNodes){
						var tagname = formColContainer.childNodes[idx]['tagName'];
						if(tagname != undefined && (tagname=='LABEL' || (tagname=='INPUT' && formColContainer.childNodes[idx]['type']=='radio'))){
							tobeDrop.push(formColContainer.childNodes[idx]);
						}
					}
					for(var i=0;i<tobeDrop.length;i++){
						formColContainer.removeChild(tobeDrop[i]);
					}*/
					formColContainer.innerHTML = '';
					var table = document.createElement('table');
					var tr = document.createElement('tr');
					var no = -1;
					var no1 = 0;
					for(var optionIndex in newInput){
						var i=0;
						var value, text;
						for(var key in newInput[optionIndex]){
							i++;
							if(i==1) value = text = newInput[optionIndex][key];
							else if(i==2) text = newInput[optionIndex][key];
							else break;
						}
						// this.addRadio(formColContainer, formColName, value, text);
						no++;
						no1++;
						var td = document.createElement('td');
						this.addRadio(td, formColName, value, text);
						tr.appendChild(td);
						// last td
						if(!(no1%inputTypeSize)){
							table.appendChild(tr);
							var tr = document.createElement('tr');
						}
						// last row
						if(no1==newInputCount){
							var extratd = no1%inputTypeSize;
							if(extratd){
								var td = document.createElement('td');
								td['colSpan'] = inputTypeSize-extratd;
								td['innerHTML'] = '&nbsp;';
								tr.appendChild(td);
								table.appendChild(tr);
							}
						}
					}
					formColContainer.appendChild(table);
				break;
			}
		}
	},
	refreshDependentPrepare : function(changedCol, cols){
		var form = changedCol.form;
	},
	addCheckbox : function(target, name, value, text){
		if(typeof(target)=='string') target = document.getElementById(target);
		if(typeof(text)==undefined || !text.length) text = value;
		var cleanName = name.replace('\[\]', '');
		var checkbox = document.createElement('input');
		checkbox['type'] = 'checkbox';
		checkbox['name'] = cleanName+'[]';
		checkbox['id'] = cleanName+'_'+value;
		checkbox['value'] = value;
		var label = document.createElement('label');
		label['for'] = checkbox['id'];
		label.appendChild(checkbox);
		label['innerHTML'] = label['innerHTML']+text;
		target.appendChild(label);
	},
	addRadio : function(target, name, value, text){
		if(typeof(target)=='string') target = document.getElementById(target);
		if(typeof(text)==undefined || !text.length) text = value;
		var cleanName = name.replace('\[\]', '');
		var radio = document.createElement('input');
		radio['type'] = 'radio';
		radio['name'] = cleanName;
		radio['id'] = cleanName+'_'+value;
		radio['value'] = value;
		var label = document.createElement('label');
		label['for'] = radio['id'];
		label.appendChild(radio);
		label['innerHTML'] = label['innerHTML']+text;
		target.appendChild(label);
	},
	/*clearOption : function(sel){
		if(typeof(sel)=='string')
			sel = document.getElementById(sel);
		if(!sel) return false;
		var newSelect = sel.cloneNode(false);
		for(var i=0;i<sel.options.length;i++){
			if(sel.options[i].selected){
				console.log(i);
				var newopt = sel.options[i].cloneNode(true);
				newSelect.appendChild(newopt);
			}
		}
		console.log(newSelect);
		sel = sel.parentNode.replaceChild(newSelect, sel);
	},*/
	clearOption : function(sel){
		if(typeof(sel)=='string')
			sel = document.getElementById(sel);
		if(!sel) return false;
		// var keep = new Array();
		// for(var i=0;i<sel.options.length;i++){
			// if(sel.options[i].selected){
				// var newopt = sel.options[i].cloneNode(true);
				// keep.push(newopt);
			// }
		// }
		sel.innerHTML = '';
		// for(var i=0; i<keep.length; i++){
			// sel.appendChild(keep[i]);
		// }
	},
	addOption : function(sel, val, text){
		if(typeof(sel)=='string')
			sel = document.getElementById(sel);
		if(typeof(text)=='undefined' || !text.length){
			text = val;
		}
		var newOption = document.createElement('option');
		newOption.setAttribute('value', val);
		newOption.innerHTML = text;
		sel.appendChild(newOption);
	},
	getInputType : function(input){
		var inputtype;
		if(input.tagName){
			inputtype = input.tagName;
			switch(inputtype){
				case 'SELECT':
				case 'TEXTAREA':
					return inputtype.toLowerCase();
				break;
				case 'INPUT':
					return input.type.toLowerCase();
				break;
			}
		}else if(input.length){
			return input[0].type.toLowerCase();
		}
		return inputtype;
	},	
	getInputValue : function(input){
		var val = '';
		var inputtype = DBO.getInputType(input);
		switch(inputtype){
			case 'text':
			case 'password':
			case 'hidden':
				val = input.value;
			break;
			case 'textarea':
				if(tinyMCE.get(input['id'])){
					val = tinyMCE.get(input['id']).getContent();
				}else{
					val = input.value;
				}
			break;
			case 'select':
				if(!input.multiple){
					if(input.selectedIndex==undefined || !input.options[input.selectedIndex].value.length) break;
					val = input.options[input.selectedIndex].value;
					break;
				}
				var arr = new Array();
				for(var i=0; i<input.options.length; i++){
					if(input.options[i].selected && input.options[i].value.length) arr.push(input.options[i].value);
				}
				if(arr.length) val = arr;
			break;
			case 'checkbox':
				if(input.length!=undefined){
					var arr = new Array();
					for(var i=0; i<input.length; i++){
						if(input[i].checked && input[i].value.length) arr.push(input[i].value);
					}
					if(arr.length) val = arr;
				}else{
					if(input.checked) val = input.value;
				}
			break;
			case 'radio':
				if(input.length!=undefined){
					for(var i=0; i<input.length; i++){
						if(input[i].checked && input[i].value.length){
							val = input[i].value;
							break;
						}
					}
				}else{
					if(input.checked) val = input.value;
				}
			break;
		}
		return val;
	},
	formValidator : function(formname){
		if(!document.forms[formname]) return false;
		this.formname = formname;
		this.form = document.forms[formname];
		this.form['validator'] = this;
		this.summarizeError = true;
		this.validationList = new Array();
		this.addValidation = function(inputname, validation, message, param){
			var v = {
				inputname : inputname,
				validation : validation,
				param : param,
				message : message
			};
			this.validationList.push(v);
		};
		this.runValidation = function(){
			var errorCount = 0;
			var errorArr = new Array();
			for(idx in this.validationList){
				var theInput;
				var hitError = false;
				if(this.form[this.validationList[idx]['inputname']]){
					theInput = this.form[this.validationList[idx]['inputname']];
				}else if(this.form[this.validationList[idx]['inputname']+'[]']){
					theInput = this.form[this.validationList[idx]['inputname']+'[]'];
				}else{
					theInput = false;
				}
				switch(this.validationList[idx]['validation']){
					case 'mandatory':
						var inputValue = DBO.getInputValue(theInput);
						if(!inputValue.length){
							errorCount++;
							hitError = true;
						}
					break;
				}
				if(hitError){
					if(this.summarizeError) errorArr.push(this.validationList[idx]['message']);
					else alert(this.validationList[idx]['message']);
				}
			}
			if(errorCount && this.summarizeError){
				alert(errorArr.join('\n'));
				return false;
			}
			// return false; // mark
			return true;
		};
	},
	validateForm : function(form){
		return form['validator'].runValidation();
	}
};