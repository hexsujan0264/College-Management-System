<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="teacherModuleMapping.aspx.cs" Inherits="sujanChaudhary19033605.teacherModuleMapping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="&quot;PERSONNAME&quot;||'-'||PERSON_ID" DataValueField="TEACHER_ID" Height="16px" Width="165px" style="margin-left: 71px">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" CssClass="table table-table-bordered table-hover table-responsive" style="margin: 34px 0px 0px 260px" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID,MODULE_CODE" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="61px" Width="943px">
        <Columns>
            <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
            <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
            <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
            <asp:BoundField DataField="JOINING_DATE" HeaderText="JOINING_DATE" SortExpression="JOINING_DATE" />
            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" ReadOnly="True" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="MODULE_TYPE" HeaderText="MODULE_TYPE" SortExpression="MODULE_TYPE" />
            <asp:BoundField DataField="CREDITHRS" HeaderText="CREDITHRS" SortExpression="CREDITHRS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select teacher.teacher_id, person.&quot;Person Name&quot; as TEACHER_NAME, teacher.salary, teacher.joining_date, module.module_code, module.module_name, module.module_type, 
module.credithrs from module
join module_teacher
on module.module_code=module_teacher.module_code
join teacher
on module_teacher.teacher_id=teacher.teacher_id
join person
on teacher.teacher_id=person.person_id
where teacher.teacher_id=:teacher">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="teacher" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select &quot;Person Name&quot;||'-'||person_id,teacher_id from person join teacher on person.person_id = teacher.teacher_id"></asp:SqlDataSource>
</asp:Content>

