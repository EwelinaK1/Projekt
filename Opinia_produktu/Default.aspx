<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Opinia_produktu.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ocena produktu</title>
    <style type="text/css">
        .auto-style1 {
            font-size: 40pt;
            color: #0033CC;
        }
        .auto-style2 {
            font-size: 15pt;
        }
        #form1 {
            font-size: 15pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <em>Ocena produktu</em></div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <span class="auto-style2"><em>Nazwa użytkownika:</em></span><p>
            <asp:TextBox ID="TextBox1" runat="server" ToolTip="Wpisz swoją nawę ." Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style2">
            <em>Nazwa produktu:</em></p>
        <p style="height: 27px">
            <asp:TextBox ID="TextBox2" runat="server" ToolTip="Wpisz nazwe produktu." Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style2">
            <em>Opinia:</em></p>
        <em>Zalety:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wady:</em><p>
            <asp:TextBox ID="TextBox3" runat="server" Height="100px" ToolTip="Wpisz zalety produktu!" Width="300px" TextMode="MultiLine"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" Height="100px"  Width="300px" TextMode="MultiLine" ToolTip="Wpisz wady produktu!"></asp:TextBox>
        </p>
        <p>
            <em>Ocena:</em></p>
        <p>
            <asp:TextBox ID="ocena" runat="server" ToolTip="Wpisz liczbę od 1 do 5 ." ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="ocena" runat="server" ErrorMessage="Przyjmuje liczby 1-5" ValidationExpression="[1-5]"></asp:RegularExpressionValidator>
        </p>
        <asp:Button ID="Button1" runat="server"  Text="Wyślij" Height="37px" OnClick="Button1_Click" Width="80px" ToolTip="kliknij" />
    </form>
</body>
</html>
