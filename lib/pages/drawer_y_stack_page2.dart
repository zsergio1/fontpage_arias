import 'package:flutter/material.dart';

class DrawerYStackPage2 extends StatefulWidget {
  const DrawerYStackPage2({Key? key}) : super(key: key);

  @override
  State<DrawerYStackPage2> createState() => _DrawerYStackPage2State();
}

class _DrawerYStackPage2State extends State<DrawerYStackPage2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xff001f5b), // Dark blue background color
        drawer: Drawer(
          child: Container(
            color: Color(0xff001f5b), // Dark blue background for the drawer
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Arturo'),
                  accountEmail: Text('Perfil', style: TextStyle(color: Colors.grey[400])),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Color(0xff001f5b),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff001f5b),
                  ),
                ),
                _createDrawerItem(
                  icon: Icons.settings,
                  text: 'Configuración',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.security,
                  text: 'Seguridad y privacidad',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.token,
                  text: 'Token digital',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.qr_code,
                  text: 'Operar con QR / Plin',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.location_on,
                  text: 'Puntos de atención',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.phone,
                  text: 'Comunícate con nosotros',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.apps,
                  text: 'Aplicaciones',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.info,
                  text: 'Acerca de BBVA',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            // Background confetti image with transparency
            Container(
              decoration: BoxDecoration(
                color: Color(0xff001f5b),
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.dstATop,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 18,
              left: 400,
              child: IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "BBVɅ",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Color(0xff001f5b),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hola Arturo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cambiar usuario',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _createBottomIcon(Icons.token, 'Token digital'),
                  _createBottomIcon(Icons.location_on, 'Puntos de atención'),
                  _createBottomIcon(Icons.qr_code, 'Plin'),
                  _createBottomIcon(Icons.business, 'Acceder a Mi Negocio'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon, required String text, GestureTapCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }

  Widget _createBottomIcon(IconData icon, String label) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.white),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
