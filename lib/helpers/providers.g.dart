// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$verifyUserRepoHash() => r'8656d3b7733f19066d68dbc37105024f8c64af17';

/// See also [verifyUserRepo].
final verifyUserRepoProvider = AutoDisposeProvider<VerifyUser>(
  verifyUserRepo,
  name: r'verifyUserRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$verifyUserRepoHash,
);
typedef VerifyUserRepoRef = AutoDisposeProviderRef<VerifyUser>;
String _$verifiedUserNameHash() => r'53b2e689c7609a9f5290ac9ac31b40c929e33d7e';

/// See also [verifiedUserName].
final verifiedUserNameProvider = AutoDisposeProvider<String>(
  verifiedUserName,
  name: r'verifiedUserNameProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$verifiedUserNameHash,
);
typedef VerifiedUserNameRef = AutoDisposeProviderRef<String>;
String _$isUserVerifiedHash() => r'e140924352af8b858ef0a2a7aa56507dc05a6c97';

/// See also [isUserVerified].
final isUserVerifiedProvider = AutoDisposeProvider<bool>(
  isUserVerified,
  name: r'isUserVerifiedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isUserVerifiedHash,
);
typedef IsUserVerifiedRef = AutoDisposeProviderRef<bool>;
String _$verifiedUserNameFromClassHash() =>
    r'378907334695929f375a46403ff056749d7ff60f';

/// See also [verifiedUserNameFromClass].
final verifiedUserNameFromClassProvider = AutoDisposeProvider<String>(
  verifiedUserNameFromClass,
  name: r'verifiedUserNameFromClassProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$verifiedUserNameFromClassHash,
);
typedef VerifiedUserNameFromClassRef = AutoDisposeProviderRef<String>;
String _$isUserVerifiedFromClassHash() =>
    r'5ad3a5190ed6d80b1d5062688ea63e12978d22c9';

/// See also [isUserVerifiedFromClass].
final isUserVerifiedFromClassProvider = AutoDisposeProvider<bool>(
  isUserVerifiedFromClass,
  name: r'isUserVerifiedFromClassProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isUserVerifiedFromClassHash,
);
typedef IsUserVerifiedFromClassRef = AutoDisposeProviderRef<bool>;
