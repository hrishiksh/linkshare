import 'package:bloc/bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanCubit extends Cubit<Map<String, dynamic>> {
  QrScanCubit() : super({});

  String get qrScanData => state["result"];

  void addScanResult({String? result, BarcodeFormat? codeType}) {
    emit(
      {"result": result, "type": codeType},
    );
  }
}
