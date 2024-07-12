import 'package:flutter/material.dart';

class CapturaValoresInputPage extends StatefulWidget {
  @override
  _CapturaValoresInputPageState createState() => _CapturaValoresInputPageState();
}

class _CapturaValoresInputPageState extends State<CapturaValoresInputPage> {
  String name = "";
  TextEditingController nameController = TextEditingController(text: "Por defecto");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capturando Inputs",
          style: TextStyle(color: Colors.white), // Color del texto en la app bar
        ),
        backgroundColor: Colors.black, // Color de fondo de la app bar
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white), // Color del ícono de volver
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Ingrese tu nombre",
              ),
              onChanged: (String value) {
                setState(() {
                  name = value;
                  print(name);
                });
              },
              onTap: () {
                print("ON TAP!!");
              },
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Ingrese tu nombre",
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Color de fondo del botón
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Color del texto del botón
              ),
              onPressed: () {
                print(nameController.text);
                // nameController.text = "Juan"; // Si deseas cambiar el texto del controlador
                // getNameData(); // Si deseas obtener datos de otra función
                // setState(() {}); // Si deseas actualizar el estado
              },
              child: Text("Mostrar Valor!"),
            ),
            SizedBox(height: 30.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Teclados",
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getNameData() {
    print(nameController.text);
  }
}
