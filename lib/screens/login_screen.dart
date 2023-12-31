import 'package:flutter/material.dart';
import 'package:login_mobx/stores/login_store.dart';

import '../widgets/custom_icon_button.dart';
import '../widgets/custom_text_field.dart';
import 'list_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
 LoginStore loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CustomTextField(
                      hint: 'E-mail',
                      prefix: Icon(Icons.account_circle),
                      textInputType: TextInputType.emailAddress,
                      onChanged: loginStore.setEmail,
                      enabled: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      hint: 'Senha',
                      prefix: Icon(Icons.lock),
                      obscure: true,
                      onChanged: loginStore.setPassword,
                      enabled: true,
                      textInputType: TextInputType.visiblePassword,
                      // suffix: CustomIconButton(
                      //   radius: 32,
                      //   iconData: Icons.visibility,
                      //   onTap: () {},
                      // ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            primary: Theme.of(context).primaryColor,
                            onPrimary: Colors.white,
                            onSurface:
                                Theme.of(context).primaryColor.withAlpha(100),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => ListScreen()),
                            );
                          },
                          child: Text('Login'),
                        ))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
