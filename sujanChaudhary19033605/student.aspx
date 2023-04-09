<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="sujanChaudhary19033605.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Student Page</title>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:GridView ID="GridView1" style="margin:34px 0px 0px 250px" CssClass="table table-table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" Height="179px" Width="1034px">
            <Columns>
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                <asp:TemplateField HeaderText="STUDENT_NAME">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" Enabled="false" DataSourceID="SqlDataSource3" DataTextField="PERSON_NAME" DataValueField="PERSON_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="STUDENT_FACULTY" HeaderText="STUDENT_FACULTY" SortExpression="STUDENT_FACULTY" />
                <asp:BoundField DataField="YEAR" HeaderText="YEAR" SortExpression="YEAR" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" EditText="<i aria-hidden='true' class='glyphicon glyphicon-pencil'></i>" DeleteText="<i aria-hidden='true' class='glyphicon glyphicon-trash'></i>"
CancelText="<i aria-hidden='true' class='glyphicon glyphicon-remove'></i>" UpdateText="<i aria-hidden='true' class='glyphicon glyphicon-floppy-disk'></i>" />
            </Columns>
        </asp:GridView>
    <asp:FormView ID="FormView1" style="margin: 10px 0px 0px 250px" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                STUDENT_ID:
                <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                <br />
                STUDENT_FACULTY:
                <asp:TextBox ID="STUDENT_FACULTYTextBox" runat="server" Text='<%# Bind("STUDENT_FACULTY") %>' />
                <br />
                YEAR:
                <asp:TextBox ID="YEARTextBox" runat="server" Text='<%# Bind("YEAR") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="nav-justified" style=" margin: 0px 0px 0px 0px">
                    <tr>
                        <td class="text-left">STUDENT_ID: </td>
                        <td class="text-left">
                            <asp:DropDownList ID="DropDownList1" style=" margin: 0px 5px 0px 5px" runat="server" DataSourceID="SqlDataSource2" DataTextField="&quot;PERSONNAME&quot;||'-'||PERSON_ID" DataValueField="PERSON_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                        </td>
                        <td class="text-justify" style="margin-left:10px">STUDENT_FACULTY:</td>
                        <td class="text-left">
                            <asp:TextBox ID="STUDENT_FACULTYTextBox0" runat="server" Text='<%# Bind("STUDENT_FACULTY") %>' style=" margin: 0px 0px 3px 5px"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left">&nbsp;</td>
                        <td class="text-left">&nbsp;</td>
                        <td class="text-justify" style="margin-left:10px">YEAR: </td>
                        <td class="text-left">
                            <asp:TextBox ID="YEARTextBox0" runat="server" Text='<%# Bind("YEAR") %>' style="margin-left:5px"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left">&nbsp;</td>
                        <td class="text-left">&nbsp;</td>
                        <td class="text-left">&nbsp;</td>
                        <td class="text-left">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-left">&nbsp;</td>
                        <td class="text-left">
                            &nbsp;</td>
                        <td class="text-left">
                            &nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success btn-md" Font-Bold="true" style="margin: 0px 0px 0px 0px" Text="Insert" Width="70px" />
                        </td>
                        <td class="text-left">
                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger btn-md" Font-Bold="true" style="margin: 0px 0px 0px 0px" Text="Cancel" Width="70px" />
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;<br />&nbsp;<br />
                <br />
                &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot; ||'-'||person_id,person_id from person where person_id not in (select student_id from student)"></asp:SqlDataSource>
            </InsertItemTemplate>
            <ItemTemplate>
               <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add new student" CssClass="btn btn-primary btn-md" Font-Bold="true" />
            </ItemTemplate>
        </asp:FormView>
</div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_FACULTY&quot;, &quot;YEAR&quot;) VALUES (:STUDENT_ID, :STUDENT_FACULTY, :YEAR)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_FACULTY&quot;, &quot;YEAR&quot; FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;STUDENT_FACULTY&quot; = :STUDENT_FACULTY, &quot;YEAR&quot; = :YEAR WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                <asp:Parameter Name="STUDENT_FACULTY" Type="String" />
                <asp:Parameter Name="YEAR" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STUDENT_FACULTY" Type="String" />
                <asp:Parameter Name="YEAR" Type="String" />
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot; AS Person_Name, &quot;PERSON_ID&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>
    </asp:Content>

