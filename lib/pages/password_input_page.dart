import 'package:flutter/material.dart';

class PasswordInputPage extends StatefulWidget {
  const PasswordInputPage({super.key});

  @override
  State<PasswordInputPage> createState() => _PasswordInputPageState();
}

class _PasswordInputPageState extends State<PasswordInputPage> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Password-InputPage',
          style: TextStyle(color: Colors.white), // Cambia el color del texto a blanco
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              obscureText: isInvisible,
              decoration: InputDecoration(
                hintText: "Ingrese la contraseña",
                suffixIcon: IconButton(
                  icon: Icon(
                    isInvisible ? Icons.visibility_off : Icons.visibility,
                    color: isInvisible ? Colors.blue : Colors.black, // Cambia el color del ícono
                  ),
                  onPressed: () {
                    setState(() {
                      isInvisible = !isInvisible;
                    });
                  },
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: isInvisible ? Colors.blue : Colors.black), // Color de la línea cuando el campo no está enfocado
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: isInvisible ? Colors.blue : Colors.black), // Color de la línea cuando el campo está enfocado
                ),
              ),
              cursorColor: isInvisible ? Colors.blue : Colors.black, // Color del cursor
              style: TextStyle(color: isInvisible ? Colors.blue : Colors.black), // Color del texto
            ),
          ],
        ),
      ),
    );
  }
}
