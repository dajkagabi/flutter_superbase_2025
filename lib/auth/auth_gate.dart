//Auth Gate
//unauthenticated = Login Page
//authenticated = Profile Page

import 'package:flutter/material.dart';
import 'package:flutter_superbase_2025/pages/login_page.dart';
import 'package:flutter_superbase_2025/pages/profile_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //Listen
      stream: Supabase.instance.client.auth.onAuthStateChange,

      //Builder
      builder: (context, snapshot) {
        //
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        //loading state
        final session = snapshot.hasData ? snapshot.data?.session : null;
        if (session != null) {
          return const ProfilePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
