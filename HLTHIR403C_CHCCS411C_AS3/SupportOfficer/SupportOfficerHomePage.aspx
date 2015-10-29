<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SupportOfficerHomePage.aspx.cs" Inherits="HLTHIR403C_CHCCS411C_AS3.SupportOfficer.SupportOfficerHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Search Records: "></asp:Label>
    <asp:TextBox ID="txtSearchQuery" runat="server" Width="181px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="dropDownSearchFilter" runat="server">
        <asp:ListItem Value="customerLastName">Customer Last Name</asp:ListItem>
        <asp:ListItem Selected="True" Value="customerID">Customer ID</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IncidentID" DataSourceID="SqlDataSource1" Width="1257px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IncidentID" HeaderText="IncidentID" InsertVisible="False" ReadOnly="True" SortExpression="IncidentID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="LastModified" HeaderText="LastModified" SortExpression="LastModified" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="JobStatus" HeaderText="JobStatus" SortExpression="JobStatus" />
            <asp:BoundField DataField="SolutionApplied" HeaderText="SolutionApplied" SortExpression="SolutionApplied" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceSearchByCustLastName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Incidents.IncidentID, Incidents.CustomerID, Incidents.ProductCode, Incidents.Title, IncidentsHistory.UserID, IncidentsHistory.LastModified, IncidentsHistory.Description, IncidentsHistory.JobStatus, IncidentsHistory.SolutionApplied, Customers.FirstName, Customers.LastName, Incidents.CustomerID AS Expr1, Incidents.ProductCode AS Expr2, Incidents.Title AS Expr3 FROM Incidents INNER JOIN IncidentsHistory ON Incidents.IncidentID = IncidentsHistory.IncidentID INNER JOIN Customers ON Incidents.CustomerID = Customers.CustomerID WHERE (Customers.LastName LIKE '%' + @lastName + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearchQuery" Name="lastName" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Incidents.IncidentID, Incidents.CustomerID, Incidents.ProductCode, Incidents.Title, IncidentsHistory.LastModified, IncidentsHistory.Description, IncidentsHistory.JobStatus, IncidentsHistory.SolutionApplied, Customers.FirstName, Customers.LastName, IncidentsHistory.UserID FROM Incidents INNER JOIN IncidentsHistory ON Incidents.IncidentID = IncidentsHistory.IncidentID INNER JOIN Customers ON Incidents.CustomerID = Customers.CustomerID WHERE (Incidents.CustomerID = @custID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearchQuery" Name="custID" PropertyName="Text" />
        </SelectParameters>

    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IncidentID" DataSourceID="sqlDataSourceListIncidents" Height="50px" Width="398px">
        <Fields>
            <asp:BoundField DataField="IncidentID" HeaderText="IncidentID" InsertVisible="False" ReadOnly="True" SortExpression="IncidentID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="LastModified" HeaderText="LastModified" SortExpression="LastModified" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="JobStatus" HeaderText="JobStatus" SortExpression="JobStatus" />
            <asp:BoundField DataField="SolutionApplied" HeaderText="SolutionApplied" SortExpression="SolutionApplied" />
        </Fields>
        <HeaderTemplate>
            Selected Incident Information
        </HeaderTemplate>
    </asp:DetailsView>
    <asp:SqlDataSource ID="sqlDataSourceListIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Incidents.IncidentID, Incidents.CustomerID, Incidents.ProductCode, Incidents.Title, Customers.FirstName, Customers.LastName, IncidentsHistory.UserID, IncidentsHistory.LastModified, IncidentsHistory.Description, IncidentsHistory.JobStatus, IncidentsHistory.SolutionApplied FROM Customers INNER JOIN Incidents ON Customers.CustomerID = Incidents.CustomerID INNER JOIN IncidentsHistory ON Incidents.IncidentID = IncidentsHistory.IncidentID WHERE (Incidents.IncidentID = @incidentID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="incidentID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
&nbsp;
    <asp:Label ID="lblHiddenUserName" runat="server" Text="userName"></asp:Label>
    <br />
    <br />
</asp:Content>
