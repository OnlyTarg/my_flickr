import 'package:flutter/material.dart';
import 'package:my_flickr/widgets/ui_picture_search.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  MyAppBar({@required this.height});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Flickr app'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: UIPictureSearch());
          },
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
