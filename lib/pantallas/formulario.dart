import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {

  final GlobalKey<FormState> estadoFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          child: Form(
            key: estadoFormulario,
            child: Column (
              children: [
                Container(child: TextFormField(
                  validator: (value){
                    const String dominioRequerido = "@gmail.com";
                    if (!value!.contains("@")  ){
                      return "El correo no es valido";
                    }
                    else{
                      if (!value.endsWith(dominioRequerido)) 
                      {
                        return "El dominio debe ser @gmail.com";
                      }

                    }
                  } ,
                  decoration: 
                  const InputDecoration(hintText: "Correo electronico"),

                ),),
                Container(child: TextFormField(
                  obscureText: true,
                  validator: (value){
                    if (value!.length<8){
                    return "Debe tener al menos 8 caracteres";
                  }
                  bool TieneNo = value.contains(RegExp(r'[0-9]'));
                  if (!TieneNo) {
                    return"Debe contener al menos un numero";
                    
                  }
                  } ,
                  decoration: 
                  const InputDecoration(hintText: "Contraseña"),

                ),),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: OutlinedButton(onPressed: (){
                    if (estadoFormulario.currentState!.validate()) {
                      print("Exelente");
                    }else{
                      print("Error");

                    }
                  },child: const Text("Validar"),
                  )

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}