import 'package:flutter/material.dart';

class MyDisplayPage extends StatelessWidget {

  final int start;
  final int end;

  const MyDisplayPage({super.key, required this.start, required this.end});

  List<int> _generateNumberRange() {
    if (start < end) {
      return List.generate(end - start - 1, (index) => start + index + 1);
    } else if (start > end) {
      return List.generate(start - end - 1, (index) => end + index + 1);
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {

    final range = _generateNumberRange();

    return Scaffold(
      appBar: AppBar(title: const Text('Numbers in Range')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: range.isNotEmpty
            ? ListView.builder(
          itemCount: range.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(range[index].toString()),
          ),
        )
            : Center(child: Text('No numbers in range')),
      ),
    );
  }
}
