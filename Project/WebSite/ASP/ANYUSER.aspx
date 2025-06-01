<%@ Page Language="C#" MasterPageFile="~/MASTER/MasterPage_Show.master" AutoEventWireup="true" CodeFile="ANYUSER.aspx.cs" Inherits="ASP_ANYUSER" %>

<asp:Content runat="server" ID="content" ContentPlaceHolderId="ContentPlaceHolder1" >  
    <style>#stylecontent{width:735px; height:auto; right:2px; position:relative; clear:both; margin:0 auto;}</style>
    <style>#pan{width:230px; float:right; margin:32px 14px 0 0;}</style>
    <style>#header{width:735px; height:283px;  position:relative; background:url(../images/b_header.jpg) 0 0 no-repeat; margin:0 auto}</style>
    <style>#container{width:775px; position:relative; margin:0 auto; background:#2a2a2a}

        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
            font-weight: normal;
            color:#f2cf27;
        }

        </style>
         <div id="container" class="auto-style29">
         <div id="stylecontent" class="auto-style2">
    <div class="auto-style1">
    
        <br />
        <br />
        <span class="auto-style3"><strong>
        <asp:Label ID="Label_Welcome" runat="server" Text="Welcome"></asp:Label>
        <br />
        </strong></span>
        <br />
        أهلا بكم في معرضنا يمكنكم الآن استخدام صلاحيات المستخدم المسجل لدينا</div>
         </div>

        </div>
</asp:Content>
