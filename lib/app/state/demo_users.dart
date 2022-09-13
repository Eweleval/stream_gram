import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';

/// Demo application users.
enum DemoAppUser {
  ewele,
  wisdom,
  ugo,
  wellz,
}

/// Convenient class Extension on [DemoAppUser] enum
extension DemoAppUserX on DemoAppUser {
  /// Convenient method Extension to generate an [id] from [DemoAppUser] enum
  String? get id => {
    DemoAppUser.ewele: 'ewele-val',
    DemoAppUser.wisdom: 'wisdom-val',
    DemoAppUser.ugo: 'ugo-val',
    DemoAppUser.wellz: 'wellz-warden',
  }[this];

  /// Convenient method Extension to generate a [name] from [DemoAppUser] enum
  String? get name => {
    DemoAppUser.ewele: 'Ewele Val',
    DemoAppUser.wisdom: 'Wisdom Val',
    DemoAppUser.ugo: 'Ugo Val',
    DemoAppUser.wellz: 'Wellz Warden',
  }[this];

  /// Convenient method Extension to generate [data] from [DemoAppUser] enum
  Map<String, Object>? get data => {
    DemoAppUser.ewele: {
      'first_name': 'Ewele',
      'last_name': 'Val',
      'full_name': 'Ewele Val',
    },
    DemoAppUser.wisdom: {
      'first_name': 'Wisdom',
      'last_name': 'Val',
      'full_name': 'Wisdom Val',
    },
    DemoAppUser.ugo: {
      'first_name': 'Ugo',
      'last_name': 'Val',
      'full_name': 'Ugo Val',
    },
    DemoAppUser.wellz: {
      'first_name': 'Wellz',
      'last_name': 'Warden',
      'full_name': 'Wellz Warden',
    },
  }[this];

  /// Convenient method Extension to generate a [token] from [DemoAppUser] enum
  Token? get token => <DemoAppUser, Token>{
    // TODO: Add User Frontend Tokens
    DemoAppUser.ewele: const Token(
        'TOKEN GENERATED FROM GETSTREAMS CLI'),
    DemoAppUser.wisdom: const Token(
        'TOKEN GENERATED FROM GETSTREAMS CLI'),
    DemoAppUser.ugo: const Token(
        'TOKEN GENERATED FROM GETSTREAMS CLI'),
    DemoAppUser.wellz: const Token(
        'TOKEN GENERATED FROM GETSTREAMS CLI'),
  }[this];
}
