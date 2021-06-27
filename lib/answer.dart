import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? selectHandler;
  final String answerText;
  const Answer({Key? key, this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.amber,
        width: double.infinity,
        child:
            ElevatedButton(onPressed: selectHandler, child: Text(answerText)),
      ),
    );
  }
}
