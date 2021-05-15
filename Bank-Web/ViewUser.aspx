<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewUser.aspx.cs" Inherits="ViewUser" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Details</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: antiquewhite;
        }

        * {
            box-sizing: border-box;
        }

        .bg-text {
            transform: translate(-50%, -50%);
            position: absolute;
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
            color: white;
            font-weight: bold;
            border: 3px solid #f1f1f1;
            top: 50%;
            left: 50%;
            z-index: 2;
            width: 50%;
            height: 90%;
            padding: 20px;
            text-align: center;
        }

        #DetailsView1 {
            font-family: "arial";
            background-color: #FFFFFF;
            font-size: small;
            margin-left: 100px;
            text-align: center;
        }

        #Button1 {
            background-color: #FFFFFF;
            height: 40px;
            width: 200px;
            border-radius: 10px;
            color: black;
            box-shadow: 4px 4px #d1cccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--Sender details--%>

        <div class="bg-text">
            <h1>Sender Details</h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="471px" Width="519px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateRows="False">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:TemplateField HeaderText="NAME">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Cname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Cemail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BALANCE">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Cbalc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BANK">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Cbank") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ACCOUNT TYPE">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Cbtype") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IFSC code">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Cbifsc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TRANSFER MONEY">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Transfer Money</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
        </div>

        
    </form>

  
</body>
</html>
