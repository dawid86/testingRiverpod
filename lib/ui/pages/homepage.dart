import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/helpers/providers.dart';
import 'package:myapp/services/future_service.dart';
import 'package:myapp/ui/pages/authenticate.dart';

import '../../helpers/wrapper.dart';

class MyHomePage extends ConsumerStatefulWidget {



  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final verifiedUser = ref.watch(verifiedUserNameProvider);

  return Scaffold(
      appBar: AppBar(
        title: Text('Testing Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is value from Provider',
            ),
            Text(
              '$verifiedUser',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          VerifyUser().disposeVerifiedUserName();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Authenticate()));
        },
        child: const Icon(Icons.free_breakfast),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}