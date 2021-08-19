extension DynamicX on dynamic {
  bool get isNull => this == null;

  bool get isBlank {
    switch (runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return this.isEmpty as bool;
      default:
        return toString() == 'null' || toString().trim().isEmpty;
    }
  }

  /// Checks if data is null or blank (empty or only contains whitespace).
  bool get isNullOrBlank {
    if (isNull) return true;

    return isBlank;
  }
}
