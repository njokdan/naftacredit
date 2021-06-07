import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'otp_code_state.dart';
part 'otp_code_cubit.freezed.dart';

@injectable
class OtpCodeCubit extends Cubit<OtpCodeState> {
  OtpCodeCubit() : super(OtpCodeState.initial());
}
