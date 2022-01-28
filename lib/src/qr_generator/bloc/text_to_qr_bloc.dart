import 'package:bloc/bloc.dart';

class TextToQrCubit extends Cubit<String> {
  TextToQrCubit() : super("");

  void generateQR(String data) {
    emit(data);
  }
}
