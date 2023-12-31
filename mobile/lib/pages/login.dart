import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_inventory/configs/theme.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.0, right: 16.0, bottom: 16.0, top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bem vindo",
                    style: TextStyle(fontSize: size.height / 26),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam interdum, arcu vel euismod fermentum, sapien lectus ullamcorper arcu",
                      maxLines: 3,
                    ),
                    width: size.width,
                    height: size.height / 6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffe5e5e5),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Nome de utilizador",
                            contentPadding: EdgeInsets.only(bottom: 10),
                            focusColor: Color(0xff000000),
                            filled: true,
                            prefixIcon: Icon(
                              CupertinoIcons.person,
                              color: Color(0xff000000),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11))),
                            fillColor: Color(0xffe5e5e5),
                            labelStyle: TextStyle(color: Color(0xff000000)),
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffe5e5e5),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Palavra passe",
                            contentPadding: EdgeInsets.only(bottom: 10),
                            focusColor: Color(0xff000000),
                            filled: true,
                            prefixIcon: Icon(
                              CupertinoIcons.padlock,
                              color: Color(0xff000000),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11))),
                            fillColor: Color(0xffe5e5e5),
                            labelStyle: TextStyle(color: Color(0xff000000)),
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("Clicked on Login");
                    },
                    child: Container(
                      width: size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppTheme.PRIMARYCOLOR,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Entrar")),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("Clicked on Forget Password...");
                    },
                    child: Text(
                      "Esqueceu a senha?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width / 3.5,
                        child: Divider(
                          height: 4,
                          thickness: 1.5,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Entrar com"),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: size.width / 3.5,
                        child: Divider(
                          height: 4,
                          thickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint("Clicked on login with Facebook");
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.facebook,
                            size: 50,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ainda não tem uma conta? "),
                      GestureDetector(
                        onTap: () {
                          debugPrint("Clicked on Register...");
                        },
                        child: Text(
                          "Registar-se ",
                          style: TextStyle(color: AppTheme.PRIMARYCOLOR),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
