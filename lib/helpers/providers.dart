import 'package:myapp/services/future_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user.dart';

part 'providers.g.dart';

@riverpod
VerifyUser verifyUserRepo(VerifyUserRepoRef ref) {
  return VerifyUser();
}

@riverpod
String verifiedUserName(VerifiedUserNameRef ref) => ref.watch(verifyUserRepoProvider).getVerifiedUserName();

@riverpod
bool isUserVerified(IsUserVerifiedRef ref) => ref.watch(verifyUserRepoProvider).getVerificationResult();


//testing class variables
@riverpod
String verifiedUserNameFromClass(VerifiedUserNameFromClassRef ref) => ref.watch(verifyUserRepoProvider).getVerifiedUserName();

@riverpod
bool isUserVerifiedFromClass(IsUserVerifiedFromClassRef ref) => ref.watch(verifyUserRepoProvider).getIsUserVerified();
/*

@riverpod
Future<User> user(
    UserRef ref,
    String input
    ) {
  return ref
      .watch(verifyUserRepoProvider)
      .verifyUser(input);
}*/
