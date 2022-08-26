import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/usecase/components/atom/get_button_atom_component_group_use_case.dart';
import 'package:ds_gallery/usecase/components/atom/get_text_atom_component_group_use_case.dart';

class GetAllAtomComponentGroupUseCase {
  GetAllAtomComponentGroupUseCase(
    this._getTextAtomComponentGroupUseCase,
    this._getButtonAtomComponentGroupUseCase,
  );

  final GetTextAtomComponentGroupUseCase _getTextAtomComponentGroupUseCase;
  final GetButtonAtomComponentGroupUseCase _getButtonAtomComponentGroupUseCase;

  List<ComponentGroup> execute() {
    return [
      _getTextAtomComponentGroupUseCase.execute(),
      _getButtonAtomComponentGroupUseCase.execute(),
    ];
  }
}
