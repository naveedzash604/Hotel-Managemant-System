<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="locations.aspx.cs" Inherits="LakDeranaPublic.locations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- content -->
        <article id="content">
          <div class="box1">
            <div class="wrapper">
              <form action="#" id="form1">
                                    <img alt="" src="images/prot_logo.jpg" />                                   
                               </form>
              <div class="col2 pad">
                <h2><img src="images/title_marker1.jpg" alt="">Contact Form</h2>
                <form id="ContactForm" action="#">
                  <div>
                    <div  class="wrapper">
                      <input type="text" class="input">
                      Name: </div>
                    <div  class="wrapper">
                      <input type="text" class="input">
                      Address: </div>
                    <div  class="wrapper">
                      <input type="text" class="input">
                      Email: </div>
                    <div  class="textarea_box">
                      <textarea name="textarea" cols="1" rows="1"></textarea>
                      Contacts: </div>
                    <a href="#" class="button2">Send</a> <a href="#" class="button2">Clear</a> </div>
                </form>
              </div>
            </div>
          </div>
          <div class="pad">
            <h2>Our Contacts</h2>
            <div class="line2">
              <div class="wrapper line3">
                <div class="col1">
                  <p class="pad_bot1"><strong class="color2">Colombo 03</strong></p>
                  <p class="pad_bot1">230, Galle Road, Colombo03</p>
                  <p class="cols"> Freephone:<br>
                    Telephone:<br>
                    Fax:<br>
                    Email:</p>
                  +94 011 565 656<br>
                  +94 011 603 6035<br>
                  +94 012 889 9898<br>
                  <a href="#" class="color1">mail@lakderan.com</a> </div>
                <div class="col1 pad_left1">
                  <p class="pad_bot1"><strong class="color2">Ella</strong></p>
                  <p class="pad_bot1">30 Wellaway Raod, Ella</p>
                  <p class="cols"> Freephone:<br>
                    Telephone:<br>
                    Fax:<br>
                    Email:</p>
                  +94 055 559 6580<br>
                  +94 055 603 6035<br>
                  +94 055 889 9898<br>
                  <a href="#" class="color1">mail@lankderana.com</a> </div>
                <div class="col1 pad_left1">
                  <p class="pad_bot1"><strong class="color2">Kandy</strong></p>
                  <p class="pad_bot1">520 Dalada Widiya,Kandy</p>
                  <p class="cols"> Freephone:<br>
                    Telephone:<br>
                    Fax:<br>
                    Email:</p>
                  +94 081 559 6580<br>
                  +94 081 603 6035<br>
                  +94 091 889 9898<br>
                  <a href="#" class="color1">mail@Lakderana.org</a> </div>
              </div>
            </div>
          </div>
        </article>
        <!--content end-->
</asp:Content>
