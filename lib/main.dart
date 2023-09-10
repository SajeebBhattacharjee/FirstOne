import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
MySnackBar(message,context){
 return ScaffoldMessenger.of(context).showSnackBar(
   SnackBar(content: Text(message))
 );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.black38,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){MySnackBar('Search is pressed', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('Home is pressed', context);}, icon: Icon(Icons.home)),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {MySnackBar('Search is pressed', context);},
        elevation: 10,
        backgroundColor: Colors.black38,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex : 0,
        backgroundColor: Colors.black38,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'home'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_emergency),label:'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'person'),
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar('Home Pressed', context);
          }
          if(index==1){
            MySnackBar('Contact is pressed', context);
          }
          if(index==2){
            MySnackBar('Person is pressed', context);
          }
        },
      ),
      drawer: Drawer(
        //backgroundColor: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
                padding:EdgeInsets.all(10),
                child: UserAccountsDrawerHeader(accountName: Text('Sajeeb',style: TextStyle(color: Colors.black),), accountEmail: Text('Sajeebshuvo68@gmail.com'),decoration: BoxDecoration(color: Colors.black38),
                  currentAccountPicture: Image.network("https://img.freepik.com/free-vector/stroke-round-geometric-shape-vector_53876-175080.jpg?w=2000"),

                )
            ),
            ListTile(leading: Icon(Icons.home),title: Text('Home'),onTap: (){MySnackBar('Home is pressed', context);},),
            ListTile(leading: Icon(Icons.email),title: Text('Email'),onTap: (){MySnackBar('email is pressed', context);},)



          ],
        ),
      ),
    );
  }
}

