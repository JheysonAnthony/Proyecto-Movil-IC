import 'package:flutter/material.dart';

class ExploreTab extends StatefulWidget {
  ExploreTab({Key key}) : super(key: key);

  @override
  _ExploreTabState createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Explore'),
      ),
    );
  }
}
