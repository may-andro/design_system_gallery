import 'package:flutter/services.dart';

class SetClipboardDataUseCase {
  SetClipboardDataUseCase();

  Future<void> execute({required String data}) {
    return Clipboard.setData(ClipboardData(text: data));
  }
}
