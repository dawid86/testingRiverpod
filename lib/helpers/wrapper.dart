import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/helpers/providers.dart';
import 'package:myapp/ui/pages/homepage.dart';

import '../ui/pages/authenticate.dart';

class Wrapper extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final userNameProviderOutput = ref.refresh(verifiedUserNameProvider);
    final isUserVerifiedProviderOutput = ref.refresh(isUserVerifiedProvider);

    //final verifiedUserNameProviderOutput = ref.watch(verifiedUserNameFromClassProvider);
    //final isVerifiedUserProviderOutput = ref.watch(isUserVerifiedFromClassProvider);

    print('this is from provider & global variables: $userNameProviderOutput and $isUserVerifiedProviderOutput');

    //print('this is from provider & class variables: $verifiedUserNameProviderOutput and $isVerifiedUserProviderOutput');

    if (isUserVerifiedProviderOutput == true) {

      return MyHomePage();
    } else {
      return const Authenticate();
    }
  }
}