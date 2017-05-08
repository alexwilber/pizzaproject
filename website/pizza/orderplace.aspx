<%@ Page Title="" Language="C#" MasterPageFile="~/pizza/Pizzamaster.master" AutoEventWireup="true" CodeFile="orderplace.aspx.cs" Inherits="pizza_orderplace" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
     function isNumberKey(evt) {
         var charCode = (evt.which) ? evt.which : evt.keyCode;
         if (charCode > 31 && (charCode < 48 || charCode > 57))
             return false;
         return true;
         
     }

     //function ChangeLabelText() {
     //    alert( document.getElementById('txtdeliveryaddress').id);
     //    document.getElementById('txtdeliveryaddress').style.display = 'inherit';
     //       // txtdeliveryaddress.Visible = true;
     //        Label9.Visible = true;
     //    //  document.getElementById('Label9').style.display = 'block';
         
     //   // $('#Label9').show();
     //}

       
        </script>
   
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
         <div class="feed">
			
		
        <div style="padding-top:10px;">
		   <div style="float:left">
			
	  <asp:Label ID="Label1" runat="server" Text="Label" CssClass="label">Pizza Size :</asp:Label>
             
     <asp:DropDownList ID="ddlpizzasize" runat="server" OnSelectedIndexChanged="ddlpizzasize_SelectedIndexChanged" AutoPostBack="True">
         
               </asp:DropDownList>
              
                  
        <br />
            
            <asp:Label ID="Label2" runat="server" Text="Label" CssClass="label">Number of Pizza :</asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Number Of Pizza" ControlToValidate="txtnumberofpizza" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>      
            <asp:TextBox ID="txtnumberofpizza" runat="server" CssClass="textbox" onkeypress="return isNumberKey(event);"></asp:TextBox>

        <br />
            
	  <asp:Label ID="Label8" runat="server" Text="Label" CssClass="label">Pick Type :(1$ charge for home delivery)</asp:Label>
	  
                   <asp:DropDownList ID="ddldeliverytype" runat="server" OnSelectedIndexChanged="ddldeliverytype_SelectedIndexChanged1" AutoPostBack="True" >
                       <asp:ListItem Value="pickup">PickUp</asp:ListItem>
                       <asp:ListItem Value="delivery">Home delivery</asp:ListItem>
                 </asp:DropDownList>
              
    
          <br />
            
               <asp:Label ID="Label9" runat="server" Text="Label" CssClass="label" Visible="false" >Delivery Address :</asp:Label>
           <asp:TextBox ID="txtdeliveryaddress" runat="server" TextMode="MultiLine" Height="50px"></asp:TextBox>
               <!-- <input type="text" id="txtdeliveryaddress" style="display:none" /> !-->
		   </div>

            

			</div>
           
            
             <div style="float:right">
            
                 <asp:Label ID="Label6" runat="server" Text="Label" CssClass="label">Pizza Price :</asp:Label>      
                   <asp:TextBox ID="txtpizzaprice" runat="server" CssClass="textbox" ></asp:TextBox>
               <br />
            
                 <asp:Label ID="Label3" runat="server" Text="Label" CssClass="label">Preffered Toppings :</asp:Label>       
     <asp:DropDownList ID="ddltoppings" runat="server">
         <asp:ListItem>Spinach</asp:ListItem>
         <asp:ListItem>Green Olives</asp:ListItem>
         <asp:ListItem>Hot Banana Peppers</asp:ListItem>
         <asp:ListItem>Broccoli</asp:ListItem>
         <asp:ListItem>pineapple</asp:ListItem>
         <asp:ListItem>Roasted Garlic</asp:ListItem>
         <asp:ListItem>Fresh Mushrooms</asp:ListItem>
         <asp:ListItem>Green Peppers</asp:ListItem>
         <asp:ListItem>Kalamata Olives</asp:ListItem>
         <asp:ListItem>Potato Slices</asp:ListItem>
         <asp:ListItem>Grilled Zucchini</asp:ListItem>
               </asp:DropDownList>
        
      <br />
                 <asp:Label ID="Label4" runat="server" Text="Label" CssClass="label">Time to completion :</asp:Label>      
     <asp:DropDownList ID="ddltimecompletion" runat="server">
         <asp:ListItem>1 Hr</asp:ListItem>
         <asp:ListItem>45 Min</asp:ListItem>
               </asp:DropDownList>           
          <br />

           
    
               
          
            </div>

     
		   
		 <div class="clear"></div>
		 </div>
         </ContentTemplate>
    </asp:UpdatePanel>
         <asp:Button ID="btnorderplace" runat="server" Text="Place Order" CssClass="takeorderP" OnClick="btnorderplace_Click" />
             <br />
	 <br />
   
</asp:Content>

