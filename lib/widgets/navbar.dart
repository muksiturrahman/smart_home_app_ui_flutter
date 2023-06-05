import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innovainfosys_ui_test/pages/detail_item.dart';
import 'package:innovainfosys_ui_test/pages/smart.dart';
import 'package:innovainfosys_ui_test/pages/usage.dart';
import '../pages/home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const Smart(),
    const Usage(),
    const Detail(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF4C7380),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),
          ),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: MaterialButton(
                  minWidth: 75,
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomePage();
                      currentTab = 0;
                    });
                  },
                  child: currentTab == 0 ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/icons/nav_icons/home fill.png",),
                      SizedBox(width: 15,),
                      Text('Home',
                          style: TextStyle(
                            color: Color(0xFF374957)
                          ),),
                      SizedBox(width: 15,),
                    ],
                  ) : Image.asset("asset/icons/nav_icons/home.png",),
                ),
              ),
              SizedBox(width: 6,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: MaterialButton(
                  minWidth: 75,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Smart();
                      currentTab = 1;
                    });
                  },
                  child: currentTab == 1 ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/icons/nav_icons/net fill.png"),
                      SizedBox(width: 15,),
                      Text('Smart',
                          style: TextStyle(
                            color: Color(0xFF374957),),
                      ),
                      SizedBox(width: 15,),
                    ],
                  ) : Image.asset("asset/icons/nav_icons/Vector.png"),
                ),
              ),
              SizedBox(width: 6,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: MaterialButton(
                  minWidth: 75,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Usage();
                      currentTab = 2;
                    });
                  },
                  child: currentTab == 2 ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/icons/nav_icons/pie fill.png"),
                      SizedBox(width: 15,),
                      Text('Usage',
                          style: TextStyle(
                            color: Color(0xFF374957),
                          ),),
                      SizedBox(width: 15,),
                    ],
                  ) : Image.asset("asset/icons/nav_icons/pie.png"),
                ),
              ),
              SizedBox(width: 6,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: MaterialButton(
                  minWidth: 75,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Detail();
                      currentTab = 3;
                    });
                  },
                  child: currentTab == 3 ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/icons/nav_icons/Group1.png"),
                      SizedBox(width: 15,),
                      Text('Details',
                          style: TextStyle(
                            color: Color(0xFF374957),),
                      ),
                      SizedBox(width: 15,),
                    ],
                  ) : Image.asset("asset/icons/nav_icons/Group.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

