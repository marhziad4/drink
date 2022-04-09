import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
const Cart({Key? key}) : super(key: key);

@override
_CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
@override
Widget build(BuildContext context) {
return Scaffold(

appBar: AppBar(
backgroundColor: Color(0xff36596A),
elevation: 10,
title: Text(
'My Cart',
style: TextStyle(
color: Color(0xffffffff), fontWeight: FontWeight.bold),
textAlign: TextAlign.center,
),
leading: IconButton(

color: Color(0xffffffff),
onPressed: () {},
icon: Icon(Icons.arrow_back_ios),
),
actions: [
Icon(Icons.zoom_out_map),

],

),
body: Padding(
padding: const EdgeInsets.all(18.0),
child: SingleChildScrollView(
child: Column(
mainAxisSize: MainAxisSize.max,
crossAxisAlignment:CrossAxisAlignment.stretch,
children: [
Card(
child: Column(
mainAxisSize: MainAxisSize.max,
crossAxisAlignment: CrossAxisAlignment.end,
children: [
Icon(Icons.clear,color:Color(0xff9A9A9A)),
Row(
//crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
Image.asset('images/coco1.jpg',width: 80,height: 80,),

SizedBox(width: 3,),
Column(children: [
Text('Orange Juice',style: TextStyle(fontSize:14,fontWeight: FontWeight.normal,color: Color(0xff36596A)),),
SizedBox(height: 3,),
Text('White 2kg',style: TextStyle(fontSize:14,fontWeight: FontWeight.normal,color: Color(0xff9A9A9A),),),
SizedBox(height: 3,),
Row(
children: [
Text('25.00',style: TextStyle(fontSize:14,
fontWeight: FontWeight.normal,color: Color(0xffFF8236),),),
SizedBox(width: 3,),
Text('29.00',style: TextStyle(fontSize:14,
fontWeight: FontWeight.normal,color: Color(0xff9A9A9A),decoration: TextDecoration.lineThrough,

),
),
],
),

],),

SizedBox(
width: 50,
),
Padding(
padding: const EdgeInsets.only(top:20.0,left: 10),
child: Card(
elevation: 10,
child: Row(
children: [
Card(child: Icon(Icons.add,color: Color(0xff36596A),),),
Card(child: Text('2K',style: TextStyle(color: Color(0xff36596A)),),),
Card(child: Icon(Icons.minimize,color: Color(0xff36596A))),

],
),
),
),

],
),
],
),
),
SizedBox(height: 5,),
Card(
child: Column(
mainAxisSize: MainAxisSize.min,
crossAxisAlignment: CrossAxisAlignment.end,
children: [
Icon(Icons.clear,color:Color(0xff9A9A9A)),
Row(
//crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
Image.asset('images/coco1.jpg',width: 80,height: 80,),

SizedBox(width: 3,),
Column(children: [
Text('Orange Juice',style: TextStyle(fontSize:14,fontWeight: FontWeight.normal,color: Color(0xff36596A)),),
SizedBox(height: 3,),
Text('White 2kg',style: TextStyle(fontSize:14,fontWeight: FontWeight.normal,color: Color(0xff9A9A9A),),),
SizedBox(height: 3,),
Row(
children: [
Text('25.00',style: TextStyle(fontSize:14,
fontWeight: FontWeight.normal,color: Color(0xffFF8236),),),
SizedBox(width: 3,),
Text('29.00',style: TextStyle(fontSize:14,
fontWeight: FontWeight.normal,color: Color(0xff9A9A9A),decoration: TextDecoration.lineThrough,

),
),
],
),

],),

SizedBox(
width: 50,
),
Padding(
padding: const EdgeInsets.only(top:20.0,left: 10),
child: Card(
elevation: 10,
child: Row(
children: [
Card(child: Icon(Icons.add,color: Color(0xff36596A),),),
Card(child: Text('2K',style: TextStyle(color: Color(0xff36596A)),),),
Card(child: Icon(Icons.minimize,color: Color(0xff36596A))),

],
),
),
),

],
),
//SizedBox(height: 40,)
],
),
),
SizedBox(height: 45,),
Container(
child:  Column(
children: [
SizedBox(height: 45,),
Positioned(
top: 280,
bottom: 0,
left: 0,
right: 0,
child: Card(
color: Colors.white70,
shape: RoundedRectangleBorder(
borderRadius: BorderRadiusDirectional.only(
topEnd: Radius.circular(40),
topStart: Radius.circular(40),

),

),
child: Column(
mainAxisSize: MainAxisSize.max,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Padding(
padding:  EdgeInsets.all(10.0),
child: Row(children: [
Text(' Items',style: TextStyle(fontSize: 15,
color:Color(0xff36596A),
fontWeight: FontWeight.bold),),
SizedBox(width: 250,),
Text(' 6',style: TextStyle(fontSize: 15,
color:Color(0xff36596A),
fontWeight: FontWeight.bold),),


],
),

),

Padding(
padding:  EdgeInsets.all(10.0),
child: Row(children: [
Text(' Sub total',style: TextStyle(fontSize: 15,
color:Color(0xff36596A),
fontWeight: FontWeight.bold),),
SizedBox(width: 200,),
Text(' 21.00',style: TextStyle(fontSize: 15,
color:Color(0xff36596A),
fontWeight: FontWeight.bold),),


],
),

),


Padding(
padding:  EdgeInsets.all(10.0),
child: Row(children: [
Text(' Delivery charge',style: TextStyle(fontSize: 15,
color:Color(0xff36596A),
fontWeight: FontWeight.bold),),
SizedBox(width: 160,),
Text(' 05.00',style: TextStyle(fontSize: 15,
color:Color(0xff36596A),
fontWeight: FontWeight.bold),),


],
),

),


Padding(
padding:  EdgeInsets.all(10.0),
child: Row(children: [
Text(' Total',style: TextStyle(fontSize: 15,
color:Color(0xffFF8236),
fontWeight: FontWeight.bold),),
SizedBox(width: 230,),
Text(' 26.00',style: TextStyle(fontSize: 15,
color:Color(0xffFF8236),
fontWeight: FontWeight.bold),),


],
),

),



TextButton
(onPressed: (){},
child: Text('Confirm Payment',style: TextStyle(fontSize: 10,color: Colors.white),

),
style: TextButton.styleFrom(backgroundColor: Color(0xff253043),
padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20)),
)



],
),

),
),
],
),

),

],
),
),
),
);
}
}