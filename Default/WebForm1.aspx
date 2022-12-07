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
            <div class="row">
                <div class="col-6">
            <h1>Seleziona Auto : </h1>
            <asp:DropDownList ID="ElencoAuto" runat="server" CssClass="form-control" AutoPostBack="true"
                OnSelectedIndexChanged="ElencoAuto_SelectedIndexChanged">

            </asp:DropDownList>
                </div>
                 <div class="col-6">
                     <asp:Image ID="Image1" runat="server" href=""/>
                     <br />
                     <span>Prezzo di listino: </span>
                     <asp:Label ID="PrezzodiListino"  runat="server" Text="">

                     </asp:Label>
                  </div>   
          <div class="row">
             <div class="text-center">
                <h4>Opzioni</h4>
                <asp:CheckBoxList ID="Opzioni" RepeatLayout="Flow"
                CssClass="form-control" RepeatColumns="3" runat="server">
                    <asp:ListItem Text="Vernice m (+ 330,00)" Value="330,00"></asp:ListItem>
                    <asp:ListItem Text="Fari XENO (+ 180,00)" Value="180,00"></asp:ListItem> 
                    <asp:ListItem Text="Sistema navigazione (+ 1800,00)" Value="1800,00"></asp:ListItem> 
                    <asp:ListItem Text="Line Assist (+ 2000,00)" Value="2000,00"></asp:ListItem> 
                    <asp:ListItem Text="Ruota di Scorta (+ 155,00)" Value="155,00"></asp:ListItem> 
                    <asp:ListItem Text="Sedili/Volante in pelle (+ 700,00)" Value="700,00"></asp:ListItem> 
                </asp:CheckBoxList>
           </div>
            <div class="row">
              <div class="col">
                <div class="text-center">
                  <h4>Garanzia : </h4>
                    <p>Numero anni garanzia 120€/anno CAD</p>
                       <asp:DropDownList ID="Garanzia" runat="server" CssClass="form-control">
                        <asp:ListItem Text="1 anno" Value="120,00"></asp:ListItem>
                        <asp:ListItem Text="2 anno" Value="240,00"></asp:ListItem>
                        <asp:ListItem Text="2 anno" Value="360,00"></asp:ListItem>
                       </asp:DropDownList>
                 </div>
               </div>
            </div>
          </div>
            <div  class="text-center">
           <asp:Button CssClass="btn btn-primary" ID="CalcoloPrev" runat="server" Text="Calcola Preventivo" OnClick="CalcoloPrev_Click" />
                <br />
                
                <span>Tot. Moddelo:</span> <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
            <span>Tot. Optional</span> <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br />
            <span>Tot. Garanzia</span> <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                <br />
            <hr />
            <span><b>Totale Complessivo</b></span><asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </div>
    </form>
</body>
</html>
