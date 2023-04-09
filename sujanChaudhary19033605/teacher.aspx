<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="sujanChaudhary19033605.teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Teacher Page</title>
     <style type="text/css">
         .auto-style1 {
             margin-right: 0px;
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container" >
        <asp:GridView ID="GridView1" runat="server" style="margin: 30px 0px 0px 100px" CssClass="table table-table-bordered table-hover table-responsive auto-style1" DataSourceID="SqlDataSource1" Height="262px" Width="604px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID">
        <Columns>
            <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
            <asp:TemplateField HeaderText="Teacher_Name">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" disabled="true" runat="server" DataSourceID="SqlDataSource3" DataTextField="PERSON_NAME" DataValueField="PERSON_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
            <asp:BoundField DataField="JOINING_DATE" HeaderText="JOINING_DATE" SortExpression="JOINING_DATE" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  EditText="<i aria-hidden='true' class='glyphicon glyphicon-pencil'></i>" DeleteText="<i aria-hidden='true' class='glyphicon glyphicon-trash'></i>"
CancelText="<i aria-hidden='true' class='glyphicon glyphicon-remove'></i>" UpdateText="<i aria-hidden='true' class='glyphicon glyphicon-floppy-disk'></i>"/>
        </Columns>
</asp:GridView>
        <asp:FormView ID="FormView1" runat="server" style="margin: 10px 0px 0px 100px" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
                TEACHER_ID:
                <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
        <br />
                SALARY:
                <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
        <br />
                JOINING_DATE:
                <asp:TextBox ID="JOINING_DATETextBox" runat="server" Text='<%# Bind("JOINING_DATE") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td>TEACHER_ID:</td>
                        <td>
                            <asp:TextBox ID="TEACHER_IDTextBox" runat="server" Text='<%# Bind("TEACHER_ID") %>' style="margin-bottom:5px" />
                        </td>
                    </tr>
                    <tr>
                        <td>SALARY:</td>
                        <td>
                            <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' style="margin-bottom:5px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>JOINING_DATE:</td>
                        <td>
                            <asp:TextBox ID="JOINING_DATETextBox" runat="server" Text='<%# Bind("JOINING_DATE") %>' style="margin-bottom:5px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success btn-md" Font-Bold="true" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger btn-md" Font-Bold="true" Text="Cancel" />
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;
    </InsertItemTemplate>
    <ItemTemplate>
      <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Teacher" CssClass="btn btn-primary btn-md" Font-Bold="true" />
    </ItemTemplate>
</asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot; AS Person_Name, &quot;PERSON_ID&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>
    </div>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot; ||'-'||person_id,person_id from person where person_id not in (select teacher_id from teacher)"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;SALARY&quot;, &quot;JOINING_DATE&quot;) VALUES (:TEACHER_ID, :SALARY, :JOINING_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;SALARY&quot;, &quot;JOINING_DATE&quot; FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;SALARY&quot; = :SALARY, &quot;JOINING_DATE&quot; = :JOINING_DATE WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
    <DeleteParameters>
        <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
        <asp:Parameter Name="SALARY" Type="String" />
        <asp:Parameter Name="JOINING_DATE" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="SALARY" Type="String" />
        <asp:Parameter Name="JOINING_DATE" Type="DateTime" />
        <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
       
</asp:Content>
