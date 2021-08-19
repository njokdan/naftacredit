part of 'account_verification_cubit.dart';

enum DocumentMimeType { img, doc, pdf }

@freezed
class AccountVerificationState with _$AccountVerificationState {
  static const int BVN_LENGTH = 11;
  static FocusNode addressFocus = FocusNode();
  static FocusNode dobFocus = FocusNode();
  static FocusNode firstNameFocus = FocusNode();
  static FocusNode lastNameFocus = FocusNode();
  static const Map<String, dynamic> kdefaultType = {'nin': 'National Identity'};
  static const List<Map<String, dynamic>> documentTypes = [
    AccountVerificationState.kdefaultType,
    {'intl': 'International Passport'},
    {'drivers licence': "Driver's License"},
    {'voter': "Voter's Card"},
  ];

  const factory AccountVerificationState({
    required User? user,
    required BasicTextField<int?> bvn,
    required OTPCode code,
    required BasicTextField<String?> street,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isImageDocument,
    DocumentMimeType? mimeType,
    required BasicTextField<String?> documentName,
    File? document,
    ProvinceState? selectedState,
    Country? selectedCountry,
    @Default(AccountVerificationState.kdefaultType)
        Map<String, dynamic>? documentType,
    @Default(KtList.empty()) KtList<Country> countries,
    @Default(KtList.empty()) KtList<ProvinceState> states,
    @Default(None()) Option<Either<Failure, Response?>?> status,
  }) = _AccountVerificationState;

  factory AccountVerificationState.initial() => AccountVerificationState(
        user: User.blank(),
        code: OTPCode(null),
        bvn: BasicTextField(null),
        street: BasicTextField(null),
        documentName: BasicTextField(null),
      );
}

extension XDocumentMimeType on DocumentMimeType {
  T? fold<T>({
    T? img,
    T Function(DocumentMimeType)? doc,
  }) {
    switch (this) {
      case DocumentMimeType.img:
        return img;
      case DocumentMimeType.pdf:
      case DocumentMimeType.doc:
      default:
        return doc?.call(this);
    }
  }
}
