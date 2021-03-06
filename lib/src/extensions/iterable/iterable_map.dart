import 'package:kotlin_extensions/map.dart' show MapToIterable, ToList;

extension ToMap<K, V> on Iterable<MapEntry<K, V>> {
  /// Returns a new [Map] containing all key-value pairs from the given collection.
  ///
  /// The returned [Map] preserves the entry iteration order of the original collection.
  /// If any of two pairs would have the same key the last one gets added to the map.
  ///
  /// Related: [MapToIterable], [ToList]
  ///
  /// Examples:
  /// ```Dart
  /// [{'Hello': 'World'}, {'Foo': 'Bar'}].toMap(); // => ({'Hello': 'World', 'Foo': 'Bar'})
  /// [0, 1, 2, 3].map((i) => {i: i + 1}).toMap(); // => {0: 1, 1: 2, 2: 3, 3: 4}
  /// [{'Hello': 'Foo'}, {'Hello': 'World'}].toMap(); // => {'Hello': 'World'}
  /// ```
  Map<K, V> toMap() => Map.fromEntries(this);
}
