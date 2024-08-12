abstract interface class AuthenticationRepository {
  Future<String> signInWithGoogle();

  Future<bool> isUserLoggedIn();
}