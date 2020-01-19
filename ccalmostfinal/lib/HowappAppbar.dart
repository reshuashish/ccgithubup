import 'package:flutter/material.dart';
import 'main.dart';

Widget tabBar() {
  if (currentIndex == 1) {
    return TabBar(
      indicatorColor: Colors.white,
      labelPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      isScrollable: true,
      tabs: [
        Icon(
          Icons.camera_alt,
          size: 30,
        ),
        Text(
          'CHATS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          'STATUS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          'CALLS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  } else
    return null;
}

 Widget titleBar() {
  if (currentIndex == 1) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(flex: 8,
          child: Text(
            'HowApp',
            textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(flex: 1,
          child: Container(
            alignment: Alignment.centerRight,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Expanded(flex: 1,
          child: Container(
            alignment: Alignment.centerRight,
            child: FlatButton(
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  } else
    return Text(
      'HowApp',
      textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),
    );
}

//class TABBAR extends StatelessWidget {
//  const TABBAR({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    if(true){
//      return TabBar(isScrollable: true,
//        tabs: [
//          Icon(Icons.camera_alt, size: 40,),
//          Text('CHATS'),
//          Text('STATUS'),
//          Text('CALLS')
//        ],);
//    }}
//}
