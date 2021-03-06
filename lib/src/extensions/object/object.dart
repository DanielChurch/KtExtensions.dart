import 'package:kotlin_extensions/typedefs.dart';

extension Also<T> on T {
  /// Calls the specified function [Block] with `this`
  /// value as its argument and returns `this` value.
  ///
  /// Example:
  /// ```Dart
  /// Map<K, V> toMap<K, V>(Iterable<Map<K, V>> mapEntries) {
  ///   return <K, V>{}.also((output) => mapEntries.forEach(output.addAll));
  /// }
  /// ```
  T also(Block<T, void> block) {
    ArgumentError.checkNotNull(block, 'block');

    block(this);

    return this;
  }
}

extension Let<T> on T {
  /// Calls the specified function [block] with `this`
  /// value as its argument and returns its result.
  ///
  /// Example:
  /// ```Dart
  /// String reverse(String text) {
  ///   return text?.let((text) {
  ///     final characters = text.split('');
  ///     final backwards = characters.reversed;
  ///
  ///     return backwards.join('');
  ///   }) ?? '';
  /// }
  ///
  /// reverse('Hello'); // => 'olleH'
  /// ```
  R let<R>(Block<T, R> block) {
    ArgumentError.checkNotNull(block, 'block');

    return block(this);
  }
}

extension To<K> on K {
  /// Creates a [MapEntry<T, V>] from [this] to [that].
  ///
  /// Examples:
  /// ```Dart
  /// print('Hello'.to('World')); // => MapEntry(Hello, World)
  /// ```
  MapEntry<K, V> to<V>(V that) => MapEntry<K, V>(this, that);
}
