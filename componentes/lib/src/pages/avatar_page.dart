import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avatar Page'), actions: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.seresmitologicos.net/wp-content/uploads/2011/05/dragon.jpg"),
            radius: 20.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Text("SL"),
            backgroundColor: Colors.amber,
          ),
        )
      ]),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://image.freepik.com/vector-gratis/dragon-dibujado-mano_53876-88179.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_left),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
