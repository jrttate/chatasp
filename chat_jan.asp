<!--#include file="chat_conecta.asp"-->
<%
dim apelido
Dim Acao(22)
dim cor, cor1 ,cor2
dim reservado 
dim pra
dim res1
dim sql 
dim rs
dim style
dim i 

apelido=replace(request.Cookies("apelido")," ","&nbsp;")
cor=server.urlencode(request.Cookies("cor"))
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<title>CHATASP - Bate Papo</title>
	<link href="css/chat_css.css" rel="stylesheet" type="text/css">
	<link href="css/chat_users.css" rel="stylesheet" type="text/css">
	<script src="js/ajax.js" type="text/javascript"></script>
	<script src="js/users.js" type="text/javascript"></script>
	<script src="js/msg.js" type="text/javascript"></script>
</head>	
<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F4F4F4">
  <tr> 
    <td height="80" colspan="2">
	
	<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" class="tabelas"> 
		<tr>
			<td width="205">
				<div align="center"><img src="imagens/pmb_topo_logo.png" width="200" height="80"></div>			</td>
		    <td width="430">
				<div align="center">BANNER</div>			</td>
			<td width="116">
				<div align="center" class="texto_simples">
					<input name="rolar" id="rolar" type="checkbox" checked><br>Rolagem Automatica<br>
				</div>			</td>
		</tr>
	</table>    </td>
  </tr>
  <tr> 
    <td width="84%" height="100%" valign="top"> <iframe frameborder="1" width="100%" height="100%" scrolling="yes" src="chat_msgs.asp" name="meio" id="meio" allowtransparency="true"></iframe> 
    </td>
    <td width="170" valign="top"> 
		<div id="users" style="height:420px;width:100%;overflow:auto"></div>
	</td>
  </tr>
  
  <tr> 
    <td height="90" colspan="2">
		<!--#include file="chat_menu.asp" -->
    </td>
  </tr>
</table>
<script>
	makePOSTRequest('chat_users.asp', 'act', 'users');
	reset_users();
</script>
</body>
</html>
<!--#include file="chat_close.asp"-->