import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_text_button.dart';
import 'package:flutter_application_1/widgets/my_input_field.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  late TextEditingController emailController;
  late TextEditingController senhaController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    senhaController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("images/logo1.png"),
                  width: 200,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
            ),
            child: SafeArea(
              top: false,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        MyinputField(
                          label: 'Email',
                          placeholder: "Endereço de email",
                          onChange: (value) {
                            this.emailController.text = value;
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        MyinputField(
                          label: 'Senha',
                          placeholder: "senha",
                          onChange: (value) {
                            this.senhaController.text = value;
                          },
                          isSenhaField: true,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        MyTextButton(
                          label: "Login",
                          onTap: () {
                            print(this.emailController.text +
                                " | " +
                                this.senhaController.text);
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Não tem acesso a conta ?          ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Cadastre-se",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
