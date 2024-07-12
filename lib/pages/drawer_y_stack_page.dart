import 'package:flutter/material.dart';
import 'package:fontpage_arias/pages/alert_page.dart';
import 'package:fontpage_arias/pages/alert_page2.dart';
import 'package:fontpage_arias/pages/general_input_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'avatar_page.dart';

class DrawerYStackPage extends StatefulWidget {
  const DrawerYStackPage({Key? key}) : super(key: key);

  @override
  State<DrawerYStackPage> createState() => _DrawerYStackPageState();
}

class _DrawerYStackPageState extends State<DrawerYStackPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xfff3e8ff),
        appBar: AppBar(
          title: Text("Login", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.pinkAccent,
        ),
        drawer: Drawer(
          elevation: 20,
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://img.lovepik.com/bg/20240118/The-Background-of-this-Picture-Reveals-the-Face-of-a_2777053_wh860.jpg!/fw/860",
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        "https://img.lovepik.com/bg/20240118/The-Background-of-this-Picture-Reveals-the-Face-of-a_2777053_wh860.jpg!/fw/860",
                      ),
                    ),
                    Text(
                      "Juan Lopez Perez",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Colaborador",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Avatar Page"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AvatarPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text("Alert 1"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text("Alert 2"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertPage2()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Inputs"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeneralInputsPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff9440b7),
                  size: 30.0,
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -150,
                  child: MyCircleWidget(
                    colors: [Color(0xffD74287), Color(0xffE99189)],
                    radius: 400,
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 80,
                  child: MyCircleWidget(
                    radius: 50,
                    colors: [Color(0xff9730ec), Color(0xff0c7544)],
                  ),
                ),
                Positioned(
                  bottom: -150,
                  left: -100,
                  child: MyCircleWidget(
                    radius: 300,
                    colors: [Color(0xff9730ec), Color(0xff0c7544)],
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 220.0,
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                          color: Color(0xff362274),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(color: Color(0xff6200ea)),
                      cursorColor: Color(0xff6200ea),
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff6200ea),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xff6200ea),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6200ea),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(color: Color(0xff6200ea)),
                      cursorColor: Color(0xff6200ea),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff6200ea),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff6200ea),
                        ),
                        suffixIcon: IconButton(
                          icon: isInvisible
                              ? Icon(
                            Icons.visibility_off,
                            color: Color(0xff6200ea),
                          )
                              : Icon(
                            Icons.visibility,
                            color: Color(0xff6200ea),
                          ),
                          onPressed: () {
                            setState(() {
                              isInvisible = !isInvisible;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6200ea),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(40.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  final double radius;
  final List<Color> colors;

  MyCircleWidget({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: colors[0].withOpacity(0.7),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
