import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/usecase/components/foundation/get_color_foundation_use_case.dart';
import 'package:ds_gallery/usecase/components/foundation/get_text_foundation_use_case.dart';

class GetAllFoundationComponentGroupsUseCase {
  final GetColorFoundationUseCase _getColorFoundationUseCase;
  final GetTextFoundationUseCase _getTextFoundationUseCase;

  GetAllFoundationComponentGroupsUseCase(
    this._getColorFoundationUseCase,
    this._getTextFoundationUseCase,
  );

  List<ComponentGroup> execute() {
    return [
      _getColorFoundationUseCase.execute(),
      _getTextFoundationUseCase.execute(),
    ];
  }
}
