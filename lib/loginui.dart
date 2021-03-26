import "package:flutter/material.dart";

class LoginUi extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  void validate() {
    print(formKey.currentState.validate());
    if (formKey.currentState.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 315,
                  child: Image.asset(
                    "images/graphics/bottomH.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 320,
                  child: Image.asset(
                    "images/graphics/midH.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.asset(
                    "images/graphics/topH.png",
                    fit: BoxFit.cover,
                  ),
                ),
                //Logo-------Section
                Container(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      width: 65,
                      height: 50,
                      child: Image.asset(
                        "images/graphics/carLogo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 135,
                      height: 30,
                      child: Image.asset(
                        "images/graphics/textLogo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),

          //Feilds Section----------------
          Container(
              height: MediaQuery.of(context).size.height * 0.33,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 40, right: 40, bottom: 0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) =>
                            value.isEmpty ? 'Email cannot be empty' : null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: new InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 8.0, bottom: 8.0, top: 8.0),
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.blue,
                              size: 18.0,
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0))),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) =>
                            value.isEmpty ? ' Password cannot be empty' : null,
                        obscureText: true,
                        decoration: new InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 8.0, bottom: 8.0, top: 8.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                              size: 18.0,
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0))),
                      ),
                    ],
                  ),
                ),
              )),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.33,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: validate,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "FORGOT PASSWORD?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
