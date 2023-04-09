<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="assignment.aspx.cs" Inherits="sujanChaudhary19033605.assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" style="margin: 20px 0px 0px 20px"  AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="&quot;PERSONNAME&quot;||'-'||PERSON_ID" DataValueField="STUDENT_ID" Height="16px" Width="191px" >
    </asp:DropDownList>
    <asp:GridView ID="GridView1" style="margin: 34px 0px 0px 200px" CssClass="table table-table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="ASSIGNMENT_TYPE,STUDENT_ID,MODULE_CODE" DataSourceID="SqlDataSource1" Height="16px" >
        <Columns>
            <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" ReadOnly="True" SortExpression="ASSIGNMENT_TYPE" />
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" ReadOnly="True" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
            <asp:BoundField DataField="ATTENDANCE_ID" HeaderText="ATTENDANCE_ID" SortExpression="ATTENDANCE_ID" />
            <asp:TemplateField HeaderText="Result_Status">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" disabled="true" runat="server" DataSourceID="SqlDataSource3" DataTextField="STATUS" DataValueField="GRADE" SelectedValue='<%# Bind("GRADE") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="Select grade, status from grade"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select assignment.assignment_type, assignment.student_id, person.&quot;Person Name&quot; as STUDENT_NAME, 
assignment.module_code, module.Module_Name,assignment.grade, assignment.department_id,
department.department_name, assignment.attendance_id from department
join assignment
on department.department_id=assignment.department_id
join module
on assignment.module_code=module.module_code
join module_student
on module.module_code=module_student.module_code
join student
on module_student.student_id=student.student_id
join person
on student.student_id=person.person_id
where student.student_id=:student">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="student" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot;||'-'||person_id, student_id from person join student on person.person_id = student.student_id"></asp:SqlDataSource>
    <br />
</asp:Content>
