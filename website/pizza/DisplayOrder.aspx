<%@ Page Title="" Language="C#" MasterPageFile="~/pizza/Pizzamaster.master" AutoEventWireup="true" CodeFile="DisplayOrder.aspx.cs" Inherits="pizza_DisplayOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   <div id="gridview">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF5050" BorderColor="#663300" BorderStyle="Solid" BorderWidth="1px" Caption="ORDER DISPLAY" CaptionAlign="Top" CellPadding="6" CellSpacing="4" DataKeyNames="id" Font-Size="Large" ForeColor="White" HorizontalAlign="Center" Width="800px">
        <Columns>
            <asp:BoundField DataField="pizzasize" HeaderText="Pizza Type" />
            <asp:BoundField DataField="numberofpizza" HeaderText="Number(s) Of Pizza(s)" />
            <asp:BoundField DataField="total" HeaderText="Total" />
            <asp:BoundField DataField="orderdate" HeaderText="Order Date &amp; Time" />
        </Columns>
        <HeaderStyle BackColor="#6600CC" Font-Bold="True" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
    </asp:GridView>
   </div>
    <asp:Button ID="btnback" runat="server" Text="Go To PlaceOrder" CssClass="takeorder" OnClick="btnback_Click" />
</asp:Content>

