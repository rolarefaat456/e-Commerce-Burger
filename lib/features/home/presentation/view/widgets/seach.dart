
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () => query = '', icon: Icon(CupertinoIcons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List suggestedhBurger = [
      'burger',
      'burger',
    ].where((burger) => burger.toLowerCase().startsWith(query)).toList();
    return Column(children: [Text(suggestedhBurger.join("||"))]);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List resuktBurger = [
      'burger',
      'burger',
    ].where((burger) => burger.toLowerCase().startsWith(query)).toList();
    return Column(children: [Text(resuktBurger.join("||"))]);
  }
}
