import 'dart:ui';
import 'package:flutter/material.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});
  static const String routeName = '/learningpage';
  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final Color oddItemColor = Colors.lime.shade100;
    final Color evenItemColor = Colors.deepPurple.shade100;

    final List<Card> cards = <Card>[
      for (int index = 0; index < _items.length; index += 1)
        Card(
          key: Key('$index'),
          color: _items[index].isOdd ? oddItemColor : evenItemColor,
          child: SizedBox(
            height: 80,
            width: 80,
            child: Center(
              child: Text('Card ${_items[index]}'),
            ),
          ),
        ),
    ];

    Widget proxyDecorator(
        Widget child, int index, Animation<double> animation) {
      return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          final double animValue = Curves.easeInOut.transform(animation.value);
          final double elevation = lerpDouble(1, 6, animValue)!;
          final double scale = lerpDouble(1, 1.02, animValue)!;
          return Transform.scale(
            scale: scale,
            // Create a Card based on the color and the content of the dragged one
            // and set its elevation to the animated value.
            child: Card(
              elevation: elevation,
              color: cards[index].color,
              child: cards[index].child,
            ),
          );
        },
        child: child,
      );
    }

    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Generate'),
        ),
        SizedBox(
          height: 100,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 125,
          child: ReorderableListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 30),
            proxyDecorator: proxyDecorator,
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final int item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            },
            children: cards,
          ),
        ),
      ],
    );
  }
}
