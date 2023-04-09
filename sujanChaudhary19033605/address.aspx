<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="address.aspx.cs" Inherits="sujanChaudhary19033605.adress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 248px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" style="margin: 20px 0px 0px 250px" CssClass="table table-table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" Height="257px" Width="793px">
        <Columns>
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="ADDRESS_NAME" HeaderText="ADDRESS_NAME" SortExpression="ADDRESS_NAME" />
            <asp:BoundField DataField="PROVINCE" HeaderText="PROVINCE" SortExpression="PROVINCE" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" EditText="<i aria-hidden='true' class='glyphicon glyphicon-pencil'></i>" DeleteText="<i aria-hidden='true' class='glyphicon glyphicon-trash'></i>"
CancelText="<i aria-hidden='true' class='glyphicon glyphicon-remove'></i>" UpdateText="<i aria-hidden='true' class='glyphicon glyphicon-floppy-disk'></i>" />
        </Columns>
    </asp:GridView>
    <asp:FormView ID="FormView1" runat="server" style="margin: 10px 0px 0px 220px" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" CssClass="auto-style1">
        <EditItemTemplate>
            ADDRESS_ID:
            <asp:Label ID="ADDRESS_IDLabel1" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
            <br />
            ADDRESS_NAME:
            <asp:TextBox ID="ADDRESS_NAMETextBox" runat="server" Text='<%# Bind("ADDRESS_NAME") %>' />
            <br />
            PROVINCE:
            <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="nav-justified" style="margin: 0px 0px 0px 250px">
                <tr>
                    <td>ADDRESS_ID:</td>
                    <td>
                        <asp:TextBox ID="ADDRESS_IDTextBox" runat="server" Text='<%# Bind("ADDRESS_ID") %>' style="margin-bottom: 5px"/>
                    </td>
                </tr>
                <tr>
                    <td>ADDRESS_NAME:</td>
                    <td>
                        <asp:TextBox ID="ADDRESS_NAMETextBox" runat="server" Text='<%# Bind("ADDRESS_NAME") %>' style="margin-bottom: 5px"/>
                    </td>
                </tr>
                <tr>
                    <td>PROVINCE:</td>
                    <td>
                        <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' style="margin-bottom: 5px"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success btn-md" Font-Bold="true" Text="Insert" style="margin: 0px 0px 0px 0px"/>
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger btn-md" Font-Bold="true" Text="Cancel" style="margin: 0px 0px 0px 0px"/>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Address" CssClass="btn btn-primary btn-md" Font-Bold="true" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;ADDRESS_NAME&quot;, &quot;PROVINCE&quot;) VALUES (:ADDRESS_ID, :ADDRESS_NAME, :PROVINCE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;ADDRESS_ID&quot;, &quot;ADDRESS_NAME&quot;, &quot;PROVINCE&quot; FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;ADDRESS_NAME&quot; = :ADDRESS_NAME, &quot;PROVINCE&quot; = :PROVINCE WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
        <DeleteParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            <asp:Parameter Name="ADDRESS_NAME" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ADDRESS_NAME" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
