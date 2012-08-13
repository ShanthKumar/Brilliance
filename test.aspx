<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns >
                <asp:TemplateField HeaderText="Staff Persomal Details">
                <ItemTemplate>
                Name:<%# Eval("first_name")%><%# Eval("last_name")%><br />Gender  :<%# Eval("gender")%><br />DOB:<%# Eval("dob")%> 
                </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Staff Contatct Details">
                <ItemTemplate>
                MOBILE NUMBER:<%# Eval("mobile1")%><br />Address  :<%# Eval("address")%><br /><%# Eval("pincode")%>
                            
                </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Organization Details">
                <ItemTemplate>
             <font color="green">   Date Of Joining:</font><%# Eval("dataofjoining")%><br />Salary :<%# Eval("salary")%><br />Subject :<%# Eval("subject")%><br />Type :<%# Eval("Type")%><br />Status :<%# Eval("Status")%><br />       
                </ItemTemplate>
                </asp:TemplateField>
               
            </Columns>

            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>
    </div>
    </form>
</body>
</html>
