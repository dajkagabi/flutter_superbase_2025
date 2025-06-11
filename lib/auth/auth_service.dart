import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _suspabase = Supabase.instance.client;

  //Sign in method, email-password
  Future<AuthResponse> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    return await _suspabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  //Sign up method, email-password
  Future<AuthResponse> signUpWithEmailPassword(
    String email,
    String password,
  ) async {
    return await _suspabase.auth.signUp(email: email, password: password);
  }

  //Sign out method
  Future<void> signOut() async {
    await _suspabase.auth.signOut();
  }

  //Get user method email
  String? getCurrentUserEmail() {
    final session = _suspabase.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
}
