class Strings {
  String strEmail;
  String senha;
  String login;
  String loginWithGoogle;
  String dontHaveAccount;
  String subscribe;
  Strings({
    this.strEmail = 'E-mail',
    this.senha = 'Senha',
    this.login = 'Login',
    this.loginWithGoogle = 'Login com Google',
    this.dontHaveAccount = 'Ainda não tem conta?',
    this.subscribe = 'Inscreva-se',
  });

  static Strings get strings {
    return Strings();
  }
}
