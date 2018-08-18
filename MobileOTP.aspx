<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileOTP.aspx.cs" Inherits="MobileOTP.MobileOTP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style2 {
			width: 190px;
		}
		.auto-style3 {
			width: 190px;
			height: 26px;
		}
		.auto-style4 {
			height: 26px;
		}
		.auto-style5 {
			width: 189px;
		}
		.auto-style6 {
			width: 100%;
			background-color: #993399;
		}
		.auto-style7 {
			background-color: #CC3399;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
		<asp:Panel ID="Panel2" runat="server" Height="85px" Width="413px">
			<table class="auto-style6">
				<tr>
					<td class="auto-style2">Enter your mobile no</td>
					<td>
						<asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3">&nbsp;</td>
					<td class="auto-style4">
						<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Send OTP" />
					</td>
				</tr>
			</table>
		</asp:Panel>
		<asp:Panel ID="Panel3" runat="server" CssClass="auto-style7" Height="57px" Width="399px">
			<table class="auto-style1">
				<tr>
					<td class="auto-style5">Enter the OTP</td>
					<td>
						<asp:TextBox ID="TextBox2" runat="server" Width="175px"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style5">&nbsp;</td>
					<td>
						<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="VERIFY" />
					</td>
				</tr>
			</table>
		</asp:Panel>
		<asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="Label"></asp:Label>
	</form>
</body>
</html>
