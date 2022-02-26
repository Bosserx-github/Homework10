import 'package:flutter/material.dart';
import 'package:homework10/models/post_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedScreen extends StatefulWidget {

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool isPressed = false;
  List<String>_Comments=[];
  var sum = "524,680";
  var _controller = TextEditingController();
  Widget _buildPost(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        //height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(posts[index].authorImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[index].authorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(posts[index].timeAgo),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),

                  ),

                  InkWell(
                    onDoubleTap: () => print('Like post'),

                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 5),
                            blurRadius: 100.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: RichText(
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Limited to just 32 pieces, the jacket can be pre-ordered now for delivery in April 2022.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                new IconButton(
                                  icon: Icon(isPressed
                                      ? Icons.favorite
                                        : FontAwesomeIcons.heart),
                                  iconSize: 30.0,
                                    color: isPressed ? Colors.red: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      isPressed = !isPressed;
                                      if(sum == "524,680"){
                                        sum = "524,681";
                                      }
                                      else if(sum == "524,681"){
                                        sum = "524,680";
                                      }
                                    });
                                  },
                                ),

                                Text(
                                  '$sum',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(isPressed
                                      ? Icons.comment
                                  : FontAwesomeIcons.comment),
                                  iconSize: 27.0,
                                    color: isPressed ? Colors.black: Colors.black,
                                  onPressed: (){
                                    setState(() {
                                      isPressed = !isPressed;
                                    });
                                  },
                                ),
                                Text(
                                  '350',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          iconSize: 30.0,
                          onPressed: () => print('Save post'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: RichText(
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Like By ",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: " Diana , BMW F30 Series,",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )
                          ),
                          TextSpan(
                              text: " Kerryman",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )
                          ),
                          TextSpan(
                            text: " and",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: " 524,678 other",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: RichText(
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Junior Salarza",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                                text: " That's a woderful car !!",
                                style: TextStyle(

                                  color: Colors.black,
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: RichText(
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Larrson Evering",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                                text: " Wow 😍 ",
                                style: TextStyle(

                                  color: Colors.black,
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: RichText(
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " annamehsa7",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: " Para cuando vuelven a la F1 ?",
                              style: TextStyle(
                                color: Colors.black,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children:[
                          for(int i=0;i<_Comments.length;i++)
                          Row(
                          children: [
                              Text( "Mercedes Benz ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text( "${_Comments[i]}",
                                  style: TextStyle(

                                    color: Colors.black,
                                  )
                              ),
                            ),
                          ],
                        ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                    controller: _controller,
                    onSubmitted: (_input){
                    setState(() {
                    _Comments.add(_input);
                    _controller.clear();
                    });},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: ' Add a comment',
                        prefixIcon: Container(
                          margin: EdgeInsets.all(4.0),
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                  "assets/images/benz.png"),
                            ),
                          ),
                        ),
                        suffixIcon: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          width: 50.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Color(0xFF23B66F),
                            onPressed: () => print('Post comment'),
                            child: Icon(
                              Icons.send,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'SupercarNews',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),

                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                      iconSize: 40.0,
                      onPressed: () => print('Profile'),
                    ),

                    /*Container(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Icons.person),
                        iconSize: 30.0,
                        onPressed: () => print('Direct Messages'),
                      ),
                    )*/
                    Text(
                      'Mercedez Benz',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          _buildPost(0),
          _buildPost(1),
          _buildPost(2),
          _buildPost(3),
          _buildPost(4),
        ],
      ),
        /*bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: null,
                ),

              ],
            ),
          ),
        )*/
      /*bottomNavigationBar: Container(
        height: 85.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0,-2),
              blurRadius: 20.0,
            )
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              contentPadding: EdgeInsets.all(20.0),
              hintText: 'Add a comment',
              prefixIcon: Container(
                margin: EdgeInsets.all(4.0),
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                        "assets/images/benz.jpg"),
                  ),
                ),
              ),
              suffixIcon: Container(
                margin: EdgeInsets.only(right: 4.0),
                width: 70.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xFF23B66F),
                  onPressed: () => print('Post comment'),
                  child: Icon(
                    Icons.send,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      )*/
    );
  }
}