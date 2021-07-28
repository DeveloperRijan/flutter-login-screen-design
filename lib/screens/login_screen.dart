import 'package:flutter/material.dart';
import 'package:rijan_rafan/constants/colors_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: app_bar_bg,
        title: Text("Login"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_box_rounded),
          )
        ],
      ),

      //body
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 10,
            vertical: 10,
          ),
          child: Form(
            child: Column(
              children: [
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your email',
                      ),
                      validator: (v) {
                        if (v == null) {
                          return "Please enter name";
                        }
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password"),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.lock),
                          label: Text("Login"),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF2C5381),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    )
                  ],
                ),

                //devider
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.account_box),
                        label: Text("Register"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            textStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
