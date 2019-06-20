import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_classifiedappclone/Model/categoryModel.dart';
import 'package:flutter_classifiedappclone/Model/productModel.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/custom_shape.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/mainui_customcard.dart';


class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  var scaffoldKey = GlobalKey<ScaffoldState>();


  bool isExpanded = false;
  List<Category> categoryItems;
  List<Product> trendingListItems;
  List<Product> recommendListItems;
  List<Product> dealsListItems;
  double _height;
  double _width;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    trendingListItems = [
      Product(
          123,
          "02 Apr 2019",
          "Lenovo T450",
          "Discover the Lenovo ThinkPad T450, a 14-inch thin and light business Ultrabook with the newest Intel Core i processor, backlit keyboard and up to 17 hours battery backup.",
          40000,
          "5 months",
          "Electronics",
          8377028021,
          "assets/images/lenovot450.jpg",
          true),
      Product(
          124,
          "05 Apr 2019",
          "Samsung S9+",
          "Discover Galaxy S9 and S9+ and the revolutionary camera that adapts like the human eye.",
          60000,
          "5 months",
          "Mobiles",
          8377028021,
          "assets/images/samsuns9+.jpg",
          true),
      Product(
          125,
          "23 Mar 2019",
          "Himalayan",
          "The Himalayan is an ‘all-rounder’ motorcycle built on an all new platform from Royal Enfield. It is a 411cc adventure motorcycle which was partly developed in the United Kingdom. The motorcycle brings a series of firsts for the brand.",
          100000,
          "5 months",
          "Bike",
          8377028021,
          "assets/images/bike.jpg",
          true),
      Product(
          126,
          "10 Feb 2019",
          "Canon 200D",
          "Canon EOS 200D 24.2MP Digital SLR Camera + EF-S 18-55 mm f4 is STM Lens, Free Camera Case and 16GB Card Inside",
          35000,
          "5 months",
          "Electronics",
          8377028021,
          "assets/images/canon.jpg",
          true),
      Product(
          127,
          "1 Jan 2019",
          "Sofa",
          "Bharat Lifestyle Nano Fabric 6 Seater Sofa",
          4000,
          "5 months",
          "Furniture",
          8377028021,
          "assets/images/sofa.jpg",
          true),
    ];
    recommendListItems = [
      Product(
          124,
          "05 Apr 2019",
          "Samsung S9+",
          "Discover Galaxy S9 and S9+ and the revolutionary camera that adapts like the human eye.",
          60000,
          "5 months",
          "Mobiles",
          8377028021,
          "assets/images/samsuns9+.jpg",
          true),
      Product(
          123,
          "02 Apr 2019",
          "Lenovo T450",
          "Discover the Lenovo ThinkPad T450, a 14-inch thin and light business Ultrabook with the newest Intel Core i processor, backlit keyboard and up to 17 hours battery backup.",
          40000,
          "5 months",
          "Electronics",
          8377028021,
          "assets/images/lenovot450.jpg",
          true),
      Product(
          125,
          "03 Dec 2018",
          "Himalayan",
          "The Himalayan is an ‘all-rounder’ motorcycle built on an all new platform from Royal Enfield. It is a 411cc adventure motorcycle which was partly developed in the United Kingdom. The motorcycle brings a series of firsts for the brand.",
          100000,
          "5 months",
          "Bike",
          8377028021,
          "assets/images/bike.jpg",
          true),
      Product(
          126,
          "15 Mar 2019",
          "Canon 200D",
          "Canon EOS 200D 24.2MP Digital SLR Camera + EF-S 18-55 mm f4 is STM Lens, Free Camera Case and 16GB Card Inside",
          35000,
          "5 months",
          "Electronics",
          8377028021,
          "assets/images/canon.jpg",
          true),
      Product(
          127,
          "09 Apr 2019",
          "Sofa",
          "Bharat Lifestyle Nano Fabric 6 Seater Sofa",
          4000,
          "5 months",
          "Furniture",
          8377028021,
          "assets/images/sofa.jpg",
          true),
    ];
    dealsListItems = [
      Product(
          125,
          "02 Jan 2019",
          "Himalayan",
          "The Himalayan is an ‘all-rounder’ motorcycle built on an all new platform from Royal Enfield. It is a 411cc adventure motorcycle which was partly developed in the United Kingdom. The motorcycle brings a series of firsts for the brand.",
          100000,
          "5 months",
          "Bike",
          8377028021,
          "assets/images/bike.jpg",
          true),
      Product(
          126,
          "10 Apr 2019",
          "Canon 200D",
          "Canon EOS 200D 24.2MP Digital SLR Camera + EF-S 18-55 mm f4 is STM Lens, Free Camera Case and 16GB Card Inside",
          35000,
          "5 months",
          "Electronics",
          8377028021,
          "assets/images/canon.jpg",
          true),
      Product(
          124,
          "05 Mar 2019",
          "Samsung S9+",
          "Discover Galaxy S9 and S9+ and the revolutionary camera that adapts like the human eye.",
          60000,
          "5 months",
          "Mobiles",
          8377028021,
          "assets/images/samsuns9+.jpg",
          true),
      Product(
          123,
          "02 Feb 2019",
          "Lenovo T450",
          "Discover the Lenovo ThinkPad T450, a 14-inch thin and light business Ultrabook with the newest Intel Core i processor, backlit keyboard and up to 17 hours battery backup.",
          40000,
          "5 months",
          "Electronics",
          8377028021,
          "assets/images/lenovot450.jpg",
          true),
      Product(
          127,
          "02 Dec 2012",
          "Sofa",
          "Bharat Lifestyle Nano Fabric 6 Seater Sofa",
          4000,
          "5 months",
          "Furniture",
          8377028021,
          "assets/images/sofa.jpg",
          true),
    ];
