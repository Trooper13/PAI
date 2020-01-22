<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zarejestruj.aspx.cs" Inherits="Zarejestruj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Odpowiedź:" AnswerRequiredErrorMessage="Odpowiedź jest wymagana" CompleteSuccessText="Twoje konto zostało utworzone" ConfirmPasswordCompareErrorMessage="Hasła muszą pasować" ConfirmPasswordLabelText="Potwierdź hasło:" ConfirmPasswordRequiredErrorMessage="Potwierdzenie hasła jest wymagane:">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

