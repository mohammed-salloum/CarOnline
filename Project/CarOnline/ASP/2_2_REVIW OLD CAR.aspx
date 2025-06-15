<%@ Page Language="C#" MasterPageFile="~/MASTER/MasterPage_Show.master" AutoEventWireup="true" CodeFile="2_2_REVIW OLD CAR.aspx.cs" Inherits="ASP_2_2_REVIWOLDCAR" %>

    <asp:Content runat="server" ID="content" ContentPlaceHolderId="ContentPlaceHolder1" >  
        <style>#stylecontent{width:735px; height:725px; position:relative; clear:both; margin:0 auto;}</style>
    <style>#pan{width:735px; float:right; margin:32px 14px 0 0;}</style>
    <style>#header{width:735px; height:283px;  position:relative; background:url(../images/b_header.jpg) 0 0 no-repeat; margin:0 auto}</style>
    <style>#container{width:775px; position:relative; margin:0 auto; background:#2a2a2a}
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style5 {
            color: #CCFFFF;
            width: 100px;
        }
        .auto-style6 {
            width: 500px;
            left: 0px;
            top: 0px;
        }
        .auto-style8 {
            font-size: large;
            left: 0px;
            top: 0px;
            width: 500px;
        }
        .auto-style9 {
            width: 500px;
        }
        .auto-style10 {
            font-weight: normal;
            width: 500px;
        }
        .auto-style12 {
            font-size: large;
            width: 34px;
        }
        .auto-style13 {
            width: 34px;
        }
        #container0{width:775px; position:relative; margin:0 auto; background:#2a2a2a}
        .auto-style4 {
            font-size: large;
        }
        .auto-style16 {
            font-size: x-large;
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


     <div id="container0" class="auto-style6">
         <div id="stylecontent" class="auto-style8">

    <div class="auto-style2">
    
        <strong>
        <br />
        <span class="auto-style16">استعراض سيارة مستعملة للبيع</span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        </span>
        <br />
        <asp:Label ID="Label_sessiun" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#FFCC00">سجل الدخول لعرض معلولمات الاتصال</asp:Label>
        <br />
        <br />
        <asp:Button ID="Button_login" runat="server" OnClick="Button_login_Click" PostBackUrl="~/ASP/4_2_LOGIN.aspx" Text="تسجيل الدخول" Visible="False" />
        <br />
        <br />
        <br />
        </strong></div>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList_Company" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Company_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server" Text="الشركة الصانعة"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList_Model" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style13">
                    الموديل</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList_Place" runat="server">
                        <asp:ListItem>دمشق</asp:ListItem>
                        <asp:ListItem>حلب</asp:ListItem>
                        <asp:ListItem>حمص</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    مكان تواجد السيارة</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <br />
                    <asp:Button ID="Button_ShowCar" runat="server" OnClick="Button_ShowchCar_Click" Text="بحث" />
                    <br />
                    <br />
                    <asp:Button ID="Button_Advance_search" runat="server" Text="بحث متقدم" OnClick="Button_Advance_search_Click" />
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:CheckBoxList ID="CheckBoxList_Fuel" runat="server" Visible="False" RepeatDirection="Horizontal" >
                        <asp:ListItem onclick="UncheckOthers(this);" Selected="True">بنزين</asp:ListItem>
                        <asp:ListItem onclick="UncheckOthers(this);">غاز</asp:ListItem>
                        <asp:ListItem onclick="UncheckOthers(this);">مازوت</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label_Fuel" runat="server" Text="نوع الوقود" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:RadioButtonList ID="RadioButtonList_Geer" runat="server" Visible="False" RepeatDirection="Horizontal">
                        <asp:ListItem>اوتوماتيك</asp:ListItem>
                        <asp:ListItem Selected="True">عادي</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label_Geer" runat="server" Text="نوع الغيار" Visible="False" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <br />
                    <asp:Button ID="Button_AdvanceShowCar" runat="server" Text="بحث" OnClick="Button_AdvanceShowCar_Click" />
                </td>
            </tr>
            </table>
    
    </div>
                      </div>

        </div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <div class="auto-style1">
                    <asp:GridView ID="GridView_Search" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <Columns>
                            <asp:BoundField DataField="datashow" HeaderText="تاريخ الاعلان" SortExpression="datashow" />
                            <asp:BoundField DataField="company" HeaderText="الشركة" SortExpression="company" />
                            <asp:BoundField DataField="model" HeaderText="الموديل" SortExpression="model" />
                            <asp:BoundField DataField="datamading" HeaderText="تاريخ الصنع" SortExpression="datamading" />
                            <asp:BoundField DataField="fuel" HeaderText="الوقود" SortExpression="fuel" />
                            <asp:BoundField DataField="geer" HeaderText="الغيار" SortExpression="geer" />
                            <asp:BoundField DataField="TL" HeaderText="تلفون" SortExpression="TL" />
                            <asp:BoundField DataField="Mob" HeaderText="موبايل" SortExpression="Mob" />
                            <asp:BoundField DataField="carplaces" HeaderText="المحافظة" SortExpression="carplaces" />
                            <asp:BoundField DataField="price" HeaderText="السعر" SortExpression="price" />
                            <asp:ImageField DataImageUrlField="imageUrl" HeaderText="صور">
                                <ControlStyle Height="150px" Width="150px" />
                            </asp:ImageField>

                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" SelectCommand="SELECT * FROM [saleold] WHERE (([company] = @company) AND ([model] = @model) AND ([carplaces] = @carplaces)) ORDER BY [datashow]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList_Company" Name="company" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList_Model" Name="model" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList_Place" Name="carplaces" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <div class="auto-style1">
                    <asp:GridView ID="GridView_Advance" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Visible="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <Columns>
                            <asp:BoundField DataField="datashow" HeaderText="تاريخ الاعلان" SortExpression="datashow" />
                            <asp:BoundField DataField="company" HeaderText="الشركة" SortExpression="company" />
                            <asp:BoundField DataField="model" HeaderText="الموديل" SortExpression="model" />
                            <asp:BoundField DataField="datamading" HeaderText="تاريخ الصنع" SortExpression="datamading" />
                            <asp:BoundField DataField="fuel" HeaderText="الوقود" SortExpression="fuel" />
                            <asp:BoundField DataField="geer" HeaderText="الغيار" SortExpression="geer" />
                            <asp:BoundField DataField="TL" HeaderText="تلفون" SortExpression="TL" />
                            <asp:BoundField DataField="Mob" HeaderText="موبايل" SortExpression="Mob" />
                            <asp:BoundField DataField="carplaces" HeaderText="المحافظة" SortExpression="carplaces" />
                            <asp:BoundField DataField="price" HeaderText="السعر" SortExpression="price" />
                            <asp:ImageField DataImageUrlField="imageUrl" HeaderText="صور">
                                <ControlStyle Height="150px" Width="150px" />
                            </asp:ImageField>

                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" SelectCommand="SELECT * FROM [saleold] WHERE (([company] = @company) AND ([model] = @model) AND ([carplaces] = @carplaces) AND ([fuel] = @fuel) AND ([geer] = @geer)) ORDER BY [datashow]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList_Company" Name="company" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList_Model" Name="model" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList_Place" Name="carplaces" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="CheckBoxList_Fuel" Name="fuel" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="RadioButtonList_Geer" Name="geer" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    
    </asp:Content>