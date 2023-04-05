import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

ConfirmationResult? confirmationResult;
bool codesend = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Электронная почта',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                hintText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  signInEmail(_emailController.text, _passwordController.text);
                },
                child: const Text(
                  'Авторизация',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              child: TextButton(
                onPressed: () {
                  signInAnon();
                },
                child: const Text(
                  'Авторизироваться анонимно',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 300,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()));
                },
                child: const Text(
                  'Регистрация',
                  style: TextStyle(fontSize: 18),
                ),
                
              ),

              )
          ],
        ),
      ),
    );
  }

  Future<void> signInEmail(String email, String password) async {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ResultPage())));
  }

  
  void signInAnon() {
    FirebaseAuth.instance.signInAnonymously().then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ResultPage())));
  }

}

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("Страница для авторизированных пользователей")),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Электронная почта',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  signUpEmail(_emailController.text, _passwordController.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage(
                                title: "Главная страница",
                              )));
                },
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }

  void signUpEmail(String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }
}