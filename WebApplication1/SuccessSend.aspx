<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuccessSend.aspx.cs" Inherits="WebApplication1.SuccessSend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<h1><asp:Label runat="server" CssClass="label label-success"><asp:Literal runat="server" Text="<%$Resources:Resource,Success send%>"></asp:Literal></asp:Label></h1>
	<script>
		window.onload = function ClearLocalStorage() {
			if (typeof (Storage) !== "undefined") {
				localStorage.removeItem("EmailTextBox");
				localStorage.setItem('MessageTextBox', "");
				}
		}
	</script>
</asp:Content>

