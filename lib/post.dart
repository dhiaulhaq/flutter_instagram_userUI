import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget{
  final urlImage;
  final urlProifle = 'https://avatars0.githubusercontent.com/u/19872458?s=460&v=4';

  Post(this.urlImage);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white70,
        title: Text('Posts', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[

                  //Profile Picture
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        urlProifle,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //Username
                  Text(
                    'dhiaulhaq',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),

            //Posts
            Container(
              child: Hero(tag: urlImage, child: Image.network(urlImage, fit: BoxFit.cover)),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
            ),

            //Insight/Promotions
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("View Insights", style: TextStyle(color: Colors.blue, fontSize: 16)),
                  RaisedButton(onPressed: (){}, child: Text('Promote'), color: Colors.blue, textColor: Colors.white,)
                ],
              ),
            ),

            //Divider
            Divider(),

            //Icons
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Icon(Icons.favorite_border),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.comment),
                ),
                Icon(Icons.send),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.filter_frames),
                ),
              ],
            ),

            //Latest Post
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('September, 29, 2020', style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),

          ],
        ),
      ),
    );

  }
}