//    categoryItems = [
//      Category("Electronics", "assets/images/gadget.png"),
//      Category("Properties", "assets/images/house.png"),
//      Category("Jobs", "assets/images/job.png"),
//      Category("Furniture", "assets/images/sofa.png"),
//      Category("Cars", "assets/images/car.png"),
//      Category("Bikes", "assets/images/bike.png"),
//      Category("Mobiles", "assets/images/smartphone.png"),
//      Category("Pets", "assets/images/pet.png"),
//      Category("Fashion", "assets/images/dress.png"),
//    ];
  }

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: _bottomNavBar(),
      key: scaffoldKey,
      drawer: _drawer(),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 3,
        onPressed: () {},
        backgroundColor: Colors.orange[200],
        icon: Icon(Icons.camera_alt),
        label: Text("Post AD", textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              clipShape(),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Shop for',
                        style: TextStyle(
                             fontSize: 16)),
                    GestureDetector(
                        onTap: _expand,
                        child: Text(
                          isExpanded ? "Show less" : "Show all",
                          style: TextStyle(
                              color: Colors.orange[200],
                              ),
                        )),
                    //IconButton(icon: isExpanded? Icon(Icons.arrow_drop_up, color: Colors.orange[200],) : Icon(Icons.arrow_drop_down, color: Colors.orange[200],), onPressed: _expand)
                  ],
                ),
              ),
              expandList(),
              Divider(),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Trending",
                        style: TextStyle(
                            fontSize: 16)),
                    GestureDetector(
                        onTap: () {
                         // Navigator.of(context).pushNamed(TRENDING_UI);
                          print('Showing all');
                        },
                        child: Text(
                          'Show all',
                          style: TextStyle(
                              color: Colors.orange[300],
                             ),
                        ))
                  ],
                ),
              ),
              trendingProducts(),
              Divider(),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Recommendations",
                        style: TextStyle(
                             fontSize: 16)),
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(RECOMMEND_UI);
                          print('Showing all');
                        },
                        child: Text(
                          'Show all',
                          style: TextStyle(
                              color: Colors.orange[300],
                             ),
                        ))
                  ],
                ),
              ),
              recommendations(),
              Divider(),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Today's Deals",
                        style: TextStyle(
                             fontSize: 16)),
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(DEALS_UI);
                          print('Showing all');
                        },
                        child: Text(
                          'Show all',
                          style: TextStyle(
                              color: Colors.orange[300],
                              ),
                        ))
                  ],
                ),
              ),
              todaysDeals(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          Opacity(
            opacity: 0.75,
            child: Container(
              height: _height / 6,
              padding: EdgeInsets.only(top: _height / 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.black,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                title: Text("FlutterDevs"),
                subtitle: Text("flutterDevs@aeologic.com",style: TextStyle(fontSize: 13),),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Orders & Payments"),
          ),
        ],
      ),
    );
  }

  Widget _bottomNavBar() {
    return BottomAppBar(
      notchMargin: 4,
      shape: AutomaticNotchedShape(RoundedRectangleBorder(),RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child:  Container(
        margin: EdgeInsets.only(left: 50, right: 50),
        decoration: BoxDecoration(

            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),

            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget clipShape() {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.25,
          child: ClipPath(
            clipper: CustomShapeClipper3(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 40, top: _height / 3.75),
          child: Material(
            borderRadius: BorderRadius.circular(30.0),
            elevation: 8,
            child: Container(
              child: TextFormField(
                cursorColor: Colors.orange[200],
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon:
                  Icon(Icons.search, color: Colors.orange[200], size: 30),
                  hintText: "What're you looking for?",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
        ),
        Container(
          //color: Colors.blue,
            margin: EdgeInsets.only(left: 20, right: 20, top: _height / 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                        onTap: () {
                          scaffoldKey.currentState.openDrawer();
                        },
                        child: Image.asset(
                          'assets/images/menubutton.png',
                          height: _height / 40,
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: _height / 20,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            print('Editing location');
                          },
                          child: Icon(
                            Icons.edit_location,
                            color: Colors.white,
                            size: _height/40,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Flexible(
                            child: Text('Noida',
                                style: TextStyle(
                                    color: Colors.white, fontSize: _height/50),
                                // overflow: TextOverflow.fade,
                                softWrap: false)),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: GestureDetector(
                    onTap: (){},
                      child: Icon(Icons.notifications, color: Colors.black,size: _height/30,)),
                  ),
              ],
            )),


      ],
    );
  }

  Widget expandList() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: AnimatedCrossFade(
        firstChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          children: <Widget>[
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    //Navigator.of(context).pushNamed(ELECTRONICS_ITEM_LIST);
                    print('Routing to Electronics item list');
                  },
                  child: Image.asset(
                    'assets/images/gadget.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Electronics",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                      print('Routing to Properties item list');
                    },
                    child: Image.asset(
                      'assets/images/house.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Properties",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(JOBS_ITEM_LIST);
                      print('Routing to Jobs item list');
                    },
                    child: Image.asset(
                      'assets/images/job.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Jobs",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(FURNITURE_ITEM_LIST);
                      print('Routing to Furniture item list');
                    },
                    child: Image.asset(
                      'assets/images/sofa.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Furniture",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(CARS_ITEM_LIST);
                    print('Routing to Cars item list');
                  },
                  child: Image.asset(
                    'assets/images/car.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Cars",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(BIKES_ITEM_LIST);
                    print('Routing to Bikes item list');
                  },
                  child: Image.asset(
                    'assets/images/bike.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Bikes",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(MOBILES_ITEM_LIST);
                      print('Routing to Mobiles item list');
                    },
                    child: Image.asset(
                      'assets/images/smartphone.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Mobiles",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(PETS_ITEM_LIST);
                    print('Routing to Pets item list');
                  },
                  child: Image.asset(
                    'assets/images/pet.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Pets",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          ],
        ),
        secondChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          children: <Widget>[
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    //Navigator.of(context).pushNamed(ELECTRONICS_ITEM_LIST);
                    print('Routing to Electronics item list');
                  },
                  child: Image.asset(
                    'assets/images/gadget.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Electronics",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                      print('Routing to Properties item list');
                    },
                    child: Image.asset(
                      'assets/images/house.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Properties",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(JOBS_ITEM_LIST);
                      print('Routing to Jobs item list');
                    },
                    child: Image.asset(
                      'assets/images/job.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Jobs",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(FURNITURE_ITEM_LIST);
                      print('Routing to Furniture item list');
                    },
                    child: Image.asset(
                      'assets/images/sofa.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Furniture",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(CARS_ITEM_LIST);
                    print('Routing to Cars item list');
                  },
                  child: Image.asset(
                    'assets/images/car.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Cars",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(BIKES_ITEM_LIST);
                    print('Routing to Bikes item list');
                  },
                  child: Image.asset(
                    'assets/images/bike.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Bikes",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(MOBILES_ITEM_LIST);
                      print('Routing to Mobiles item list');
                    },
                    child: Image.asset(
                      'assets/images/smartphone.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Mobiles",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(PETS_ITEM_LIST);
                    print('Routing to Pets item list');
                  },
                  child: Image.asset(
                    'assets/images/pet.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Pets",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(FASHION_ITEM_LIST);
                    print('Routing to Fashion item list');
                  },
                  child: Image.asset(
                    'assets/images/dress.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Fashion",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
          ],
        ),
        crossFadeState:
        isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: kThemeAnimationDuration,
      ),
    );
  }

  Widget trendingProducts() {
    return Container(
      height: _height / 4.25,
      //width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: trendingListItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildTrendingEntries(context, index, trendingListItems);
        },
      ),
    );
  }

  Widget _buildTrendingEntries(BuildContext context, int index, List<Product> listItem) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).pushNamed(DETAIL_UI);
        print("Routing to trending list page");
      },
      child: CustomCard(
        title: '${listItem[index].title}',
        category: '${listItem[index].category}',
        price: "₹${listItem[index].price}",
        dateAdded: "${listItem[index].dateAdded}",
        description: "${listItem[index].desc}",
        image: "${listItem[index].image}",
        location: "Sector 62, Noida",
      ),
    );
  }

  Widget recommendations() {
    return Container(
      height: _height / 4.25,
      //width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: recommendListItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildRecommendationsEntries(
              context, index, recommendListItems);
        },
      ),
    );
  }

  Widget _buildRecommendationsEntries(BuildContext context, int index, List<Product> listItem) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DETAIL_UI);
        print("Routing to detail page");
      },
      child: CustomCard(
        title: '${listItem[index].title}',
        category: '${listItem[index].category}',
        price: "₹${listItem[index].price}",
        dateAdded: "${listItem[index].dateAdded}",
        description: "${listItem[index].desc}",
        image: "${listItem[index].image}",
        location: "Sector 62, Noida",
      ),
    );
  }

  Widget todaysDeals() {
    return Container(
      height: _height / 4.25,
      //width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: dealsListItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildDealsEntries(context, index, dealsListItems);
        },
      ),
    );
  }

  Widget _buildDealsEntries(BuildContext context, int index, List<Product> listItem) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DETAIL_UI);
        print("Routing to detail page");
      },
      child: CustomCard(
        title: '${listItem[index].title}',
        category: '${listItem[index].category}',
        price: "₹${listItem[index].price}",
        dateAdded: "${listItem[index].dateAdded}",
        description: "${listItem[index].desc}",
        image: "${listItem[index].image}",
        location: "Sector 62, Noida",
      ),
    );
  }
}
