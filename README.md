# Flutter Collection Equality

This repository demonstrates how to compare lists and maps using various equality libraries available in Dart for CLI projects and Flutter apps.

## Table of Contents

- [Introduction](#introduction)
- [ListEquality](#listequality)
- [UnorderedIterableEquality](#unorderediterableequality)
- [MapEquality](#mapequality)
- [deepCollectionEquality](#deepcollectionequality)
- [Getting Started](#getting-started)

## Introduction

When working with collections like lists and maps in Dart and Flutter, it's important to understand how equality is determined. Dart provides several equality libraries that offer different ways to compare collections for equality. This repository demonstrates the usage of these libraries.

## ListEquality

The `ListEquality` class from the `package:collection` library allows you to compare lists in a flexible manner, either in ordered or unordered fashion.

```dart
import 'package:collection/collection.dart';

final listEquality = ListEquality();

final list1 = [1, 2, 3];
final list2 = [3, 2, 1];

print(listEquality.equals(list1, list2)); // Output: false
```

## UnorderedIterableEquality
The `UnorderedIterableEquality` class is also part of the `package:collection` library and compares collections without considering their order.

```dart
import 'package:collection/collection.dart';

final unorderedEquality = UnorderedIterableEquality();

final list1 = [1, 2, 3];
final list2 = [3, 2, 1];

print(unorderedEquality.equals(list1, list2)); // Output: true
```

## MapEquality
The `MapEquality` class allows you to compare maps for equality, considering keys and values.

```dart
import 'package:collection/collection.dart';

final mapEquality = MapEquality();

final map1 = {'a': 1, 'b': 2};
final map2 = {'b': 2, 'a': 1};

print(mapEquality.equals(map1, map2)); // Output: true
```

## DeepCollectionEquality
When working with Flutter, you can use the `DeepCollectionEquality` function to compare nested collections like lists and maps.

```dart
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

final deepEquality = DeepCollectionEquality();

final list1 = [1, 2, {'a': 1, 'b': 2}];
final list2 = [{'b': 2, 'a': 1}, 2, 1];

print(deepEquality.equals(list1, list2)); // Output: true
```

## Getting Started
To run the examples in this repository, follow these steps:

 - Clone this repository: git clone https://github.com/itsmelaxman/flutter-collection-equality.git
 - Navigate to the repository: cd flutter-collection-equality
 - Run the main.dart
