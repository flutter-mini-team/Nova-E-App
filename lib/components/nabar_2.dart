import 'package:flutter/material.dart';
import 'package:nova/components/app_form.dart';
import 'package:nova/values/app_colors.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  late List<Widget> _screens;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _screens = [
      //MyCustomForm(HintText: 'oke'),
      TestScreen(title: '2nd Screen'),
      TestScreen(title: '3rd Screen'),
      TestScreen(title: '4th Screen'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: currentIndex,
        children: [
          BottomBarItem(icon: Icons.home),
          BottomBarItem(icon: Icons.search),
          BottomBarItem(icon: Icons.badge),
          BottomBarItem(icon: Icons.person),
        ],
        onPressed: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

class BottomBarItem {
  BottomBarItem({required this.icon});

  IconData icon;
}

class BottomBar extends StatelessWidget {
  final List<BottomBarItem> children;
  final Function? onPressed;
  final Function? onMainPressed;
  final selectedIndex;

  BottomBar({
    this.children = const [],
    this.onPressed,
    this.onMainPressed,
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      child: SafeArea(
        bottom: true,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
                offset: Offset(
                  0.0, // horizontal, move right 10
                  -6.0, // vertical, move down 10
                ),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: children.map<Widget>(
                    (item) {
                      int index = children.indexOf(item);
                      bool isSelected = selectedIndex == index;
                      return Expanded(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              onPressed!(index);
                            },
                            child: Container(
                              child: Icon(
                                item.icon,
                                size: isSelected ? 35 : 30,
                                color: isSelected ? AppColors.primaryColor : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList()),
            ],
          ),
        ),
      ),
    );
  }
}

class TestScreen extends StatelessWidget {
  final String title;
  const TestScreen({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text(title),
      )),
    );
  }
}
