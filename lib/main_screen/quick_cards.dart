import 'package:flutter/material.dart';

class QuickCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Quick Cards',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: ()=>{print("tapped")},
                      onLongPress: ()=>{print("long press")},
                      child: Container(
                        height: 120,
                        decoration: decor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Cigarettes')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 120,
                      decoration: decor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Smokes')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 120,
                      decoration: decor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Smokes')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 120,
                      decoration: decor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Smokes')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 120,
                      decoration: decor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Smokes')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 120,
                      decoration: decor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Smokes')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


final BoxDecoration decor = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(24.0),
    boxShadow: [BoxShadow(
        color: Colors.black.withOpacity(0.1),
        offset: Offset(
            0.0,
            3.0
        ),
        blurRadius: 15.0
    )]
);