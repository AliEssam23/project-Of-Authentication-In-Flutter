// ignore: file_names
// ignore: file_names
// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names, unnecessary_const, camel_case_types, prefer_const_constructors, file_names, duplicate_ignore
import 'package:flutter/material.dart';

var stateOfAuth = false;
var ShowPassword = false;

class PageOfAuthentication extends StatefulWidget {
  const PageOfAuthentication({Key? key}) : super(key: key);

  @override
  State<PageOfAuthentication> createState() => _PageOfAuthenticationState();
}

class _PageOfAuthenticationState extends State<PageOfAuthentication> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const containerOfInforview(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  stateOfAuth == true
                      ? TextFormField(
                          onChanged: ((value) {}),
                          decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        )
                      : const Padding(padding: EdgeInsets.only(top: 0.0)),
                  Padding(
                    padding: stateOfAuth == true
                        ? const EdgeInsets.only(top: 10.0)
                        : const EdgeInsets.only(top: 0.0),
                    child: TextFormField(
                      onChanged: ((value) {}),
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                      onChanged: ((value) {}),
                      obscureText: ShowPassword == false ? true : false,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffix: InkWell(
                          child: ShowPassword == false
                              ? const Icon(
                                  Icons.lock_outlined,
                                )
                              : const Icon(
                                  Icons.lock_open_outlined,
                                ),
                          onTap: () {
                            setState(() {
                              ShowPassword = !ShowPassword;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text("Forgot Password?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 171, 236, 92),
                        fontSize: 16.0)),
              ],
            ),
          ),
          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 60.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 171, 236, 92),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                  child: stateOfAuth == false
                      ? const Text(
                          "Login",
                          style: TextStyle(fontSize: 18.0),
                        )
                      : const Text(
                          "Signup",
                          style: const TextStyle(fontSize: 18.0),
                        )),
            ),
            onTap: () {
              ////
            },
          ),
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              "Or Login with",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 16.0,
                        height: 16.0,
                        color: Colors.white,
                        child: const Image(
                            image: const NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/2991/2991148.png")),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: const Text(
                          "Google",
                          style: TextStyle(color: Colors.grey, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          width: 16.0,
                          height: 16.0,
                          color: Colors.white,
                          child: const Image(
                              image: const NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXqKqFBKDi4JgkPxVHzYqfdfqxpIbpige6Sg&usqp=CAU"))),
                      const Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Facebook",
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: stateOfAuth == false
                ? const EdgeInsets.all(40.0)
                : EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    stateOfAuth == false
                        ? "Don't have an account?"
                        : "Do have an account?",
                    style: const TextStyle(color: Colors.grey)),
                TextButton(
                  // ignore: sort_child_properties_last
                  child: Text(stateOfAuth==false? "Register":"Login" ,
                      style: const TextStyle(
                          color: const Color.fromARGB(255, 171, 236, 92),
                          fontSize: 16.0)),
                  onPressed: (() {
                    setState(() {
                      stateOfAuth = !stateOfAuth;
                    });
                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class containerOfInforview extends StatefulWidget {
  const containerOfInforview({Key? key}) : super(key: key);

  @override
  State<containerOfInforview> createState() => _containerOfInforviewState();
}

class _containerOfInforviewState extends State<containerOfInforview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.0,
      color: const Color.fromARGB(255, 11, 33, 50),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 15.0),
                  child: Text(
                    "Sign in to your",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 15.0),
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 15.0),
                  child: Text(
                    "Sign in your Account",
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
