abstract class UserStates {}

class InitialUserState extends UserStates {}

class GetUserLoadingState extends UserStates {}

class GetUserSuccessState extends UserStates {}

class GetInfractionSuccessState extends UserStates {}

class GetUserCachedSuccessState extends UserStates {}

class GetUserErrorState extends UserStates {
  final String error;

  GetUserErrorState(this.error);
}

class GetInfractionErrorState extends UserStates {
  final String error;

  GetInfractionErrorState(this.error);
}

class ChangeObscurePassFlagUserState extends UserStates {}

class ChangeObscureConfirmFlagUserState extends UserStates {}

class LogOutSuccessUserState extends UserStates {}

//coupon States

class CreateCouponLoadingState extends UserStates {}

class CreateCouponSuccessState extends UserStates {}

class CreateCouponErrorState extends UserStates {
  final String error;

  CreateCouponErrorState(this.error);
}

//get coupons States

class GetCouponLoadingState extends UserStates {}

class GetCouponSuccessState extends UserStates {}

class GetCouponErrorState extends UserStates {
  final String error;

  GetCouponErrorState(this.error);
}
