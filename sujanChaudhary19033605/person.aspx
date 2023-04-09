<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="person.aspx.cs" Inherits="sujanChaudhary19033605.person" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .newStyle1 {
    }
        .auto-style1 {
            margin-left: 248px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:GridView ID="GridView1" runat="server" style="margin: 30px 0px 0px 250px" CssClass="table table-table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" Height="321px" Width="876px">
            <Columns>
                <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" ReadOnly="True" SortExpression="PERSON_ID" />
                <asp:BoundField DataField="PERSON_NAME" HeaderText="PERSON_NAME" SortExpression="PERSON_NAME" />
                <asp:BoundField DataField="PHONE_NO" HeaderText="PHONE_NO" SortExpression="PHONE_NO" />
                <asp:BoundField DataField="PERSON_EMAIL" HeaderText="PERSON_EMAIL" SortExpression="PERSON_EMAIL" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" EditText="<i aria-hidden='true' class='glyphicon glyphicon-pencil'></i>" DeleteText="<i aria-hidden='true' class='glyphicon glyphicon-trash'></i>"
CancelText="<i aria-hidden='true' class='glyphicon glyphicon-remove'></i>" UpdateText="<i aria-hidden='true' class='glyphicon glyphicon-floppy-disk'></i>" />
            </Columns>
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" style="margin-top:10px" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" CssClass="auto-style1">
            <EditItemTemplate>
                PERSON_ID:
                <asp:Label ID="PERSON_IDLabel1" runat="server" Text='<%# Eval("PERSON_ID") %>' />
                <br />
                PERSON_NAME:
                <asp:TextBox ID="PERSON_NAMETextBox" runat="server" Text='<%# Bind("PERSON_NAME") %>' />
                <br />
                PHONE_NO:
                <asp:TextBox ID="PHONE_NOTextBox" runat="server" Text='<%# Bind("PHONE_NO") %>' />
                <br />
                PERSON_EMAIL:
                <asp:TextBox ID="PERSON_EMAILTextBox" runat="server" Text='<%# Bind("PERSON_EMAIL") %>' />
                <br />
                GENDER:
                <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="nav-justified" style="margin: 10px 0px 0px 200px">
                    <tr>
                        <td>PERSON_ID:</td>
                        <td>
                            <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' style="margin-bottom: 10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">PERSON_NAME:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="PERSON_NAMETextBox0" runat="server" Text='<%# Bind("PERSON_NAME") %>' style="margin-bottom: 10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>PHONE_NO:</td>
                        <td>
                            <asp:TextBox ID="PHONE_NOTextBox0" runat="server" Text='<%# Bind("PHONE_NO") %>' style="margin-bottom: 10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>PERSON_EMAIL:</td>
                        <td>
                            <asp:TextBox ID="PERSON_EMAILTextBox0" runat="server" Text='<%# Bind("PERSON_EMAIL") %>' style="margin-bottom: 10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">GENDER:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="GENDERTextBox0" runat="server" Text='<%# Bind("GENDER") %>' style="margin-bottom: 10px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success btn-md" Font-Bold="true" Text="Insert" style="margin: 0px 0px 0px 0px"
/>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger btn-md" Font-Bold="true" Text="Cancel" style="margin: 0px 0px 0px 0px"
/>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Person" CssClass="btn btn-primary btn-md" Font-Bold="true"/>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :PERSON_ID" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;Person Name&quot;, &quot;PHONE_NO&quot;, &quot;Person Email&quot;, &quot;GENDER&quot;) VALUES (:PERSON_ID, :Person_Name, :PHONE_NO, :Person_Email, :GENDER)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;Person Name&quot; AS Person_Name, &quot;PHONE_NO&quot;, &quot;Person Email&quot; AS Person_Email, &quot;GENDER&quot; FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;Person Name&quot; = :Person_Name, &quot;PHONE_NO&quot; = :PHONE_NO, &quot;Person Email&quot; = :Person_Email, &quot;GENDER&quot; = :GENDER WHERE &quot;PERSON_ID&quot; = :PERSON_ID">
            <DeleteParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                <asp:Parameter Name="Person_Name" Type="String" />
                <asp:Parameter Name="PHONE_NO" Type="String" />
                <asp:Parameter Name="Person_Email" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Person_Name" Type="String" />
                <asp:Parameter Name="PHONE_NO" Type="String" />
                <asp:Parameter Name="Person_Email" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Content>

