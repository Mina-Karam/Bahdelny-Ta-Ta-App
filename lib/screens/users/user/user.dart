import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/local/cache_helper.dart';
import '../../../cubit/user/user_cubit.dart';
import '../../../cubit/user/user_states.dart';
import '../../../widgets/global/toast.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => UserCubit(),
        child: BlocConsumer<UserCubit, UserStates>(
          listener: (BuildContext context, UserStates state) {
            print('..........**************${state}');
            if (state is GetUserErrorState) {
              print(state.error);
            }
            if (state is LogOutSuccessUserState) {
              showToast(
                message: 'Log out Successfully',
              );
              CacheHelper.removeData(key: "user");
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserScreen(),
                  ));
            }
          },
          builder: (BuildContext context, UserStates state) {
            UserCubit userCube = UserCubit.get(context);
            double width = MediaQuery.of(context).size.width;
            double height = MediaQuery.of(context).size.height;

            return RefreshIndicator(
                onRefresh: () async {
                  userCube.getUserData();
                },
                child:Scaffold(),
            );
          },
        ));
  }
}
