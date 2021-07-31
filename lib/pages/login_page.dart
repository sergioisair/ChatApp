import 'package:chat_app/widgets/boton_azul.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(), 
          child: Container(
            height: MediaQuery.of(context).size.height*0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Logo(titulo: "Messenger",),
                _Form(),
                Labels(ruta: 'register', text1: "¿No tienes cuenta?", text2: "Crea una ahora",),
                Text("Términos y condiciones de uso",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
              icon: Icons.mail_outline,
              placeholder: "Correo",
              keyboardType: TextInputType.emailAddress,
              textController: emailCtrl),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: "Contraseña",
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: "Ingresar",
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          ),
        ],
      ),
    );
  }
}
