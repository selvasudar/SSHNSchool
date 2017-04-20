<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="index.aspx.cs" Inherits="WebApplication1.WebForm1" %>

 <asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer-wrapper">    
         <div class="inner-wrapper">
            <!--Slider Banner-->
            <div class="sliderbanner col-xs-12 col-sm-12">
               <ul class="bxslider">
                  <li><img src="images/banner1.png" title="Banner1Banner1Banner1Banner1Banner1Banner1Banner1Banner1" alt="banner"/></li>
                  <li><img src="images/banner2.png" title="Banner2" alt="banner"/></li>
                  <li><img src="images/banner3.jpg" title="Banner3" alt="banner"/></li>
                  <li><img src="images/banner4.jpg" title="Banner4" alt="banner"/></li>
               </ul>
            </div>
            <!--Slider Ends-->
            <div class="main-tabs col-xs-12 col-sm-8">
               <ul class="nav nav-tabs text-uppercase">
                  <li class="active"><a data-toggle="tab" href="#sectionA">upcoming events</a></li>
                  <li><a data-toggle="tab" href="#sectionB">Recent events</a></li>
                  <li><a data-toggle="tab" href="#sectionC">latest news</a></li>
               </ul>
               <div class="tab-content">
                  <div id="sectionA" class="tab-pane fade in active text-center">
                     <h3>Upcoming Events</h3>
                     <marquee direction="up" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                        <ul class="marquee list-unstyled text-center">
                           <li><a href="#">Upcoming event1</a></li>
                           <li><a href="#">Upcoming event2</a></li>
                           <li><a href="#">Upcoming event3</a></li>
                           <li><a href="#">Upcoming event4</a></li>
                           <li><a href="#">Upcoming event5</a></li>
                           <li><a href="#">Upcoming event6</a></li>
                        </ul>
                     </marquee>
                  </div>
                  <div id="sectionB" class="tab-pane fade text-center">
                     <h3>Recent Events</h3>
                     <marquee direction="up" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                        <ul class="marquee list-unstyled text-center">
                           <li><a href="#">Recent event1</a></li>
                           <li><a href="#">Recent event2</a></li>
                           <li><a href="#">Recent event3</a></li>
                           <li><a href="#">Recent event4</a></li>
                           <li><a href="#">Recent event5</a></li>
                           <li><a href="#">Recent event6</a></li>
                        </ul>
                     </marquee>
                  </div>
                  <div id="sectionC" class="tab-pane fade text-center">
                     <h3>Latest News</h3>
                     <marquee direction="up" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                        <ul class="marquee list-unstyled text-center">
                           <li><a href="#">News1</a></li>
                           <li><a href="#">News2</a></li>
                           <li><a href="#">News3</a></li>
                           <li><a href="#">News4</a></li>
                           <li><a href="#">News5</a></li>
                           <li><a href="#">News6</a></li>
                        </ul>
                     </marquee>
                  </div>
               </div> 
            </div>
            <div class="main-acheivement col-xs-12 col-sm-4">
               <h3 class="text-center">Acheivements</h3>
               <img src="images/acheivement.jpg" alt="acheivement" class="img-responsive">
               <p>Mr.A.R.Rahman visited our school and shared experience on receiving Oscar Award for the Performance in Slumdog Millionaire.</p>
               <span><a href="#">Read More...</a></span>
            </div>
         </div>
      </div>       
 </asp:Content>