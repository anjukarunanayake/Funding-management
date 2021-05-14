$(document).ready(function()
{ 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
}); 

$(document).on("click", "#btnSave", function(event) 
{ 

 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 

var status = validateItemForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 

var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT"; 
$.ajax( 
{ 
		url : "FundAPI", 
		type : type, 
		data : $("#formItem").serialize(), 
		dataType : "text", 
		complete : function(response, status) 
		{ 
			onItemSaveComplete(response.responseText, status); 
		} 
	}); 
});

function onItemSaveComplete(response, status)
{ 
if (status == "success") 
 { 
	 var resultSet = JSON.parse(response); 
	 if (resultSet.status.trim() == "success") 
	 { 
		 $("#alertSuccess").text("Successfully saved."); 
		 $("#alertSuccess").show();
		 
		 $("#divItemsGrid").html(resultSet.data); 
	 } else if (resultSet.status.trim() == "error") 
	 { 
		 $("#alertError").text(resultSet.data); 
		 $("#alertError").show(); 
	 } 
 } else if (status == "error") 
 { 
	 $("#alertError").text("Error while saving."); 
	 $("#alertError").show(); 
 } else
 { 
	 $("#alertError").text("Unknown error while saving.."); 
	 $("#alertError").show(); 
 }

	$("#hidItemIDSave").val(""); 
	$("#formItem")[0].reset(); 
}



$(document).on("click", ".btnUpdate", function(event) 
{ 
 $("#hidItemIDSave").val($(this).closest("tr").find('#hidItemIDUpdate').val()); 
 $("#ftype").val($(this).closest("tr").find('td:eq(0)').text()); 
 $("#fsource").val($(this).closest("tr").find('td:eq(1)').text()); 
 $("#famount").val($(this).closest("tr").find('td:eq(2)').text()); 
 $("#fdate").val($(this).closest("tr").find('td:eq(3)').text()); 
}); 



$(document).on("click", ".btnRemove", function(event)
{ 
	$.ajax( 
	{ 
		 url : "FundAPI", 
		 type : "DELETE", 
		 data : "fid=" + $(this).data("fid"),
		 dataType : "text", 
		 complete : function(response, status) 
		 { 
			 onItemDeleteComplete(response.responseText, status); 
		 } 
	}); 
});

function onItemDeleteComplete(response, status)
{ 
	if (status == "success") 
	{ 
		var resultSet = JSON.parse(response); 
		if (resultSet.status.trim() == "success") 
		{ 
		 $("#alertSuccess").text("Successfully deleted."); 
		 $("#alertSuccess").show(); 
		 
		 $("#divItemsGrid").html(resultSet.data); 
		} else if (resultSet.status.trim() == "error") 
		{ 
			 $("#alertError").text(resultSet.data); 
			 $("#alertError").show(); 
		} 
		
 } else if (status == "error") 
 { 
	 $("#alertError").text("Error while deleting."); 
	 $("#alertError").show(); 
 } else
 { 
	 $("#alertError").text("Unknown error while deleting.."); 
	 $("#alertError").show(); 
 } 

}


function validateItemForm() 
{ 

if ($("#ftype").val().trim() == "") 
 { 
 return "Insert Fund Type."; 
 } 

if ($("#fsource").val().trim() == "") 
 { 
 return "Insert Fund Source."; 
 }

if ($("#famount").val().trim() == "") 
 { 
 return "Insert Fund Amount."; 
 }

if ($("#fdate").val().trim() == "") 
 { 
 return "Insert Fund Date."; 
 } 
return true; 
}