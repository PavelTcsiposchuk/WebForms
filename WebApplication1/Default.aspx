<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>
<%@ Register Src="~/SendMessageControl.ascx" TagName="WebControl" TagPrefix="IWebControl"  %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


		
<IWebControl:WebControl ID="Main" runat="server"></IWebControl:WebControl>
		



</asp:Content>
