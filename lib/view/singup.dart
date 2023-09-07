import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_text_button.dart';
import 'package:flutter_application_1/widgets/my_input_field.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController cpfController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    cpfController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
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
                  SizedBox(height: 1.0),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
              ),
              child: SafeArea(
                top: false,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Column(
                        children: [
                          MyinputField(
                            label: 'Nome',
                            placeholder: "Nome completo",
                            onChange: (value) {
                              this.nameController.text = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MyinputField(
                            label: 'Email',
                            placeholder: "Endereço de email",
                            onChange: (value) {
                              this.emailController.text = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MyinputField(
                            label: 'CPF',
                            placeholder: "CPF",
                            onChange: (value) {
                              this.cpfController.text = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MyinputField(
                            label: 'Senha',
                            placeholder: "Senha",
                            onChange: (value) {
                              this.passwordController.text = value;
                            },
                            isSenhaField: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MyinputField(
                            label: 'Confirmar Senha',
                            placeholder: "Confirmar Senha",
                            onChange: (value) {
                              this.confirmPasswordController.text = value;
                            },
                            isSenhaField: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MyTextButton(
                            label: "Cadastrar",
                            onTap: () {
                              print(this.nameController.text +
                                  " | " +
                                  this.emailController.text +
                                  " | " +
                                  this.cpfController.text +
                                  " | " +
                                  this.passwordController.text +
                                  " | " +
                                  this.confirmPasswordController.text);
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Já tem uma conta?                       ",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Entrar",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
