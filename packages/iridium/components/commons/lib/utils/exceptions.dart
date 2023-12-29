T? tryOrNull<T>(T Function() closure) => tryOr(null, closure);

T? tryOr<T>(T? defaultValue, T Function() closure) {
  try {
    return closure();
  } on Exception {
    return defaultValue;
  }
}

Future<T?> waitTryOrNull<T>(Future<T?> Function() closure) =>
    waitTryOr(null, closure);

Future<T?> waitTryOr<T>(T? defaultValue, Future<T?> Function() closure) async {
  try {
    return await closure();
  } on Exception {
    return defaultValue;
  }
}
