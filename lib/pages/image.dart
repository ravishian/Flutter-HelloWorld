import 'package:c1/Utils/routes.dart';
import 'package:c1/pages/Login.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {

  String name = "";
  bool Change =  false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/loginimage.png",),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Column(
                children: [
                  Text("Welcome $name"),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                         TextField(
                          decoration: InputDecoration(
                            hintText: "Enter username",
                            labelText: "Username",
                          ),
                          onChanged:(value)
                          {
                            name = value;
                            setState(() {});
                          },
                        ),
                         TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                           onChanged: (value)
                           {
                             name = value;
                             setState(() {});
                           },
                        ),
                        SizedBox(height: 12.0),


                        InkWell(

                          onTap: ()
                          async {
                            setState(() {

                              Change = true;
                            });

                            await Future.delayed(Duration(seconds: 1));
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: AnimatedContainer(

                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(Change ? 50:8),


                            ),

                            width: Change? 50 :150,
                            height: 50,
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            child: Change? Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(
                             fontWeight: FontWeight.bold,fontSize: 18,
                              color: Colors.white
                            )
                            ),



                          ),
                        )

                        // ElevatedButton(
                        //   onPressed: () {
                        //
                        //     print('Elevated Button pressed');
                        //
                        //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
                        //     );
                        //
                        //   },
                        //   child: Text('Login'),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
