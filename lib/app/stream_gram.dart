import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stream_gram/app/app.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';

import '../components/login/login.dart';


/// Main entry point to the Stream-gram application.
/// {@endtemplate}
class StreamgramApp extends StatefulWidget {
  /// {@macro app}
  const StreamgramApp({
    Key? key,
    required this.appTheme,
  }) : super(key: key);

  /// App's theme data.
  final AppTheme appTheme;

  @override
  State<StreamgramApp> createState() => _StreamgramAppState();
}

class _StreamgramAppState extends State<StreamgramApp> {
  final _client = StreamFeedClient('API KEY'); // TODO: Add Stream API Token
  late final appState = AppState(client: _client);

  // Important to only initialize this once.
  // Unless you want to update the bloc state
  late final feedBloc = FeedBloc(client: _client);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: appState,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Stream-gram',
        theme: widget.appTheme.lightTheme,
        darkTheme: widget.appTheme.darkTheme,
        themeMode: ThemeMode.dark,
        builder: (context, child) {
          // Stream Feeds provider to give access to [FeedBloc]
          // This class comes from Stream Feeds.
          return FeedProvider(
            bloc: feedBloc,
            child: child!,
          );
        },
        home: const LoginScreen(),
      ),
    );
  }
}
