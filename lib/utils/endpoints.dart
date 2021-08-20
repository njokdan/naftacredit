mixin EndPoints {
  static const String APP_DOMAIN = 'naftacredit.com.ng';
  static const String API_ENDPOINT = '/api/v1';
  static const String BASE_URL = 'https://$APP_DOMAIN$API_ENDPOINT';

  static const String GET_USER = '/user';
  //.....///.....// AUTHENTICATION ENDPOINTS ....////././//...//
  static const String LOGIN = '/auth/login';
  static const String REGISTER = '/auth/register';
  static const String LOGOUT = '/auth/logout';
  static const String RESEND_VERIFY_EMAIL = '/user/verify/email';
  static const String CONFIRM_VERIFY_EMAIL = '/user/verify/email/confirm';
  static const String SEND_PASSWORD_RESET_EMAIL = '/auth/forgot-password';
  static const String UPDATE_PASSWORD = '/auth/reset-password';
  static const String UPDATE_USER_PROFILE = '/user/profile/update';
  static const String UPDATE_USER_PHOTO = '/user/profile/image/update';
  static const String GOOGLE_SIGNIN = '/auth/google/authenticate';
  static const String FACEBOOK_SIGNIN = '/auth/facebook/authenticate';
  static const String APPLE_SIGNIN = '/auth/apple/authenticate';

  //.....///.....// VERIFICATION ENDPOINTS ....////././//...//
  static const String VERIFY_BVN = '/user/verify/bvn';
  static const String CONFIRM_BVN_VERIFICATION = '/user/verify/bvn/confirm';
  static const String UPLOAD_VERIFICATION_DOCUMENTS = '/user/verify/document';

  //.....///.....// UPDATE PROFILE ENDPOINTS ....////././//...//
  static const String SETUP_PERSONAL_PROFILE = '/user/verify/personal-info';

  //.....///.....// WALLET ENDPOINTS ....////././//...//
  static const String ADD_TO_WALLET_FROM_BANK = '/wallet/bank/credit';
  static const String ADD_TO_WALLET_FROM_CREDIT_CARD = '/wallet/bank/card';
  static const String CONFIRM_ADD_FROM_BANK = '/wallet/bank/credit/confirm';
  static const String RETRIEVE_USERS_TRANSACTIONS = '/user/transactions';

  //.....///.....// ALT ENDPOINTS ....////././//...//
  static const String COUNTRIES = '/countries';
  static const String BANKS = '/banks';
}
