<%@ Page  Language="C#" MasterPageFile="~/MASTER/MasterPage_Show.master"  AutoEventWireup="true" CodeFile="1_1_SHOW SALE NEW.aspx.cs" Inherits="ASP_1_1_SHOWSALENEW" %>


<asp:Content runat="server" ID="content" ContentPlaceHolderId="ContentPlaceHolder1" >  
    <style>#stylecontent{width:735px; height:auto; right:2px; position:relative; clear:both; margin:0 auto;}</style>
    <style>#pan{width:230px; float:right; margin:32px 14px 0 0;}</style>
    <style>#header{width:735px; height:283px;  position:relative; background:url(../images/b_header.jpg) 0 0 no-repeat; margin:0 auto}</style>
    <style>#container{width:775px; position:relative; margin:0 auto; background:#2a2a2a}
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 830px;
            right: 2px;
            top: 0px;
            width: 742px;
            left:285px;
        }
        .auto-style3 {
            height: 63px;
        }
        .auto-style4 {
            font-weight: normal;
            font-size: large;
        }
        .auto-style6 {
            width: 115px;
        }
    </style>


    <script type = "text/javascript">
            function UncheckOthers(objchkbox) {
                //Get the parent control of checkbox which is the checkbox list
                var objchkList = objchkbox.parentNode.parentNode.parentNode;
                //Get the checkbox controls in checkboxlist
                var chkboxControls = objchkList.getElementsByTagName("input");
                //Loop through each check box controls
                for (var i = 0; i < chkboxControls.length; i++) {
                    //Check the current checkbox is not the one user selected
                    if (chkboxControls[i] != objchkbox && objchkbox.checked) {
                        //Uncheck all other checkboxes
                        chkboxControls[i].checked = false;
                    }
                }
            }
</script>

     <div id="container" class="auto-style29">
         <div id="stylecontent" class="auto-style2">
                     <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2">
                    <span class="auto-style8"><span class="auto-style4"><strong>عرض سيارة جديدة للبيع</strong></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList_Company" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Company_SelectedIndexChanged1" style="height: 22px; width: 77px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    الشركة الصانعة</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList_Model" runat="server" >
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    الموديل</td>
            </tr>
            <tr>
                <td>
                    <asp:Calendar ID="Calendar_Show" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style6">
                    تاريخ الصنع</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList_Fuel" runat="server" Height="16px" Width="125px">
                        <asp:ListItem Selected="True" onclick="UncheckOthers(this);">بنزين</asp:ListItem>
                        <asp:ListItem onclick="UncheckOthers(this);">غاز</asp:ListItem>
                        <asp:ListItem onclick="UncheckOthers(this);">مازوت</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style6">
                    نوع الوقود</td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList_Geer" runat="server">
                        <asp:ListItem Selected="True">عادي</asp:ListItem>
                        <asp:ListItem>اوتوماتيك</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    نوع الغيار</td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label_telephoneshowsalenew" runat="server" Text="تلفون"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox_Telephone" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label_mobileshowsalenew" runat="server" Text="جوال"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox_Mobile" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    معلومات الإتصال</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList_Place" runat="server">
                        <asp:ListItem>دمشق</asp:ListItem>
                        <asp:ListItem>حلب</asp:ListItem>
                        <asp:ListItem>حمص</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    مكان تواجد السيارة</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox_Price" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    السعر المطلوب</td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload_Show" runat="server" />
                </td>
                <td class="auto-style6">
                    تحميل الصور</td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" Text="تحميل" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            </table>
         </div>

        </div>
</asp:Content>