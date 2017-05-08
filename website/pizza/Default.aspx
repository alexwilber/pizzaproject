<%@ Page Title="" Language="C#" MasterPageFile="~/pizza/Pizzamaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="pizza_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        $(window).scroll(function() {
            $('.homeimages')
            .each(function(){
                var imagePos = $(this).offset().top;
                var topOfWindow = $(window).scrollTop();
                if (imagePos < topOfWindow+600) {
                    $(this).animate({'opacity':'1'},1000);
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="main_top" style="padding-left: 220px;">
         <h2>Welcome to Pizza Hat</h2>
      
          
       
      <div class="clear"></div>
     </div>
    <div class="homeimages">
    <div class="pizza_details">
       <img src="pizza_images/pizza_trad_alfredo_opt_resize.png" height="200" width="200" alt="" />
     
      <div class="clear"></div>
      </div>
  <div class="pizza_details">
	 <img src="pizza_images/pizza3_opt_resize.gif" alt="" height="200" width="200" />
	  
	  <div class="clear"></div>
  </div>
	<div class="pizza_details">
	    <img src="pizza_images/pizza4_opt_resize.jpg" alt="" height="200" width="200" />
			 
	 <div class="clear"></div>
	</div>
  <div class="pizza_details">
	  <img src="pizza_images/PizzaThinTomBasil_12_opt_resize.jpg" height="200" width="200" alt="" />
			 
	 <div class="clear"></div>
  </div>
    <div class="clear"></div>
	

  

  </div>
 
 <br />
</asp:Content>
