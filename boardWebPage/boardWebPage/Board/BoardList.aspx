<%@ Page Title="" Language="C#" MasterPageFile="~/Bottom.master" AutoEventWireup="true" CodeBehind="BoardList.aspx.cs" Inherits="boardWebPage.Board.BoardList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <table style="width: 100%;">
        <tr>
            <td><h3 style="text-align: center">게시판 리스트</h3></td>
        </tr>
        <tr>
            <td> 
                <div class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="num" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="735px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EmptyDataTemplate>
                            등록된 게시물이 없습니다.
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField DataField="num" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="num" />
                            <asp:TemplateField HeaderText="제목">
                                <ItemTemplate>
                                <%# SetSpace((int)Eval("depth")) %>
                                    <a href="<%# "BoardView.aspx?No=" + Eval("num") %>">
                                        <%# Eval("title") %>
                                    </a>
                                </ItemTemplate>
                                <HeaderStyle Width  ="250px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="작성자" SortExpression="name" />
                            <asp:BoundField DataField="writedate" HeaderText="작성일" SortExpression="writedate" />
                            <asp:BoundField DataField="readcnt" HeaderText="조회수" SortExpression="readcnt" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>  
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT [num], [title], [name], [writedate], [readcnt], [refer], [depth], [pos] FROM [RetblBrd] ORDER BY [refer] DESC, [pos]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnWrite" runat="server" Text="글쓰기"  OnClick ="btnWrite_Click"/></td>
        </tr>
    </table>
</asp:Content>
