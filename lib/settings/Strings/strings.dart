class Strings {
  String strEmail;
  String senha;
  String login;
  String loginWithGoogle;
  String dontHaveAccount;
  String forgetPassword;
  String subscribe;
  String resetPassword;
  Strings(
      {this.strEmail = 'E-mail',
      this.senha = 'Senha',
      this.login = 'Login',
      this.loginWithGoogle = 'Entrar com Google',
      this.dontHaveAccount = 'Ainda não tem conta?',
      this.subscribe = 'Inscreva-se',
      this.forgetPassword = 'Esqueceu sua senha?',
      this.resetPassword = 'Recuperar Senha'});

  static Strings get strings {
    return Strings();
  }
}
