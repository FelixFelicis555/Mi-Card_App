import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/angela.jpg'),
              ),
              Text(
                'Angela Yu',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+44 123 456 789',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade100,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'angela@email.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
  * We created our app inside our main() which we know it gets triggered when we run our code

  ? We told the phone ,run an app which is materialApp and we gave various widgest to be displayed

  ! Flutter is awesome because of hot reload and hot restart features as they are power tools for flutter apps

  * These allows you to instantanesously see your changes in your device that you are testing on or simulator

   * For hot-reload to work,we have to have the things that we change inside stateless or stateful widget
   
   ? Stateless widget has build() which gets called whenever we create new version of it i.e we are making changes to it

   ! ctrl + S will automatically does hot reload & restart on windows

   * Hot reload happens so fast,it's almost paint user interface into life
   
   In the development cycle,we write & test code in a loop until your app is done

   They will only look at the changes that we made and push those changes into testing device
   Size doesn't matter

   How to design App UI using Layout Widgets

*/

// One of the most fundamental widget that we will be using all the time to layout our app- Container Widget

// It's very similar to Div which is essentially a layout box,you can position it,move it around on the screen and then you can give a child to display


/*
   * Under Layout Widgets,you can see there are single-child & multi-child layout widgets
   
    * Most probably we use container as Single-Child Layout Widget

    These were the widgets which allows us to positioning & sizing of  the widgets

Containers with no child try to be as big as possible i.e it'll take all of the space available

Containers with child size themselves to the size of the child

! What if i wanted my container to be little bit offset from Edges on the screen? -Then we need to use margin property

* To specify the margin-property,we have to use something called EdgeInsets,You can see different types of EdgetInsets - symmetric(top & bottom),all(all four sides),fromLTRB(specify each side margin value),only(going to set only those sides margin-value)


! What if you want child of container little bit offset from edges of container,then we need to use padding property


Padding-inside
Margin-Outside

! What if you have lot of different things to layout relative to each other,well in that case,you need something which can take lots of children not just single one

* Easiest way to do this - Using Rows() and Columns()

We can layout our widgets in vertical or horizontal direction and determine how they should be sized

* Multi-Child Layout Widgets : 
 ? Rows - horizontal
 ? Colums-Vertical
 ? Stack



Columm will take vertical space as much of the possible
You can also change it by mainAxisSize property for Column,it's vertical

* We can also change the vertical direction property

* If we want to change start of the mainaxis ,we can use mainAxisAlignment property ,You can also change the spacing between the widgets 

? We can also align the widgets horizontally in Column using crossAxisAlignment property

We can invisible Container by setting width values to double.infinity

! We can also use SizedBox if you knew how much spacing is required between container widgets


* How to incorporate Custom Fonts in your Flutter App

The easiest way to do this ,we can declare the fonts in pubspec.yaml,we can just change font-style using font-family property
*/


// ! Adding Material-Icons with Icon Widget


// * Flutter Card and ListTile Widget


/*

 We can either customize it or we can use prebuilt Card Widget


Card widget does not have padding property

! What if the widget doesn't contain the property that we wanted to change, But if you look at flutter documentation,you might come across Padding Class widget which inserts padding to it's child widget and can be added as parent to any other widget

? It's important to remember that when you are adding padding,child of the Padding widget is going to get a blanket essentially wrapped around it and separated it from everything-else

We can also get rid of Row widget inside Card widget by using something that's used very commonly to make our lives easier in Flutter Card

! ListTile is the widget which is used very commonly with Card

It's used to display icons and text in Card

A single fixed height row that typically contains some text as well as leading or trailing icon
*/

// We are able to use pre-built widgets that conforms to material-design principles

// * All we had to figure out,which widget we want to use and how we want to set it's properties

// ! How we can center the content of Column Widget


// mainAxisAlignment is all about How the children should be placed along the main axis

// The final-thing that we need to add line between cards and text widget to separate it


// In flutter we have divider class which works like horizontal rule - A one device pixel thick horizontal line with padding on either side

// We also explored customized widgets like CircleAvatar,Card & ListTiles widget


/*
      ! Goal :
 * Mi Card is a personal business card. Imagine every time you wanted to give someone your contact details or your business card but you didn't have it on you. Well, now you can get them to download your business card as an app
 


*/