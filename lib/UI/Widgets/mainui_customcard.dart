import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  double _width;
  double _height;
  double _aspectRatio;
  String title;
  String price;
  String dateAdded;
  String category;
  String description;
  String image;
  String location;

  CustomCard(
      {this.title,
      this.price,
      this.dateAdded,
      this.category,
      this.description,
      this.image,
      this.location});

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: _height / 40),
                ),
                Container(
                  width: _width / 2.75,
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          price,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          color: Colors.grey[200],
                          child: Text(
                            category,
                            softWrap: true,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Container(
                      width: _width / 2.5,
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: _height / 70,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Container(
                    width: _width / 2.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          child: GestureDetector(
                            child: Icon(
                              Icons.favorite_border,
                              size: _height / 30,
                            ),
                            onTap: () {
                              print('Fav');
                            },
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              dateAdded,
                              style: TextStyle(fontSize: _height / 65),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  size: _height / 65,
                                ),
                                Text(
                                  location,
                                  style: TextStyle(fontSize: _height / 65),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: _width / 2.5,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: _height / 4,
                width: _width / 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
