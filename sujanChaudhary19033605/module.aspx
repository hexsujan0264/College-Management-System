<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="module.aspx.cs" Inherits="sujanChaudhary19033605.module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" CssClass="table table-table-bordered table-hover table-responsive" 
style="margin: 34px 0px 0px 250px" runat="server" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" Height="393px" Width="883px">
    <Columns>
        <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
        <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
        <asp:BoundField DataField="CREDITHRS" HeaderText="CREDITHRS" SortExpression="CREDITHRS" />
        <asp:BoundField DataField="MODULE_TYPE" HeaderText="MODULE_TYPE" SortExpression="MODULE_TYPE" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" EditText="<i aria-hidden='true' class='glyphicon glyphicon-pencil'></i>" DeleteText="<i aria-hidden='true' class='glyphicon glyphicon-trash'></i>"
CancelText="<i aria-hidden='true' class='glyphicon glyphicon-remove'></i>" UpdateText="<i aria-hidden='true' class='glyphicon glyphicon-floppy-disk'></i>"/>
    </Columns>
</asp:GridView>
<asp:FormView ID="FormView1" style="margin-right: 0px; margin-top: 10px; margin-bottom: 0px;" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" CssClass="auto-style1">
    <EditItemTemplate>
                MODULE_CODE:
                <asp:Label ID="MODULE_CODELabel1" runat="server" Text='<%# Eval("MODULE_CODE") %>' />
        <br />
                MODULE_NAME:
                <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
        <br />
                CREDITHRS:
                <asp:TextBox ID="CREDITHRSTextBox" runat="server" Text='<%# Bind("CREDITHRS") %>' />
        <br />
                MODULE_TYPE:
                <asp:TextBox ID="MODULE_TYPETextBox" runat="server" Text='<%# Bind("MODULE_TYPE") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
                <table class="nav-justified" style="margin: 10px 0px 0px 200px">
                    <tr>
                        <td>MODULE_CODE:</td>
                        <td>
                            <asp:TextBox ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' style="margin-bottom: 10px" />
                        </td>
                    </tr>
                    <tr>
                        <td>MODULE_NAME:</td>
                        <td>
                            <asp:TextBox ID="MODULE_NAMETextBox0" runat="server" Text='<%# Bind("MODULE_NAME") %>' style="margin-bottom: 10px" />
                        </td>
                    </tr>
                    <tr>
                        <td>CREDITHRS:</td>
                        <td>
                            <asp:TextBox ID="CREDITHRSTextBox0" runat="server" Text='<%# Bind("CREDITHRS") %>' style="margin-bottom: 10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>MODULE_TYPE:</td>
                        <td>
                            <asp:TextBox ID="MODULE_TYPETextBox0" runat="server" Text='<%# Bind("MODULE_TYPE") %>' style="margin-bottom: 10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success btn-md" Font-Bold="true" Text="Insert" style="margin: 0px 0px 0px 0px"/>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger btn-md" Font-Bold="true" Text="Cancel" style="margin: 0px 0px 0px 0px" />
                        </td>
                    </tr>
                </table>
&nbsp;<br />
        <br />
                &nbsp;<br />
        <br />
                &nbsp;<br />
        <br />
                &nbsp;<br />&nbsp;<br />&nbsp;
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Module" CssClass="btn btn-primary btn-md" Font-Bold="true"/>
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDITHRS&quot;, &quot;MODULE_TYPE&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDITHRS, :MODULE_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDITHRS&quot;, &quot;MODULE_TYPE&quot; FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDITHRS&quot; = :CREDITHRS, &quot;MODULE_TYPE&quot; = :MODULE_TYPE WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
    <DeleteParameters>
        <asp:Parameter Name="MODULE_CODE" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MODULE_CODE" Type="String" />
        <asp:Parameter Name="MODULE_NAME" Type="String" />
        <asp:Parameter Name="CREDITHRS" Type="Decimal" />
        <asp:Parameter Name="MODULE_TYPE" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MODULE_NAME" Type="String" />
        <asp:Parameter Name="CREDITHRS" Type="Decimal" />
        <asp:Parameter Name="MODULE_TYPE" Type="String" />
        <asp:Parameter Name="MODULE_CODE" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
