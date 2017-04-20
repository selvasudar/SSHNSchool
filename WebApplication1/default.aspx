<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="default.aspx.cs" Inherits="WebApplication1.default" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" class="searchform">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <div class="col-xs-12 col-sm-12 searchform">
                <div class="col-xs-10 col-sm-10">
                    <input type="text" id="searchtxt" placeholder="Search Alumni" runat="server" />
                    <%--<asp:TextBox runat="server" ID="searchtxt" placeholder="Search Alumni"></asp:TextBox>--%>
                </div>

            </div>
        <div class="col-xs-12 col-sm-12 searchresult">
            <asp:GridView ID="searchgrid" runat="server" class="table table-bordered table-responsive table-hover " ShowHeader="true" ClientIDMode="Static">
                <Columns>
                    <asp:BoundField HeaderText="Alumni ID" DataField="aluid" />
                    <asp:BoundField HeaderText="First Name" DataField="fname" />
                    <asp:BoundField HeaderText="Last Name" DataField="lname" />
                    <asp:BoundField HeaderText="Date Of Birth" DataField="dob" />
                    <asp:BoundField HeaderText="Gender" DataField="gender" />
                    <asp:BoundField HeaderText="Year of Passed" DataField="yop" />
                    <asp:BoundField HeaderText="Group" DataField="groupname" />
                    <asp:BoundField HeaderText="Marital Status" DataField="maristts" />
                    <asp:BoundField HeaderText="Email" DataField="email" />
                    <asp:BoundField HeaderText="Phone Number" DataField="phonenum" />
                    <asp:BoundField HeaderText="Designation" DataField="designation" />
                    <asp:BoundField HeaderText="Organisation" DataField="organisation" />
                    <asp:BoundField HeaderText="Location" DataField="location" />
                    <asp:BoundField HeaderText="Address" DataField="address" />
                </Columns>
            </asp:GridView>            
            <table class="table table-bordered table-responsive table-hover table-striped mytable" id="filtered_res" ClientIDMode="Static">
                <tbody>
                    <tr>
                        <th>javascript</th>
                        <th>javascript</th>
                        <th>javascript</th>
                        <th>javascript</th>
                        <th>javascript</th>
                    </tr>
                </tbody>
            </table>
        </div>
        </div>
    </div>
</asp:Content>



