import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/helpers/providers.dart';
import 'package:myapp/helpers/wrapper.dart';
import 'package:myapp/models/user.dart';
import 'package:myapp/services/future_service.dart';

class Authenticate extends ConsumerStatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  ConsumerState<Authenticate> createState() => _Authenticate();
}

class _Authenticate extends ConsumerState<Authenticate> {

  final TextEditingController userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //final vUser = ref.watch(userProvider(userInput.value.text));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Riverpod'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello there'),
              TextField(
                controller: userInput,
              ),
              ElevatedButton(
                  onPressed: () async {
                    print(userInput.value.text);
                    //vUser;
                    User checkVerification;
                    checkVerification = await VerifyUser().verifyUser(userInput.value.text);
                    print(checkVerification.userVerified);
                    //print(vUser.value?.userVerified);
                    if (checkVerification.userVerified == true) {
                      print('going2wrapper');
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Wrapper()));
                    }},
                  child: const Text('Verify User'))
            ])
      )
    );
  }
}