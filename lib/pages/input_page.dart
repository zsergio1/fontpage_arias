import 'package:flutter/material.dart';
import 'general_input_page.dart';
import 'password_input_page.dart'; // Importa la nueva página
import 'captura_valores_input_page.dart'; // Importa la nueva página
import 'calendar_input_page.dart'; // Importa la nueva página

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InputPage SIII'),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('General-Inputs'),
              subtitle: Text('Ir a detalle de General-Inputs'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneralInputsPage()),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Password-Inputs'),
              subtitle: Text('Ir a detalle de Password-Inputs'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordInputPage()),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Captura Valores del Input Page'),
              subtitle: Text('Ir a detalle de Captura Valores del Input Page'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CapturaValoresInputPage()),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Calendar Input Page'),
              subtitle: Text('Ir a detalle de Calendar Input Page'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarInputPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
