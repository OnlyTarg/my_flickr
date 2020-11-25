import 'package:flutter/material.dart';

class UIPictureSearch extends SearchDelegate {
  String key = '1878b60ed3d42f39de436585dbf7a980';
  String secret = '6bd5beb49d3184e8';

  @override
  List<Widget> buildActions(BuildContext context) {
    //Pictures provider = Provider.of<Pictures>(context, listen: false);
    return [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () async {
          //provider.getPicturesFromJSON();
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(child: Text(query));
  }
}
