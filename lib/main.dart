import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Lists for comparison
  final List<int> list1 = [1, 2, 3];
  final List<int> list2 = [3, 2, 1];

  // Maps for comparison
  final Map<String, int> map1 = {'a': 1, 'b': 2};
  final Map<String, int> map2 = {'b': 2, 'a': 1};

  // Nested lists for deep comparison
  final List<dynamic> nestedList1 = [
    1,
    2,
    {'a': 1, 'b': 2}
  ];
  final List<dynamic> nestedList2 = [
    {'b': 2, 'a': 1},
    2,
    1
  ];

  // Equality instances for various comparisons
  final listEquality = const ListEquality();
  final unorderedEquality = const UnorderedIterableEquality();
  final mapEquality = const MapEquality();
  final deepEquality = const DeepCollectionEquality();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collection Equality Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Collection Equality Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display results of list equality comparison
              Text('List Equality: ${listEquality.equals(list1, list2)}'),

              // Display results of unordered list equality comparison
              Text(
                  'Unordered List Equality: ${unorderedEquality.equals(list1, list2)}'),

              // Display results of map equality comparison
              Text('Map Equality: ${mapEquality.equals(map1, map2)}'),

              // Display results of deep collection equality comparison
              Text(
                  'Deep Collection Equality: ${deepEquality.equals(nestedList1, nestedList2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
