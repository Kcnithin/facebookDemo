import 'package:fb_demo/sections/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _errorMessage = 'Username and Password does not match';
  final _errorPassword = 'Password Must Contain atleast 5 characters';

  @override
  Widget build(BuildContext context) {
    getSaved(context);
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'User Name',
                        hintText: "Enter Your User Name",
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Password',
                          hintText: "Enter Your Password"),
                    ),
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () async {
                          final sharedPreference =
                              await SharedPreferences.getInstance();
                          sharedPreference.setString(
                              'username', nameController.text);

                          if (nameController.text == "nithin" &&
                              passwordController.text == "12345") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Main()));
                          } else if (nameController.text == "nithin" &&
                              passwordController.text.length < 5) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.red,
                                margin: EdgeInsets.all(10),
                                content: Text(_errorPassword)));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.red,
                                margin: EdgeInsets.all(10),
                                content: Text(_errorMessage)));
                          }
                        },
                      )),
                ],
              ),
            )),
      ),
    );
  }

  Future<void> getSaved(BuildContext context) async {
    WidgetsFlutterBinding.ensureInitialized();
    final sharedPreferences = await SharedPreferences.getInstance();
    final savedUsername = sharedPreferences.getString('username');
    if (savedUsername != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Main()));
    }
  }
}
