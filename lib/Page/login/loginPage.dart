import "package:flutter/material.dart";
import 'package:ecg/Page/symptomCheck/symptomCheckPage.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            const Text('Hey there,\n歡迎回來',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(29, 21, 23, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                )),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined,size:40,color: Colors.grey),
                    labelText: 'Email',
                    hintText: 'Enter valid email'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock,size:40,color: Colors.grey),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),

              ),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: const Text(
                '忘記密碼?',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SymptomCheckPage()));
                },
                child: const Text(
                  '登入',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children:const [
                Expanded(
                    child: Divider(
                      height: 3,
                      indent: 20,
                      endIndent: 5,
                      thickness: 1,
                      color: Colors.grey,
                    )
                ),

                Text("Or"),

                Expanded(
                    child: Divider(
                      height: 3,
                      indent: 5,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.grey,
                    )
                ),
                ]
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

                children: const [
                  SizedBox(
                    width: 50,
                    height: 50,

                  ),
                ],

            ),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const <Widget> [
                  Text('還沒有帳戶? 註冊')

                ]
            )

          ],
        ),
      ),
    );
  }
}