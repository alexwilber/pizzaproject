<%@ Page Title="" Language="C#" MasterPageFile="~/pizza/Pizzamaster.master" AutoEventWireup="true" CodeFile="conformdata.aspx.cs" Inherits="pizza_conformdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            color: #FFFFFF;
        }
        .auto-style2
        {
            color: #FFFFFF;
            font-size: large;
            padding-left:10px;
            padding-top:10px;
        }
        .auto-style3
        {
            font-size: large;
        }
        .auto-style4
        {
            font-size: xx-large;
            color: #FF9900;
        }
    </style>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><center> 
        
        <h2  class="auto-style4" id="headerorder">Your Order</h2>
        <br /><div class="main_top"> <table style="border:5px; width:500px; height:500px;" id="conformorder">
        <tr>

            <td class="auto-style2">Pizza Size</td><td>
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
         <tr>

            <td class="auto-style2">Pizza Price</td><td>
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
         <tr>

            <td class="auto-style2">Number Of Pizza</td><td>
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
         <tr>

            <td class="auto-style2">Topping</td><td>
                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
         <tr>

            <td class="auto-style2">Delivery Type</td><td>
                <asp:Label ID="Label5" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
        
         <tr>

            <td class="auto-style2">CompletionTime</td><td>
                <asp:Label ID="Label7" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
        <tr>

            <td class="auto-style2">Total Price</td><td>
                <asp:Label ID="Label8" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
       <tr>

            <td class="auto-style1"><asp:Label ID="Label9" runat="server" Text="Address" CssClass="auto-style2"></asp:Label></td><td>
                <asp:Label ID="Label6" runat="server" Text="Label" CssClass="auto-style2"></asp:Label></td>
        </tr>
      

    </table>
     
       </div>
      
      </center>
    <br />
     <asp:Button ID="btnconformorder" runat="server" Text="Confirm Order" CssClass="takeorder" OnClick="btnconformorder_Click"></asp:Button><asp:Button ID="btncancel" runat="server" Text="Cancel Order" CssClass="takeorder" OnClick="btncancel_Click"></asp:Button>
   <br /><br /><br />
     </asp:Content>


