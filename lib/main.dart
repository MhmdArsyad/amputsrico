import 'package:flutter/material.dart';
import 'dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IntroPage (),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45),),
              const SizedBox(height: 11,),
              const Text(
                'Silahkan login terlebih dahulu',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,),
              const SizedBox(height: 65),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(
                        color: Color.fromARGB(37, 0, 0, 0),
                        blurRadius: 10,
                        spreadRadius: 2,
                      )],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Rico',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold,),),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(
                        color: Color.fromARGB(37, 0, 0, 0),
                        blurRadius: 10,
                        spreadRadius: 2,
                      )],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility_off_rounded)
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Ingat saya', style: TextStyle(
                        fontSize: 12
                      ),),
                    ],
                  ),
                  const Text('Lupa Password?', style: TextStyle(
                        fontSize: 12
                      ),),
                ],
              ),
              const SizedBox(height: 32,),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard(),
                    )
                    );
                  },
                  child: const Text('Login'),
                  ),
                ),
              const SizedBox(height: 45,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum memiliki akun?"),
                  SizedBox(width: 5),
                  Text("Registrasi", style: TextStyle(color: Colors.blue)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}