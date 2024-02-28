<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="LakDeranaPublic.booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    *<!-- content --><article id="content">
        <div class="box1">
            <div class="wrapper">
                <form id="form1" runat="server" class="auto-style1">
                    <h2>Book a Room</h2>
                    <fieldset>
                        <div class="row">
                            <asp:DropDownList ID="CmbLocation" class="input" runat="server" DataSourceID="SqlDSLocation" DataTextField="Hotel_name" DataValueField="Hotel_Id" OnSelectedIndexChanged="CmbLocation_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                            </asp:DropDownList>
                            Location:
                            <asp:SqlDataSource ID="SqlDSLocation" runat="server" ConnectionString="Data Source=DESKTOPDELLNAVE;Initial Catalog=MSS-Lakderana;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Hotel_Id], [Hotel_name] FROM [Hotel_info]"></asp:SqlDataSource>
                        </div>
                        <div class="row">                            
                            Availability : <asp:Label ID="LblAvail" runat="server" class="input" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label><asp:Label ID="LblRoomId" runat="server" Text="0" Visible="False"></asp:Label>
                        </div>
                        <div class="row">
                            <asp:TextBox ID="TxtCantNo" class="input" runat="server" AutoPostBack="True" OnTextChanged="TxtCantNo_TextChanged" MaxLength="10"></asp:TextBox>
                            Contact Number:
                        </div>                                                
                        <div class="row">
                            <asp:TextBox ID="TxtCusName" class="input"  runat="server"></asp:TextBox><asp:Label ID="LblcutId" runat="server" Visible="False" Text="0"></asp:Label>
                            Customer Name:
                        </div>
                         <div class="row">
                            <asp:TextBox ID="TxtChekinDate" class="input"  runat="server"></asp:TextBox>
                            Check In Date:
                             <asp:Calendar ID="DTPChekin" class="input" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="160px" Width="193px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False">
                                 <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                 <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                 <OtherMonthDayStyle ForeColor="#999999" />
                                 <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                 <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                 <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                 <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                 <WeekendDayStyle BackColor="#CCCCFF" />
                             </asp:Calendar>
                            
                        </div>
                        <div class="row">
                            <asp:TextBox ID="TxtChekOutDate" class="input"  runat="server"></asp:TextBox>
                            Check In Date:
                             <asp:Calendar ID="DTPChekout" class="input" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="160px" Width="193px" OnSelectionChanged="DTPChekout_SelectionChanged" Visible="False">
                                 <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                 <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                 <OtherMonthDayStyle ForeColor="#999999" />
                                 <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                 <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                 <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                 <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                 <WeekendDayStyle BackColor="#CCCCFF" />
                             </asp:Calendar><asp:Button ID="BtnCheckout" runat="server" Text="." OnClick="BtnCheckout_Click" />
                            
                        </div>                       
                        <div class="row">
                            <asp:Button ID="Button1" class="button1" runat="server" Text="Book" OnClick="Button1_Click" />
                        </div>
                    </fieldset>
                </form>
                <div class="col2 pad">
                    <h2>
                        <img src="images/title_marker1.jpg" alt="">Reserve your room online </h2>
                    <div class="wrapper line1">
                        <div class="col3">
                            <figure class="pad_bot3">
                                <img src="images/page3_img1.jpg" alt=""></figure>
                            <p class="pad_bot1"><strong class="color3">Standerd Room</strong></p>
                            <p class="MsoNormal">
                                Stander Room with required facility with safety and health guiding <o:p></o:p>
                            </p>
                            <ul class="list2">
                                <li><span>4</span>Number of Person</li>
                                <li><span>2</span>Beds</li>
                                <li><span>Y</span>Wifi</li>
                            </ul>
                            

                        </div>
                        <div class="col3 pad_left2">
                            <figure class="pad_bot3">
                                <img src="images/page3_img4.jpg" alt=""></figure>
                            <p class="pad_bot1"><strong class="color3">Luxury Room</strong></p>
                            <p>luxury rooms with comfort and luxury </p>
                            <ul class="list2">
                                <li><span>2</span>Number Of Person</li>
                                <li><span>1</span>Kind size Beds</li>
                                <li><span>Y</span>AC</li>
                            </ul>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pad">
            <div class="wrapper line3">
                <div class="col2">
                    <h2>About Booking</h2>
                    <p class="pad_bot1"><strong class="color2">SYour room booking can be done through our online portal , without paying any booking fee/service charge, one of our customer services personnel will call and conform your book before checking .</p>
                    <div class="wrapper">
                    </div>
&nbsp;</div>
                <div class="col1 pad_left1">
                    <h2>Booking Info</h2>
                    <p class="pad_bot1"><strong class="color2">SCustomer Phone Number and  Name are mandatory, cancelation will be done with any service charge. </p>
                </div>
            </div>
        </div>
    </article>
    </strong>
</strong>
</asp:Content>
