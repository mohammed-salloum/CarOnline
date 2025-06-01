<%@ Page Language="C#" MasterPageFile ="~/MASTER/MasterPage_Show.master" AutoEventWireup="true" CodeFile="ADMIN.aspx.cs" Inherits="ASP_ADMIN" %>

<asp:Content runat="server" ID="content" ContentPlaceHolderId="ContentPlaceHolder1" >  
    <style>#stylecontent{width:735px; height:auto; right:2px; position:relative; clear:both; margin:0 auto;}</style>
    <style>#pan{width:230px; float:right; margin:32px 14px 0 0;}</style>
    <style>#header{width:735px; height:283px;  position:relative; background:url(../images/b_header.jpg) 0 0 no-repeat; margin:0 auto}</style>
    <style>#container{width:775px; position:relative; margin:0 auto; background:#2a2a2a}

        .auto-style1 {
            text-align: right;
        }

        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-size: large;
            font-weight: normal;
            color:#f2cf27;
        }

        .auto-style4 {
            text-align: center;
        }

    </style>

     <div id="container" class="auto-style29">
         <div id="stylecontent" class="auto-style2">

    <div class="auto-style1">
    
        <div class="auto-style4">
            <br />
        <span class="auto-style3"><strong>
            <asp:Label ID="Label_Welcome" runat="server" Text="Welcome"></asp:Label>
        </strong></span>
    
        <br />
        <span class="auto-style3"><strong>انت الان تملك صللاحيات مدير الموقع<br />
        </strong></span>You can&nbsp; edit and delete users, company and model<br />
        and you can delete cars <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="تعديل قائمة السيارات الجديدة للبيع"></asp:Label>
        <br />
        </div>
        <asp:GridView ID="GridView_SALENEW" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField HeaderText="تعديل" ShowDeleteButton="True" />
                <asp:BoundField DataField="datashow" HeaderText="تاريخ الاعلان" SortExpression="datashow" />
                <asp:BoundField DataField="company" HeaderText="الشركة" SortExpression="company" />
                <asp:BoundField DataField="model" HeaderText="الموديل" SortExpression="model" />
                <asp:BoundField DataField="datamading" HeaderText="تاريخ الصنع" SortExpression="datamading" />
                <asp:BoundField DataField="fuel" HeaderText="نوع الوقود" SortExpression="fuel" />
                <asp:BoundField DataField="geer" HeaderText="نوع الغيار" SortExpression="geer" />
                <asp:BoundField DataField="TL" HeaderText="تلفون" SortExpression="TL" />
                <asp:BoundField DataField="Mob" HeaderText="موبايل" SortExpression="Mob" />
                <asp:BoundField DataField="carplaces" HeaderText="المحافظة" SortExpression="carplaces" />
                <asp:BoundField DataField="price" HeaderText="السعر" SortExpression="price" />
                <asp:ImageField DataImageUrlField="imageUrl" HeaderText="صور">
                    <ControlStyle Height="50px" Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" DeleteCommand="DELETE FROM [salenew] WHERE [Id] = @Id" InsertCommand="INSERT INTO [salenew] ([datashow], [company], [model], [datamading], [fuel], [geer], [TL], [Mob], [carplaces], [price], [image], [imageUrl]) VALUES (@datashow, @company, @model, @datamading, @fuel, @geer, @TL, @Mob, @carplaces, @price, @image, @imageUrl)" SelectCommand="SELECT * FROM [salenew] ORDER BY [datashow]" UpdateCommand="UPDATE [salenew] SET [datashow] = @datashow, [company] = @company, [model] = @model, [datamading] = @datamading, [fuel] = @fuel, [geer] = @geer, [TL] = @TL, [Mob] = @Mob, [carplaces] = @carplaces, [price] = @price, [image] = @image, [imageUrl] = @imageUrl WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="تعديل قائمة السيارات المستعملة للبيع"></asp:Label>
        <asp:GridView ID="GridView_SALEOLD" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" datasourceid="SqlDataSource2">
            <Columns>
                <asp:CommandField HeaderText="تعديل" ShowDeleteButton="True" />
                <asp:BoundField DataField="datashow" HeaderText="تاريخ الاعلان" SortExpression="datashow" >
                <ControlStyle Width="15px" />
                </asp:BoundField>
                <asp:BoundField DataField="company" HeaderText="الشركة" SortExpression="company" />
                <asp:BoundField DataField="model" HeaderText="الموديل" SortExpression="model" />
                <asp:BoundField DataField="datamading" HeaderText="تاريخ الصنع" SortExpression="datamading" />
                <asp:BoundField DataField="fuel" HeaderText="نوع الوقود" SortExpression="fuel" />
                <asp:BoundField DataField="geer" HeaderText="نوع الغيار" SortExpression="geer" />
                <asp:BoundField DataField="TL" HeaderText="تلفون" SortExpression="TL" />
                <asp:BoundField DataField="Mob" HeaderText="موبايل" SortExpression="Mob" />
                <asp:BoundField DataField="carplaces" HeaderText="المحافظة" SortExpression="carplaces" />
                <asp:BoundField DataField="price" HeaderText="السعر" SortExpression="price" />
                <asp:BoundField DataField="passedkm" HeaderText="المسافة المقطوعة" SortExpression="passedkm" />
                <asp:ImageField DataImageUrlField="imageUrl" HeaderText="صور">
                    <ControlStyle Height="50px" Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" DeleteCommand="DELETE FROM [saleold] WHERE [Id] = @Id" InsertCommand="INSERT INTO [saleold] ([datashow], [company], [model], [datamading], [fuel], [geer], [TL], [Mob], [carplaces], [price], [passedkm], [image], [imageUrl]) VALUES (@datashow, @company, @model, @datamading, @fuel, @geer, @TL, @Mob, @carplaces, @price, @passedkm, @image, @imageUrl)" SelectCommand="SELECT * FROM [saleold] ORDER BY [datashow]" UpdateCommand="UPDATE [saleold] SET [datashow] = @datashow, [company] = @company, [model] = @model, [datamading] = @datamading, [fuel] = @fuel, [geer] = @geer, [TL] = @TL, [Mob] = @Mob, [carplaces] = @carplaces, [price] = @price, [passedkm] = @passedkm, [image] = @image, [imageUrl] = @imageUrl WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="passedkm" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="passedkm" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="تعديل قائمة السيارات الجديدة للايجار"></asp:Label>
        <asp:GridView ID="GridView_RENTNEW" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" datasourceid="SqlDataSource3">
            <Columns>
                <asp:CommandField HeaderText="تعديل" ShowDeleteButton="True" />
                <asp:BoundField DataField="datashow" HeaderText="تاريخ الاعلان" SortExpression="datashow" />
                <asp:BoundField DataField="company" HeaderText="الشركة" SortExpression="company" />
                <asp:BoundField DataField="model" HeaderText="الموديل" SortExpression="model" />
                <asp:BoundField DataField="datamading" HeaderText="تاريخ الصنع" SortExpression="datamading" />
                <asp:BoundField DataField="fuel" HeaderText="نوع الوقود" SortExpression="fuel" />
                <asp:BoundField DataField="geer" HeaderText="نوع الغيار" SortExpression="geer" />
                <asp:BoundField DataField="TL" HeaderText="تلفون" SortExpression="TL" />
                <asp:BoundField DataField="Mob" HeaderText="موبايل" SortExpression="Mob" />
                <asp:BoundField DataField="carplaces" HeaderText="المحافظة" SortExpression="carplaces" />
                <asp:BoundField DataField="price" HeaderText="السعر" SortExpression="price" />
                <asp:ImageField DataImageUrlField="imageUrl" HeaderText="صور">
                    <ControlStyle Height="50px" Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" DeleteCommand="DELETE FROM [rentnew] WHERE [Id] = @Id" InsertCommand="INSERT INTO [rentnew] ([datashow], [company], [model], [datamading], [fuel], [geer], [TL], [Mob], [carplaces], [price], [image], [imageUrl]) VALUES (@datashow, @company, @model, @datamading, @fuel, @geer, @TL, @Mob, @carplaces, @price, @image, @imageUrl)" SelectCommand="SELECT * FROM [rentnew] ORDER BY [datashow]" UpdateCommand="UPDATE [rentnew] SET [datashow] = @datashow, [company] = @company, [model] = @model, [datamading] = @datamading, [fuel] = @fuel, [geer] = @geer, [TL] = @TL, [Mob] = @Mob, [carplaces] = @carplaces, [price] = @price, [image] = @image, [imageUrl] = @imageUrl WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="تعديل قائمة السيارات المستعملة للايجار"></asp:Label>
        <asp:GridView ID="GridView_SALEOLD0" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" datasourceid="SqlDataSource4">
            <Columns>
                <asp:CommandField HeaderText="تعديل" ShowDeleteButton="True" />
                <asp:BoundField DataField="datashow" HeaderText="تاريخ الاعلان" SortExpression="datashow" >
                <ControlStyle Width="15px" />
                </asp:BoundField>
                <asp:BoundField DataField="company" HeaderText="الشركة" SortExpression="company" />
                <asp:BoundField DataField="model" HeaderText="الموديل" SortExpression="model" />
                <asp:BoundField DataField="datamading" HeaderText="تاريخ الصنع" SortExpression="datamading" />
                <asp:BoundField DataField="fuel" HeaderText="نوع الوقود" SortExpression="fuel" />
                <asp:BoundField DataField="geer" HeaderText="نوع الغيار" SortExpression="geer" />
                <asp:BoundField DataField="TL" HeaderText="تلفون" SortExpression="TL" />
                <asp:BoundField DataField="Mob" HeaderText="موبايل" SortExpression="Mob" />
                <asp:BoundField DataField="carplaces" HeaderText="المحافظة" SortExpression="carplaces" />
                <asp:BoundField DataField="price" HeaderText="السعر" SortExpression="price" />
                <asp:BoundField DataField="passedkm" HeaderText="المسافة المقطوعة" SortExpression="passedkm" />
                <asp:ImageField DataImageUrlField="imageUrl" HeaderText="صور">
                    <ControlStyle Height="50px" Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" DeleteCommand="DELETE FROM [rentold] WHERE [Id] = @Id" InsertCommand="INSERT INTO [rentold] ([datashow], [company], [model], [datamading], [fuel], [geer], [TL], [Mob], [carplaces], [price], [passedkm], [image], [imageUrl]) VALUES (@datashow, @company, @model, @datamading, @fuel, @geer, @TL, @Mob, @carplaces, @price, @passedkm, @image, @imageUrl)" SelectCommand="SELECT * FROM [rentold] ORDER BY [datashow]" UpdateCommand="UPDATE [rentold] SET [datashow] = @datashow, [company] = @company, [model] = @model, [datamading] = @datamading, [fuel] = @fuel, [geer] = @geer, [TL] = @TL, [Mob] = @Mob, [carplaces] = @carplaces, [price] = @price, [passedkm] = @passedkm, [image] = @image, [imageUrl] = @imageUrl WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="passedkm" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="datashow" Type="DateTime" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter DbType="Date" Name="datamading" />
                <asp:Parameter Name="fuel" Type="String" />
                <asp:Parameter Name="geer" Type="String" />
                <asp:Parameter Name="TL" Type="Int32" />
                <asp:Parameter Name="Mob" Type="Int32" />
                <asp:Parameter Name="carplaces" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="passedkm" Type="Int32" />
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="imageUrl" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label5" runat="server" Text="تعديل قائمة المستخدمين"></asp:Label>
        <br />
        <asp:GridView ID="GridView_USERS" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" datasourceid="SqlDataSource5">
            <Columns>
                <asp:CommandField HeaderText="تعديل" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="username" HeaderText="اسم المستخدم" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="كلمة المرور" SortExpression="password" />
                <asp:BoundField DataField="Email" HeaderText="البريد الاكتروني" SortExpression="Email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" DeleteCommand="DELETE FROM [users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [users] ([username], [Email], [password]) VALUES (@username, @Email, @password)" SelectCommand="SELECT * FROM [users] ORDER BY [username]" UpdateCommand="UPDATE [users] SET [username] = @username, [Email] = @Email, [password] = @password WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label6" runat="server" Text="تعديل قائمة الشركات"></asp:Label>
        <br />
        <asp:GridView ID="GridView_COMPANY" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="companyid" datasourceid="SqlDataSource6">
            <Columns>
                <asp:CommandField HeaderText="تعديل" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" DeleteCommand="DELETE FROM [companytable] WHERE [companyid] = @companyid" InsertCommand="INSERT INTO [companytable] ([company]) VALUES (@company)" SelectCommand="SELECT * FROM [companytable] ORDER BY [company]" UpdateCommand="UPDATE [companytable] SET [company] = @company WHERE [companyid] = @companyid">
            <DeleteParameters>
                <asp:Parameter Name="companyid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="company" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="companyid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label7" runat="server" Text="تعديل قائمة الموديلات"></asp:Label>
        <br />
        <asp:GridView ID="GridView_MODEL" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="modelid" datasourceid="SqlDataSource7">
            <Columns>
                <asp:CommandField HeaderText="تعديل" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="model" HeaderText="الموديل" SortExpression="model" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Myconnection %>" DeleteCommand="DELETE FROM [modeltable] WHERE [modelid] = @modelid" InsertCommand="INSERT INTO [modeltable] ([comp_mod_id], [model]) VALUES (@comp_mod_id, @model)" SelectCommand="SELECT * FROM [modeltable] ORDER BY [model]" UpdateCommand="UPDATE [modeltable] SET [comp_mod_id] = @comp_mod_id, [model] = @model WHERE [modelid] = @modelid">
            <DeleteParameters>
                <asp:Parameter Name="modelid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="comp_mod_id" Type="String" />
                <asp:Parameter Name="model" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="comp_mod_id" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="modelid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
             </div>
         </div>

        </div>
</asp:Content>