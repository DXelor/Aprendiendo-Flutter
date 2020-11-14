import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  get card => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      //clipBehavior: Clip.antiAlias, //"rellena la tarjeta"
      elevation: 5.9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blueGrey,
            ),
            title: Text('Card 01'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur nibh sit amet nisl faucibus, in iaculis orci blandit. Praesent volutpat egestas sapien et elementum. Quisque luctus sapien quam,'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5.9,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://www.1zoom.me/big/25/55928-hakufu.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          //Image(image: NetworkImage('https://i.imgur.com/PfoJst3.jpg')),
          Container(padding: EdgeInsets.all(10.0), child: Text('Card 02')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey,
              blurRadius: 9.0,
              spreadRadius: 0.5,
              offset: Offset(10.1, 5.5))
        ],
        border: Border.all(
          color: Colors.blue,
          width: 1,
        ),
      ),
      child: ClipRect(
        child: card,
      ),
    );
  }
}
