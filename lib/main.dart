import 'package:flutter/material.dart'; // importing  flutter dart file

void main() {
  // main function
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // stateless widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // returning material app
      debugShowCheckedModeBanner: false,
      title: "LoginUI", // title of app
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final bloc = Bloc();
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/img1.png',
              fit: BoxFit.cover,
              color: Colors.black45,
              colorBlendMode: BlendMode.darken,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/img2.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                          height: 400.0,
                          width: 300.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 30.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 50.0,
                                ),

                                // stream builder
                                child: StreamBuilder(
                                  stream: bloc.email,
                                  builder: (context, snapshot) => TextField(
                                    autocorrect: false,
                                    autofocus: false,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Username",
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding: EdgeInsets.all(15.0),
                                    ),
                                  ),
                                ),
                              ),
                              StreamBuilder(
                                builder: (context, snapshot) => TextField(
                                  autocorrect: false,
                                  autofocus: false,
                                  obscureText: true,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: EdgeInsets.all(15.0),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 30.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "Forgot Password ?",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  )),
                              StreamBuilder(
                                stream: bl,
                                builder: (context, snapshot) => MaterialButton(
                                  onPressed: () {},
                                  minWidth: 125.0,
                                  splashColor: Colors.red[800],
                                  color: Colors.red,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
