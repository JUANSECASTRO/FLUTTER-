import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget  {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaulBackgrondColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myDrawer,
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return MyBox(count: index);
                        },
                      ),
                    ),
              ),
                  
                  Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return MyTile(count: index);
                        },
                      ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset("image/promocion.jpg"),
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image.asset("image/redessociales.jpg"),
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}