import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:master_cooking/models/db_recipe.dart';
import 'package:master_cooking/services/database.dart';
import 'package:provider/provider.dart';
import 'package:master_cooking/pages/db_recipe_list.dart';

class Online extends StatefulWidget {
  @override
  _OnlineState createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<OnlineRecipe>>.value(
      value: DatabaseService().recipes,
      child: RecipeList(),
    );
  }
}

// class _OnlineState extends State<Online> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             RecipeList(),
//             Stack(
//               children: <Widget>[
//                 Container(
//                   height: 250.0,
//                   color: Colors.brown[100],
//                 ),
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
//                       child: Material(
//                         elevation: 10.0,
//                         borderRadius: BorderRadius.circular(25.0),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                               border: InputBorder.none,
//                               prefixIcon:
//                                   Icon(Icons.search, color: Colors.black),
//                               contentPadding:
//                                   EdgeInsets.only(left: 15.0, top: 15.0),
//                               hintText: 'Search for recipes and channels',
//                               hintStyle: TextStyle(color: Colors.grey)),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 15.0),
//                     Padding(
//                       padding: EdgeInsets.only(left: 15.0),
//                       child: Container(
//                         padding: EdgeInsets.only(left: 10.0),
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.orange,
//                                     style: BorderStyle.solid,
//                                     width: 3.0))),
//                         child: Row(
//                           children: <Widget>[
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text('POPULAR RECIPES',
//                                     style: TextStyle(
//                                         fontSize: 20.0,
//                                         fontFamily: 'Timesroman',
//                                         fontWeight: FontWeight.bold)),
//                                 Text('THIS WEEK',
//                                     style: TextStyle(
//                                         fontSize: 20.0,
//                                         fontFamily: 'Timesroman',
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(bottom: 15.0),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 15.0, left: 15.0),
//                       height: 125.0,
//                       child: ListView(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         children: <Widget>[
//                           _foodCard(),
//                           SizedBox(width: 20.0),
//                           _foodCard(),
//                           SizedBox(width: 20.0),
//                           _foodCard(),
//                           SizedBox(width: 20.0),
//                         ],
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(height: 15.0),
//             Container(
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.only(left: 15.0),
//               child: Text(
//                 'September 7',
//                 style: TextStyle(
//                     fontFamily: 'Quicksand',
//                     color: Colors.grey[800],
//                     fontSize: 15.0),
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.only(left: 15.0),
//               child: Text(
//                 'TODAY',
//                 style: TextStyle(
//                     fontFamily: 'Timesroman',
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30.0),
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Stack(
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(left: 12.0, right: 12.0),
//                   child: Container(
//                     height: 275.0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.0),
//                       image: DecorationImage(
//                           image: AssetImage('assets/images/breakfast.jpg'),
//                           fit: BoxFit.cover),
//                     ),
//                     child: BackdropFilter(
//                       filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.0)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                     padding: EdgeInsets.only(top: 150.0, left: 60.0),
//                     child: Column(
//                       children: <Widget>[
//                         Text(
//                           'BEST OF',
//                           style: TextStyle(
//                               fontFamily: 'Timesroman',
//                               fontSize: 25.0,
//                               color: Colors.blue,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'THE DAY',
//                           style: TextStyle(
//                               fontFamily: 'Timesroman',
//                               fontSize: 25.0,
//                               color: Colors.blue,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 10.0),
//                         Container(
//                           height: 3.0,
//                           width: 50.0,
//                           color: Colors.orange,
//                         )
//                       ],
//                     ))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _foodCard() {
//     return Container(
//       height: 125.0,
//       width: 250.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12.0),
//         color: Colors.grey[100],
//       ),
//       child: Row(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12.0),
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/balanced.jpg'))),
//             height: 125.0,
//             width: 100.0,
//           ),
//           SizedBox(width: 20.0),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Grilled Chicken',
//                 style: TextStyle(
//                   fontFamily: 'Quicksand',
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 'with Fruit Salad',
//                 style: TextStyle(
//                   fontFamily: 'Quicksand',
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10.0),
//               Container(
//                 height: 2.0,
//                 width: 75.0,
//                 color: Colors.orange,
//               ),
//               SizedBox(height: 10.0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Container(
//                     height: 25.0,
//                     width: 25.0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12.5),
//                       image: DecorationImage(
//                           image: AssetImage('assets/images/chris.jpg')),
//                     ),
//                   ),
//                   SizedBox(width: 10.0),
//                   Text('James Oliver',
//                       style: TextStyle(fontFamily: 'Quicksand'))
//                 ],
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
