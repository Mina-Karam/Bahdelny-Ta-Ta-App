

import 'package:bhdelni/cubit/user/user_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/firebase/firebase_reposatory.dart';

class UserCubit extends Cubit<UserStates> {
  UserCubit() : super(InitialUserState());

  static UserCubit get(context) => BlocProvider.of(context);

  Map<String, dynamic>? user;


  bool obscurePassFlag = true;

  bool obscureConfirmFlag = true;

  final FirebaseReposatory _firebaseReposatory = FirebaseReposatory();

  void getUserData() {
    _firebaseReposatory.getUserData().then((value) {
      user = value.data() as Map<String, dynamic>;
      emit(GetUserSuccessState());
    }).catchError((error) {
      emit(GetUserErrorState(error.toString()));
    });
  }

  void logout() {
    _firebaseReposatory.logout();
    emit(LogOutSuccessUserState());
  }

  void changeObscurePassFlag(flag) {
    obscurePassFlag = flag;
    emit(ChangeObscurePassFlagUserState());
  }

  void changeObscureConfirmFlag(flag) {
    obscureConfirmFlag = flag;
    emit(ChangeObscureConfirmFlagUserState());
  }

}