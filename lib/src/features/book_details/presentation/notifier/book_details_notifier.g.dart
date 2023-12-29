part of 'book_details_notifier.dart';

String _$bookDetailsNotifierHash() =>
    r'0e8d835073df2c1de5aefb6f0437005ebef67290';

class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    hash = 0x1fffffff & (hash + value);
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$BookDetailsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<CategoryFeed> {
  late final String url;

  Future<CategoryFeed> build(
    String url,
  );
}

@ProviderFor(BookDetailsNotifier)
const bookDetailsNotifierProvider = BookDetailsNotifierFamily();

class BookDetailsNotifierFamily extends Family<AsyncValue<CategoryFeed>> {
  const BookDetailsNotifierFamily();

  BookDetailsNotifierProvider call(
    String url,
  ) {
    return BookDetailsNotifierProvider(
      url,
    );
  }

  @override
  BookDetailsNotifierProvider getProviderOverride(
    covariant BookDetailsNotifierProvider provider,
  ) {
    return call(
      provider.url,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookDetailsNotifierProvider';
}

class BookDetailsNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookDetailsNotifier, CategoryFeed> {
  BookDetailsNotifierProvider(
    this.url,
  ) : super.internal(
          () => BookDetailsNotifier()..url = url,
          from: bookDetailsNotifierProvider,
          name: r'bookDetailsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookDetailsNotifierHash,
          dependencies: BookDetailsNotifierFamily._dependencies,
          allTransitiveDependencies:
              BookDetailsNotifierFamily._allTransitiveDependencies,
        );

  final String url;

  @override
  bool operator ==(Object other) {
    return other is BookDetailsNotifierProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<CategoryFeed> runNotifierBuild(
    covariant BookDetailsNotifier notifier,
  ) {
    return notifier.build(
      url,
    );
  }
}
