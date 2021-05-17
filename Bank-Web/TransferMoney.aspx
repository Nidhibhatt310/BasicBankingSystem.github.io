<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransferMoney.aspx.cs" Inherits="TransferMoney" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transfer Money</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: antiquewhite;
        }

        #Button2 {
            background-color: #FFFFFF;
            height: 40px;
            width: 200px;
            border-radius: 10px;
            color: black;
            box-shadow: 4px 4px #d1cccc;
        }

        .bg-text1 {
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

        #Table1 {
            table-layout: auto;
            border: 4px solid antiquewhite;
            text-align: left;
            font-weight: bold;
            color: black;
            margin-left: 150px;
            margin-top:50px;
            background-color: white; /* Black w/opacity/see-through */
            table-layout: fixed;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
         <div class="bg-text1" id="demo">
        <div>
            <div id="MyDiv">
                    <h1>Receiver Details</h1>
                    </div>
                        <table id="Table1" height="200px" width="500px">
                            <tr>
                                <td>NAME:
                                </td>
                                <td>
                                    
                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="190px"></asp:DropDownList>
                                         
                                </td>
                            </tr>
                            <tr>
                                <td>AMOUNT:</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter amount!!" ControlToValidate="TextBox1" Font-Size="small" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                </td>
                                <td style="text-align: center;">
                                    <asp:Button ID="Button2" runat="server" Text="Transfer" CausesValidation="true" OnClick="Button2_Click" /></td>
                            </tr>
                        </table>
                    </form>


                    <%--<input type="submit" value="Transfer" id="Button2" onclick="myfunction()"/>--%>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
