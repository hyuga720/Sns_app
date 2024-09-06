import 'package:flutter/material.dart';
import 'package:sns_app/login_page.dart';
import 'package:sns_app/sign_up_page.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                  ),
                  );
                },
                child: const Text('新規登録'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: const Text('ログイン'),
            )
          ],
        ),
      ),
    );
  }
}
