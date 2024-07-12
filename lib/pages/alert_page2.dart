import 'package:flutter/material.dart';

class AlertPage2 extends StatelessWidget {
  const AlertPage2({super.key});

  void _showAlert1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta 1 SERGIO'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.warning,
                color: Colors.red,
                size: 90.0,
              ),
              SizedBox(height: 10),
              Text('Este es el primer mensaje de alerta de Sergio.'),
              SizedBox(height: 10),
              Text(
                'Lorem Ipsum es simplemente texto ficticio de la industria de la impresión y la composición tipográfica. '
                    'Lorem Ipsum ha sido el texto ficticio estándar de la industria desde el siglo XVI, '
                    'cuando un impresor desconocido tomó una galera de tipos y la mezcló para hacer un libro de muestras de tipos.',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
            TextButton(
              onPressed: () {
                // Acción del botón "Más información"
              },
              child: Text('Más información'),
            ),
          ],
        );
      },
    );
  }

  void _showAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta 2'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.info,
                color: Colors.orangeAccent,
                size: 90.0,
              ),
              SizedBox(height: 10),
              Text('Este es el segundo mensaje de alerta.'),
              SizedBox(height: 10),
              Text(
                'Para comprobar estas alertas en Android, tienes que ir a los ajustes y entrar en el apartado de Seguridad y emergencias. '
                    'Aquí dentro, puedes pulsar en la opción de Alertas de emergencia inalámbricas para acceder a la pantalla en la que deberías tener activada la opción de *Permitir alertas.',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
            TextButton(
              onPressed: () {
                // Acción del botón "Detalles"
              },
              child: Text('Detalles'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text('Página de Alerta 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showAlert1(context),
              child: Text('Mostrar Alerta 1'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showAlert2(context),
              child: Text('Mostrar Alerta 2'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
