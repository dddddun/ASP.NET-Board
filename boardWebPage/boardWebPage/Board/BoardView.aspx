<%@ Page Title="" Language="C#" MasterPageFile="~/Bottom.master" AutoEventWireup="true" CodeBehind="BoardView.aspx.cs" Inherits="boardWebPage.Board.BoardView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <table style="width: 100%;">
        <tr>
            <td><h2 class="auto-style2">게시판 글보기</h2></td>
        </tr>
        <tr>
            <td>
                작성자: <asp:Label ID="txtname" runat="server" Text="Label"></asp:Label><br />

                작성일: <asp:Label ID="txtwritedate" runat="server" Text="Label"></asp:Label><br />
                조회수: <asp:Label ID="txtreadcnt" runat="server" Text="Label"></asp:Label><br />
            </td>
        </tr>
        <tr>
            <td>
                제&nbsp; 목:
                <asp:Label ID="txttitle" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtcontents" runat="server" TextMode="MultiLine" Height="352px" Width="845px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" Text="수정" />
                &nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="삭제" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblrefer" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbldepth" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblpos" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblnum" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReply" runat="server" OnClick="btnReply_Click" Text="답변등록" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnList" runat="server" Text="리스트" OnClick="btnList_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
