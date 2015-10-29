<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="technician.aspx.cs" Inherits="HLTHIR403C_CHCCS411C_AS3.Technician.technician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" style="margin-left: 0px; text-align: left;" Width="100%" HorizontalAlign="Center" DataKeyNames="CustomerID,UserID1,IncidentID1" DataSourceID="SqlDataSource1" Height="20px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="IncidentID" HeaderText="IncidentID" InsertVisible="False" ReadOnly="True" SortExpression="IncidentID" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="LastModified" HeaderText="LastModified" SortExpression="LastModified" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="JobStatus" HeaderText="JobStatus" SortExpression="JobStatus" />
                <asp:BoundField DataField="SolutionApplied" HeaderText="SolutionApplied" SortExpression="SolutionApplied" />
                <asp:BoundField DataField="UserID1" HeaderText="UserID1" InsertVisible="False" ReadOnly="True" SortExpression="UserID1" />
                <asp:BoundField DataField="FirstName1" HeaderText="FirstName1" SortExpression="FirstName1" />
                <asp:BoundField DataField="LastName1" HeaderText="LastName1" SortExpression="LastName1" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="City1" HeaderText="City1" SortExpression="City1" />
                <asp:BoundField DataField="State1" HeaderText="State1" SortExpression="State1" />
                <asp:BoundField DataField="ZipCode1" HeaderText="ZipCode1" SortExpression="ZipCode1" />
                <asp:BoundField DataField="Phone1" HeaderText="Phone1" SortExpression="Phone1" />
                <asp:BoundField DataField="Email1" HeaderText="Email1" SortExpression="Email1" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                <asp:BoundField DataField="IncidentID1" HeaderText="IncidentID1" InsertVisible="False" ReadOnly="True" SortExpression="IncidentID1" />
                <asp:BoundField DataField="CustomerID1" HeaderText="CustomerID1" SortExpression="CustomerID1" />
                <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Customers.*, IncidentsHistory.*, Users.*, Incidents.* FROM Customers INNER JOIN Incidents ON Customers.CustomerID = Incidents.CustomerID INNER JOIN IncidentsHistory ON Incidents.IncidentID = IncidentsHistory.IncidentID INNER JOIN Users ON IncidentsHistory.UserID = Users.UserID WHERE (Users.FirstName = @techName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUserName" Name="techName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IncidentID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="IncidentID" HeaderText="IncidentID" InsertVisible="False" ReadOnly="True" SortExpression="IncidentID" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Incidents] WHERE ([CustomerID] = @CustomerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="CustomerID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </p>
</asp:Content>
