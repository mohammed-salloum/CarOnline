<%@ Page Language="C#" MasterPageFile="~/MASTER/MasterPage_Show.master" AutoEventWireup="true" CodeFile="4_1_SIGN IN.aspx.cs" Inherits="ASP_4_SIGN_IN" %>

<asp:Content runat="server" ID="content" ContentPlaceHolderId="ContentPlaceHolder1" >  
    <style>#stylecontent{width:735px; height:auto; right:2px; position:relative; clear:both; margin:0 auto;}</style>
    <style>#pan{width:230px; float:right; margin:32px 14px 0 0;}</style>
    <style>#header{width:735px; height:283px;  position:relative; background:url(../images/b_header.jpg) 0 0 no-repeat; margin:0 auto}</style>
    <style>#container{width:775px; position:relative; margin:0 auto; background:#2a2a2a}
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        </style>

     <div id="container" class="auto-style29">
         <div id="stylecontent" class="auto-style2">


    <div class="auto-style1">
    
        <br />
        <table class="auto-style2">
            <tr>
                <td>
        <asp:TextBox ID="TextBox_username" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>اسم المستخدم&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td> <asp:TextBox ID="TextBox_passowrd" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
                </td>
                <td>كلمة المرور</td>
            </tr>
            <tr>
                <td> 
        <asp:TextBox ID="TextBox_confirmpassowrd" runat="server" Width="140px" TextMode="Password"></asp:TextBox>
                </td>
                <td>أعد كتابة كلمة المرور</td>
            </tr>
            <tr>
                <td> <asp:TextBox ID="TextBox_email" runat="server" Width="140px" TextMode="Email"></asp:TextBox>
                </td>
                <td>البريد الاكتروني</td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button1" runat="server" Text="تسجيل" OnClick="Button1_Click" />
    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

            <div class="auto-style1">            
    </div>
                      </div>

        </div>
</asp:Content>
