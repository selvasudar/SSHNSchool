<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="alumni.aspx.cs" Inherits="WebApplication1.alumni" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer-wrapper">
    <div class="inner-wrapper">
        <h1 class="text-center">Alumni Registration</h1>
        <div class="signupform col-xs-12 col-sm-push-3 col-sm-6">
            <div ID="Form1"  class="contactus">
                <h3 class="text-center">Registration</h3>
                <asp:TextBox runat="server" placeholder="First Name" ID="firstname" ClientIDMode="Static"/>
                <asp:TextBox runat="server" placeholder="Last Name" ID="lastname" ClientIDMode="Static"/>
                <asp:TextBox runat="server" ID="datepicker" placeholder="Date of Birth" ClientIDMode="Static"/>
                <asp:Table runat="server" ID="formtable" ClientIDMode="Static">
                    <asp:TableRow>
                        <asp:TableCell>Gender:</asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="gender" runat="server" ClientIDMode="Static">
                                <asp:ListItem>---Select Gender---</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            Passed out year:
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList runat="server" ID="yop" ClientIDMode="Static" AutoPostBack="false">
                                <asp:ListItem Text="---Select Year of Passing---" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Group</asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList runat="server" ID="group" ClientIDMode="Static">
                                <asp:ListItem>---Select Group you Studied---</asp:ListItem>
                                <asp:ListItem>Group-A</asp:ListItem>
                                <asp:ListItem>Group-B</asp:ListItem>
                                <asp:ListItem>Group-C</asp:ListItem>
                                <asp:ListItem>Group-D</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Marital status:</asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList runat="server" ID="maritalstatus" ClientIDMode="Static">
                             <asp:ListItem>---Select Group your Marital status---</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                                <asp:ListItem>Married</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:TextBox runat="server" placeholder="Enter Your Mail" ID="mailid" ClientIDMode="Static"/>
                <asp:TextBox runat="server" placeholder="Phone number" ID="phonenumber" ClientIDMode="Static"/>
                <asp:TextBox runat="server" placeholder="Current Designation" ID="designation" ClientIDMode="Static" />
                <asp:TextBox runat="server" placeholder="Current Organisation" ID="orgnstn" ClientIDMode="Static"/>
                <asp:TextBox runat="server" placeholder="Current Location" ID="Crntlctn" ClientIDMode="Static"/>
                <asp:TextBox runat="server" TextMode="MultiLine" placeholder="Address For Communication" ID="address" rows="4" cols="50" ClientIDMode="Static"/>
                <asp:Button runat="server" text="Submit" class="btn btn-success" ID="lgnsubmit" OnClick="lgnsubmit_Click" ClientIDMode="Static" onclientclick="checkemptybox()"/>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=datepicker.ClientID%>").datepicker(); 
            //valid number alone in phone number field
            //called when key is pressed in textbox
            $("#phonenumber").keypress(function (e) {
                //if the letter is not digit then display error and don't type anything
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                    //display error message
                    $(this).addClass('validchk');
                    return false;
                }
                else{
                    $(this).removeClass('validchk');
                    return true;
                }
            });
            
            //allow text only in respective fields 
            $("#firstname,#lastname,#designation,#Crntlctn").keypress(function (e) { 
               try {
                    if (window.event) {
                        var charCode = window.event.keyCode;
                    }
                    else if (e) {
                        var charCode = e.which;
                    }else{
                     return true; 
                    }
                    if ((charCode > 64 && charCode < 91) ||(charCode==32)|| (charCode > 96 && charCode < 123){
                        $(this).removeClass('validchk');
                        return true;
                    }else{
                        $(this).addClass('validchk');
                     return false;
                    }
                }
                catch (err) { 
                    alert(err.Description);
                } 
            });         
        });
    </script>
</asp:Content>