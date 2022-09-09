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
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTUyMDI0ODYsInVzZXJfaWQiOiJld2VsZS12YWwifQ.thDSaUgRj-b46OFAMYzTuOx1LkdRqRJvpbEKX6R4sTQ'),
    DemoAppUser.wisdom: const Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTUyMDI0OTcsInVzZXJfaWQiOiJ3aXNkb20tdmFsIn0.Ea7WtmVTEVibWw8MXldE_jiu63r9Obbko5Tlt1YWZ3Y'),
    DemoAppUser.ugo: const Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTUyMDI0OTEsInVzZXJfaWQiOiJ1Z28tdmFsIn0.iaBbFjFz4FQFHRLHXChyrXBJeTB7PJcMlNNK4VT7zUI'),
    DemoAppUser.wellz: const Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTUyMDI1MDMsInVzZXJfaWQiOiJ3ZWxsei13YXJkZW4ifQ.JbskyRYUHJU3XBS8mOldJATzLs9_7s-lIZMxPHJ8Hig'),
  }[this];
}