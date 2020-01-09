import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
  
  Widget imageCarousel = Container(
    height: 300.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/banner_1.jpeg'),
        AssetImage('images/banner_2.jpeg'),
        AssetImage('images/banner_3.jpeg'),
        AssetImage('images/banner_4.jpeg')
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 8.0,
      dotColor: Colors.red,
    
    ),
  );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Demo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){},),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){},)
        ],
      ),
      
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Sunil',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )), 
              accountEmail: Text('sunil@test.com',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Home Page',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.home),
                )
              ),

              
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.person),
                )
              ),


              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.shopping_basket),
                )
              ),


              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Categories',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.dashboard),
                )
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.shopping_basket),
                )
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.favorite),
                )
              ),

              Divider(),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.settings),
                )
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About',style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                  )),
                  leading: Icon(Icons.help, color: Colors.blue),
                )
              ),



          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories', style: TextStyle(
                    fontSize: 22.0, 
                    fontWeight: FontWeight.bold,
            )),
          ),
          Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: numbers.length, itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    'https://as1.ftcdn.net/jpg/01/68/35/60/500_F_168356062_SIxWcRHtAosaf9vk19rzv4Mvfpv1Me5e.jpg',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                ),
              );
        }),
      )
         

          
          

        ],
      ),
      
    );
  }

  


}



