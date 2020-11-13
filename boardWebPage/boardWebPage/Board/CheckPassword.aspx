<%@ Page Title="" Language="C#" MasterPageFile="~/Bottom.master" AutoEventWireup="true" CodeBehind="CheckPassword.aspx.cs" Inherits="boardWebPage.Board.CheckPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <table style="width: 100%;">
            <tr>
                <td colspan="2"><h3>비밀번호 확인</h3></td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>
                <td>비밀번호 : </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                    <asp:Button ID="btnConfirm" runat="server" Text="확인" OnClick="btnConfirm_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnList" runat="server" Text="리스트" OnClick="btnList_Click" />
                </td>
            </tr>
        </table>
</asp:Content>
