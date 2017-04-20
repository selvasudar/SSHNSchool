<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="WebApplication1.Login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <h1 class="text-center">Admin Login</h1>
            <div class="signupform contactus col-xs-12 col-sm-push-3 col-sm-6">
                <asp:Table runat="server" ID="loginform" class="col-sm-12 col-xs-12 contactus">
                    <asp:TableRow>
                        <asp:TableCell>Username</asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="useremail" placeholder="Admin Username" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Password</asp:TableCell><asp:TableCell>
                            <asp:TextBox runat="server" ID="paswrd" TextMode="Password" placeholder="Enter your Password" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Button ID="Button1" runat="server" class="btn btn-success text-center" Text="LOGIN" OnClick="Logon_click" />
            </div>
        </div>
    </div>
</asp:Content>

