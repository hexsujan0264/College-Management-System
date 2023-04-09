<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="department.aspx.cs" Inherits="sujanChaudhary19033605.department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Department Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 4px;
        }
        .auto-style2 {
            width: 86%;
            height: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-table-bordered table-hover table-responsive" style="margin: 10px 0px 0px 10px" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" Height="210px" Width="965px" HorizontalAlign="Center" >
        <Columns>
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
            <asp:BoundField DataField="DEPARTMENT_CONTACT" HeaderText="DEPARTMENT_CONTACT" SortExpression="DEPARTMENT_CONTACT" />
            <asp:BoundField DataField="DEPARTMENT_ADDRESS" HeaderText="DEPARTMENT_ADDRESS" SortExpression="DEPARTMENT_ADDRESS" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" EditText="<i aria-hidden='true' class='glyphicon glyphicon-pencil'></i>" DeleteText="<i aria-hidden='true' class='glyphicon glyphicon-trash'></i>"
CancelText="<i aria-hidden='true' class='glyphicon glyphicon-remove'></i>" UpdateText="<i aria-hidden='true' class='glyphicon glyphicon-floppy-disk'></i>" />
        </Columns>
    </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" style="margin: 10px 0px 0px 10px" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            DEPARTMENT_ID:
            <asp:Label ID="DEPARTMENT_IDLabel1" runat="server" Text='<%# Eval("DEPARTMENT_ID") %>' />
            <br />
            DEPARTMENT_NAME:
            <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
            <br />
            DESIGNATION:
            <asp:TextBox ID="DESIGNATIONTextBox" runat="server" Text='<%# Bind("DESIGNATION") %>' />
            <br />
            DEPARTMENT_CONTACT:
            <asp:TextBox ID="DEPARTMENT_CONTACTTextBox" runat="server" Text='<%# Bind("DEPARTMENT_CONTACT") %>' />
            <br />
            DEPARTMENT_ADDRESS:
            <asp:TextBox ID="DEPARTMENT_ADDRESSTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ADDRESS") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style2" style="margin: 20px 0px 0px 0px">
                <tr>
                    <td class="auto-style1">DEPARTMENT_ID:</td>
                    <td>
                        <asp:TextBox ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' style="margin: 0px 0px 5px 0px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">DEPARTMENT_NAME:</td>
                    <td>
                        <asp:TextBox ID="DEPARTMENT_NAMETextBox0" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' style="margin: 0px 0px 5px 0px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">DESIGNATION:</td>
                    <td>
                        <asp:TextBox ID="DESIGNATIONTextBox0" runat="server" Text='<%# Bind("DESIGNATION") %>' style="margin: 0px 0px 5px 0px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">DEPARTMENT_CONTACT:</td>
                    <td>
                        <asp:TextBox ID="DEPARTMENT_CONTACTTextBox0" runat="server" Text='<%# Bind("DEPARTMENT_CONTACT") %>' style="margin: 0px 0px 5px 0px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">DEPARTMENT_ADDRESS:</td>
                    <td>
                        <asp:TextBox ID="DEPARTMENT_ADDRESSTextBox0" runat="server" Text='<%# Bind("DEPARTMENT_ADDRESS") %>' style="margin: 0px 0px 5px 0px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success btn-md" Font-Bold="true" Text="Insert" style="margin: 0px 0px 0px 0px"/>
                        &nbsp;
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger btn-md" Font-Bold="true" Text="Cancel" style="margin: 0px 0px 0px 0px" />
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            &nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Department" CssClass="btn btn-primary btn-md" Font-Bold="true"/>
        </ItemTemplate>
    </asp:FormView>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DESIGNATION&quot;, &quot;DEPARTMENT_CONTACT&quot;, &quot;DEPARTMENT_ADDRESS&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :DESIGNATION, :DEPARTMENT_CONTACT, :DEPARTMENT_ADDRESS)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DESIGNATION&quot;, &quot;DEPARTMENT_CONTACT&quot;, &quot;DEPARTMENT_ADDRESS&quot; FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DESIGNATION&quot; = :DESIGNATION, &quot;DEPARTMENT_CONTACT&quot; = :DEPARTMENT_CONTACT, &quot;DEPARTMENT_ADDRESS&quot; = :DEPARTMENT_ADDRESS WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DESIGNATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT_CONTACT" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ADDRESS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DESIGNATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT_CONTACT" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ADDRESS" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
<br />
<br />
</asp:Content>
