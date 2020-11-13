<%@ Page Title="" Language="C#" MasterPageFile="~/Bottom.master" AutoEventWireup="true" CodeBehind="BoardModify.aspx.cs" Inherits="boardWebPage.Board.BoardModify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <table style="width: 800px;">
        <tr>
            <td colspan="2"><h3>게시판 글 수정하기</h3></td>
        </tr>
        <tr>
            <td colspan="2"><hr /></td>
        </tr>
        <tr>
            <td>작성자 :</td>
            <td>
                <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"><hr /></td>
        </tr>
        <tr>
            <td>글제목 :</td>
            <td>
                <asp:TextBox ID="txttitle" runat="server" Width="617px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2"><hr /></td>
        </tr>
        <tr>
            <td>글내용 :</td>
            <td>
                <asp:TextBox ID="txtcontents" runat="server" Height="295px" Width="619px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2"><hr /></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="게시물 수정" OnClick="btnUpdate_Click" />
                &nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="수정 취소" OnClick="btnCancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
