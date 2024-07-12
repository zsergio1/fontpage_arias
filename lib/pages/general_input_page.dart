import 'package:flutter/material.dart';

class GeneralInputsPage extends StatelessWidget {
  const GeneralInputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("General-InputPage SIIII"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              maxLines: 1,
              maxLength: 20,
              textAlign: TextAlign.start,
              cursorColor: Colors.purple,
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                label: Text("correo electronico"),
                hintText: "sergio@gmail.com",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.35),
                  fontSize: 16.0,
                ),
                icon: Icon(Icons.email),
                prefixIcon: Icon(Icons.alternate_email),
                suffix: Icon(
                  Icons.email_outlined,
                  color: Colors.blueAccent,
                ),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar producto",
                prefixIcon: Icon(Icons.search),
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.redAccent,
                    width: 4.8,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 4.0,
                    color: Colors.yellowAccent,
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 4.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 38.8,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.85),
                    blurRadius: 12,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Buscar producto....",
                  hintStyle: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black.withOpacity(0.30),
                  ),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(16.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          offset: Offset(4, 4),
                          blurRadius: 7.0,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
