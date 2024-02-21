import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();

  signUpWithEmail() {
    print('Sing Up');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 229, 248),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Welcome to our community',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 104, 37, 37),
                ),
              ),
              Text(
                '\nTo get started, please provide your information and create an account.\n', // \n คือขึ้นบรรทัดใหม่
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 104, 37, 37),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: nameController,
                hintText: 'Enter your name.',
                obscureText: false,
                labelText: 'Name',
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your email.',
                obscureText: false,
                labelText: 'Email',
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password.',
                obscureText: true,
                labelText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: repasswordController,
                hintText: 'Enter your password again.',
                obscureText: true,
                labelText: 'Re-password',
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(onTap: signUpWithEmail, hinText: 'Sign up'),
              const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have a member ?',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 104, 37, 37),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(), //เมื่อกด register จะ push ไปหน้า sign up
                          ),
                        );
                      },
                      child: Text(
                        'Sign in.',
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 255, 13, 203),
                        ),
                      ),
                    ),
                  ],
                ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
