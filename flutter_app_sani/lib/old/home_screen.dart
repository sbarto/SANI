import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[containerTop(size: size)],
      ),
    );
  }
}

class containerTop extends StatelessWidget {
  const containerTop({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.35,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          containerSearch(),
          circleBaseProfile(),
        ],
      ),
    );
  }
}

class containerSearch extends StatelessWidget {
  const containerSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Colors.grey.withOpacity(0.30)),
          ],
        ),
        child: Row(
          children: <Widget>[
            buttonSearch(),
          ],
        ),
      ),
    );
  }
}

class buttonSearch extends StatelessWidget {
  const buttonSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Cerca",
          hintStyle: TextStyle(color: Colors.blueGrey),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: Image(image: AssetImage("assets/ricerca.png")),
        ),
      ),
    );
  }
}

class circleBaseProfile extends StatelessWidget {
  const circleBaseProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -130,
      right: -85,
      width: 260,
      child: Container(
        child: Center(
          child: SvgPicture.asset(
            'assets/man_icon.svg',
          ),
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Colors.grey.withOpacity(0.30)),
          ],
        ),
      ),
    );
  }
}
