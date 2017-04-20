<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="contactus.aspx.cs" Inherits="WebApplication1.contactus" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="outer-wrapper contactus">
        <div class="inner-wrapper">
          <div class="col-xs-12 col-sm-12 text-center">
            <h3>Contact Us</h3>
          </div>
          <div class="col-xs-12 col-sm-6">
            
         	<asp:TextBox runat="server"  name="name" placeholder="Name" ID="sendername" ClientIDMode="Static"/>            
            <asp:TextBox runat="server" name="phone" placeholder="phone" ID="senderphonenum" ClientIDMode="Static"/>
            <asp:TextBox runat="server" name="email" placeholder="Email" ID="sendermailid" ClientIDMode="Static"/>
                <asp:TextBox runat="server" name="subj" placeholder="subject" ID="subject" ClientIDMode="Static"/>
            <asp:TextBox runat="server" TextMode="MultiLine" rows="10" cols="50" placeholder="Message" ID="message" ClientIDMode="Static" /></asp:TextBox>
            <asp:Button runat="server" Text="Send an email" class="btn btn-primary btn-block" ID="emailsnd" OnClick="emailsnd_Click" ClientIDMode="Static"/>
          <asp:Literal runat="server" ID="textalert" ClientIDMode="Static"></asp:Literal>
          <p>All your Message Will Be Send To School Management And Respond You Back As Soon</p>
          </div>
          <div class="col-xs-12 col-sm-6">
            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0"width="100%" height="500" src="https://maps.google.com/maps?hl=en&q=south street hindu nadar higher secondary school muhavur&ie=UTF8&t=roadmap&z=13&iwloc=B&output=embed"><div><small><a href="http://embedgooglemaps.com">embedgooglemaps.com</a></small></div><div><small><a href="http://embedgooglemaps.com/">embed google map</a></small></div></iframe>
          </div>
        </div>
      </div>
</asp:Content>

