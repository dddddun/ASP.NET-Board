<%@ Page Title="" Language="C#" MasterPageFile="~/Bottom.master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="boardWebPage.Public.PasswordRecovery" %>
<asp:Content ID="ctnContent" ContentPlaceHolderID="cphContent" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" BorderPadding="4">
        <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <MailDefinition From="me@my.co.kr" Subject="암호 찾기 결과 전송">
        </MailDefinition>
        <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
    </asp:PasswordRecovery>
</asp:Content>
