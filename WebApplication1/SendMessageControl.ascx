<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SendMessageControl.ascx.cs" Inherits="WebApplication1.SendMessageControl" %>

<div class="container-fluid">


			<div class="col-lg-12">
				<div>
					<asp:Label ID="Label1" runat="server" Text="<%$Resources:Resource,Email receiver%>" CssClass="label label-default"></asp:Label></br>
					<asp:TextBox runat="server" ID="EmailTextBox" MaxLength="30" Rows="1" CssClass="form-control" OnTextChanged="EmailTextBox_TextChanged" Width="20%" onkeyup="rememberEmail()" ></asp:TextBox> 
					<asp:Label runat="server" ID="EmailError" Enabled="False" Visible="False" CssClass="text-danger"></asp:Label>
				</div>

				</div>
			<div>	
			<div class="col-lg-12">
				<asp:TextBox runat="server" ID="MessageTextBox" Rows="10" TextMode="MultiLine"  OnTextChanged="MessageTextBox_TextChanged" Width="100%" Font-Size="Medium" CssClass="form-control" onkeyup="rememberMessage()" ></asp:TextBox>
				<div>
					<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="<%$Resources:Resource,Send%>"  CssClass="btn btn-primary" />
				</div>	
			</div>
					
			</div>
	</div>

<script src="Scripts/MyScript.js"></script>


