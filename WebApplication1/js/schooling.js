$(document).ready(function () {
//slider in home-page
	 $('.bxslider').bxSlider({
             mode: 'fade',
             auto: true,             
             captions: true,
             pagerCustom: '#bx-pager'               
             });//slider

     $.getJSON('js/details.json', function(data) {                          
        for(var i in data.details){        	
          $('.results').append('<li><span>'+data.details[i].Name+'</span><span>'+data.details[i].Place+'</span><span>'+data.details[i].emailid+'</span><span>'+data.details[i].pnumber+'</span></li>');
        }   

     });
    //filter table rows in admin page

     var rows = $('#searchgrid tr:nth-child(n+2)');       
     	$('.searchform input[type="text"]').keyup(function() {     		
	    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();	    	
	    rows.show().filter(function() {
	        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
	        return !~text.indexOf(val);
	    }).hide();	    
	});


    //click on tr popup comes     
    $("#searchgrid tr").click(function (event) {
        var x = $(this).find('td');
        
        $("#filtered_res tr:first").after("<tr></tr>")
        x.each(function (i) {           
            $("#filtered_res tr:last").append('<td>' + x[i].innerHTML + '</td>');
        });
        $("#filtered_res tr:last").addClass("info");
        $("#filtered_res tr:last").siblings().remove();
        var popup = window.open($(this).attr("href"), "popupWindow", "width=1064,height=100,resizeable,scrollbars");
        table = document.getElementById("filtered_res");
        popup.document.write('<html><head><link rel="stylesheet" href="css/bootstrap.min.css"/><link rel="stylesheet" href="css/style.css"/><script src="js/schooling.js"/></script></head><body>');
        popup.document.write('<div class="col-xs-12 col-sm-12 col-md-12">'+table.outerHTML+'</div>');
        popup.document.write('</body></html>');
        popup.document.close();
    });
   //removes additional values from binding
    $("#searchgrid tr th:nth-child(n + 14),#searchgrid tr td:nth-child(n + 14)").remove();
    $("#lgnsubmit").click(function(){
        if($("#firstname").val()=="" || $("#lastname").val()=="" || $("#datepicker").val()=="" || $("#mailid").val()=="" || $("#phonenumber").val()=="" || $("#designation").val()=="" || $("#orgnstn").val()=="" || $("#Crntlctn").val()=="" || $("#address").val()==""){
            alert("please enter values in all the boxes");            
            return false;            
        }
         

    });
    // window.history.pushState('obj', 'newtitle', '/');
});

 function ValidateEmail(email) {
        var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        return expr.test(email);
};