import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String url;

  const ListItem({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: double.infinity,
        child: Icon(
          Icons.picture_as_pdf,
        ),
      ),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(url),
          LinearProgressIndicator(
            value: 0,
          ),
          Text('Ожидает начала загрузки'),
        ],
      ),
      trailing: SizedBox(
        height: double.infinity,
        child: Icon(
          Icons.pause_circle_outline,
        ),
      ),
    );
  }
}
