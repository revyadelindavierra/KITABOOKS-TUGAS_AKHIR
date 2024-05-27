import 'package:flutter/material.dart';

class UsernamePasswordInput extends StatefulWidget {
  const UsernamePasswordInput({Key? key}) : super(key: key);

  @override
  _UsernamePasswordInputState createState() => _UsernamePasswordInputState();
}

class _UsernamePasswordInputState extends State<UsernamePasswordInput> {
  bool _isPasswordVisible = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _usernameController,
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            prefixIcon: Icon(Icons.people),
          ),
          onEditingComplete: () {
            FocusScope.of(context).nextFocus();
          },
        ),
        SizedBox(height: 20),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            prefixIcon: Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
          ),
          obscureText: !_isPasswordVisible,
          onEditingComplete: () {
            // _submitForm();
          },
        ),
      ],
    );
  }

  void _submitForm() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    print('Username: $username');
    print('Password: $password');

    _usernameController.clear();
    _passwordController.clear();
  }
}
