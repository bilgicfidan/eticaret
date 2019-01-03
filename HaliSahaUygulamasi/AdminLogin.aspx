<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HaliSahaUygulamasi.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Halı Saha - Yönetici Girişi</title>
    <link href="AdminTemplate/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="AdminTemplate/css/datepicker3.css" rel="stylesheet"/>
    <link href="AdminTemplate/css/styles.css" rel="stylesheet"/>
</head>
<body>
        <div class="row">
        <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
            <div class="login-panel panel">
                <div class="panel-heading">Yönetici Girişi</div>
                <div class="panel-body">
                    <form role="form" runat="server">
                        <fieldset>
                            <div class="form-group">
                                <asp:TextBox ID="mail" class="form-control" placeholder="E-mail" runat="server" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="password" class="form-control" placeholder="Parola" runat="server" TextMode="Password" ></asp:TextBox>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <asp:CheckBox ID="remember" runat="server" value="Remember Me"/>Beni Hatırla
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <asp:CheckBox ID="sifremiunuttum" runat="server" value="sifremi unuttum"/>Şifremi unuttum!
                                </label>
                            </div>
                            <asp:Button ID="YoneticiLogin" class="btn btn-primary" runat="server" Text="Giriş" OnClick="btnYoneticiLoginClick"></asp:Button>
                            <br />
                            <asp:Label ID="LabelLogin" runat="server" Visible="false" Text="Label"></asp:Label>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <!-- /.col-->
    </div>
    <script src="AdminTemplate/js/jquery-1.11.1.min.js"></script>
    <script src="AdminTemplate/js/bootstrap.min.js"></script>
</body>
</html>
