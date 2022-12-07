<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Default.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Seleziona Auto : </h1>
            <asp:DropDownList ID="ElencoAuto" runat="server" CssClass="form-control">

            </asp:DropDownList>
        </div>
          <div class="row">
             <div class="text-center">
                <h4>Opzioni</h4>
                <asp:CheckBoxList ID="CheckBoxListAggiunzioni" RepeatLayout="Flow"
                CssClass="form-control" RepeatColumns="3" runat="server">
                <asp:ListItem Text="Vernice m (+ 330,00)" Value="330,00"></asp:ListItem>
                <asp:ListItem Text="Fari XENO (+ 180,00)" Value="180,00"></asp:ListItem> 
                <asp:ListItem Text="Sistema navigazione (+ 1800,00)" Value="1800,00"></asp:ListItem> 
                <asp:ListItem Text="Line Assist (+ 2000,00)" Value="2000,00"></asp:ListItem> 
                <asp:ListItem Text="Ruota di Scorta (+ 155,00)" Value="155,00"></asp:ListItem> 
                <asp:ListItem Text="Sedili/Volante in pelle (+ 700,00)" Value="700,00"></asp:ListItem> 
                </asp:CheckBoxList>
           </div>
    </form>
</body>
</html>
