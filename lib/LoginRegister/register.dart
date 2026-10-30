import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginRegister/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _civilStatusController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();

  void _register() {
    if(_fullnameController.text.isEmpty ||
    _usernameController.text.isEmpty || 
    _passwordController.text.isEmpty || 
    _confirmController.text.isEmpty ||  
    _genderController.text.isEmpty || 
    _civilStatusController.text.isEmpty || 
    _birthdateController.text.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please fill in all required fields.')),
      );  
      return;
  }

  if (_passwordController.text != _confirmController.text) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Passwords do not match. Please try again.')),
      );
      return;
  }

  Navigator.push(context, MaterialPageRoute(
      builder: (context) => LoginPage(),
    ),
  );

}


  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
