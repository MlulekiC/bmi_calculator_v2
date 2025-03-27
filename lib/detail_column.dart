import 'package:flutter/material.dart';
import 'constants.dart';

class DetailColumn extends StatefulWidget {
  DetailColumn({
    super.key,
    required this.age,
    required this.text,
  });

  double age;
  String text;

  @override
  State<DetailColumn> createState() => _DetailColumnState();
}

class _DetailColumnState extends State<DetailColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(widget.text, style: kLabelTextStyle),
        Text("${widget.age}", style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                width: 50,
                height: 50,
                child: FloatingActionButton.large(
                  heroTag: "btn1",
                  onPressed: () {
                    setState(() {
                      widget.age -= 1;
                    });
                  },
                  shape: const CircleBorder(),
                  child: const Icon(Icons.remove, size: 45),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: 20,
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: 50,
                height: 50,
                child: FloatingActionButton.large(
                  heroTag: "btn2",
                  onPressed: () {
                    setState(() {
                      widget.age += 1;
                    });
                  },
                  shape: const CircleBorder(),
                  child: const Icon(Icons.add, size: 45),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Widget widget;
  final Color color;

  ReusableCard(this.widget, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        child: widget,
      ),
    );
  }
}
