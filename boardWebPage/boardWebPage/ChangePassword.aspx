<%@ Page Title="" Language="C#" MasterPageFile="~/Bottom.master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="boardWebPage.Public.ChangePassword" %>
<asp:Content ID="ctnContent" ContentPlaceHolderID="cphContent" runat="server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" CancelDestinationPageUrl="~/index.aspx" ContinueDestinationPageUrl="~/index.aspx" Font-Names="Verdana" Font-Size="0.8em" BorderPadding="4">
        <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
    </asp:ChangePassword>
</asp:Content>
