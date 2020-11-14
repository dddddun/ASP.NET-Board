<%@ Page Title="" Language="C#" MasterPageFile="~/Bottom.master" AutoEventWireup="true" CodeBehind="BoardReply.aspx.cs" Inherits="boardWebPage.Board.BoardReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2"><h2>게시판 글쓰기</h2></td>
        </tr>
        <tr>
            <td style="width: 90px">작성자:</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="222px"></asp:TextBox>
                *필수
            </td>
        </tr>
        <tr>
            <td style="width: 90px">비밀번호:</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="222px"></asp:TextBox>
                <br />
                *필수(게시물 수정, 삭제시 필요)</td>
        </tr>
        <tr>
            <td style="width: 90px">E-mail:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="294px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2"><hr /></td>
        </tr>
        <tr>
            <td style="width: 90px">글제목:</td>
            <td>
                <asp:TextBox ID="txttitle" runat="server" Width="392px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 90px">글내용:</td>
            <td>
                <asp:TextBox ID="txtcontents" runat="server" Height="312px" Width="400px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
                <asp:Label ID="lblnum" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;
                <asp:Label ID="lblrefer" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;
                <asp:Label ID="lbldepth" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;
                <asp:Label ID="lblpos" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;
                <asp:Button ID="btnWrite" runat="server" Text="답글 등록" OnClick="btnWrite_Click" />
                &nbsp;
                <asp:Button ID="btnList" runat="server" Text="리스트" OnClick="btnList_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
