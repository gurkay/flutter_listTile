import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final List<ListItem> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          },
        ),
      ),
    );
  }
}

// The base class for the different types of items the list can contain
abstract class ListItem {
  // The title line to show in a list item
  Widget buildTitle(BuildContext context);
  // The subtitle line, if any, to show in a list item
  Widget buildSubtitle(BuildContext context);
}

// A ListItem that contains data to display a heading
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget buildSubtitle(BuildContext context) => null;
}

// A ListItem that contains data to display a message
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  Widget buildTitle(BuildContext context) => Text(sender);
  Widget buildSubtitle(BuildContext context) => Text(body);
}
