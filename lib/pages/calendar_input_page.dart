import 'package:flutter/material.dart';

class CalendarInputPage extends StatefulWidget {
  @override
  _CalendarInputPageState createState() => _CalendarInputPageState();
}

class _CalendarInputPageState extends State<CalendarInputPage> {
  TextEditingController dateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calendar Input Page',
          style: TextStyle(color: Colors.white), // Color del texto en la app bar
        ),
        centerTitle: true,
        backgroundColor: Colors.black, // Color de fondo de la app bar
        iconTheme: IconThemeData(color: Colors.white), // Color del ícono de volver
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: dateTimeController,
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030),
                );
                if (pickedDate != null) {
                  setState(() {
                    dateTimeController.text = pickedDate.toString().substring(0, 10);
                  });
                }
              },
              decoration: InputDecoration(
                hintText: 'Fecha de nacimiento',
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
