import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.amber,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Chess Board',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: ChessBoard(),
        ),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  const ChessBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(8, (index1) {
        return Column(
          children: List.generate(8, (index2) {
            return RowColumns(index1, index2);
          }),
        );
      }),
    );
  }
}

class RowColumns extends StatelessWidget {
  final int row;
  final int col;
  RowColumns(this.col, this.row);
  @override
  Widget build(BuildContext context) {
    bool isEvenTile = (row + col) % 2 == 0;
    Color boxColor = isEvenTile ? Colors.black : Colors.grey.shade300;
    return Container(
      height: 80,
      width: 80,
      color: boxColor,
    );
  }
}

