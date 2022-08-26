import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_config.dart';
import 'package:ds_gallery/presentation/core/view_model/base_view_model.dart';
import 'package:ds_gallery/presentation/screen/preview/widgets/preview_tab_view_widget.dart';
import 'package:ds_gallery/usecase/set_clipboard_data_use_case.dart';

class PreviewViewModel extends BaseViewModel {
  PreviewViewModel(this._setClipboardDataUseCase);

  final SetClipboardDataUseCase _setClipboardDataUseCase;

  ComponentConfig? _selectedComponentConfig;
  PreviewTabType? _selectedPreviewTabType;
  String? _selectedConfigCode;

  void onInit(Component component) {
    if (component.configurations.isNotEmpty) {
      _selectedComponentConfig = component.configurations.first;
    }
  }

  ComponentConfig? get selectedComponentConfig => _selectedComponentConfig;

  set selectedComponentConfig(ComponentConfig? componentConfig) {
    if (componentConfig == _selectedComponentConfig) return;

    _selectedComponentConfig = componentConfig;
    notifyListener();
  }

  bool isSelectedComponentConfig(ComponentConfig componentConfig) {
    return componentConfig == _selectedComponentConfig;
  }

  PreviewTabType? get selectedPreviewTabType {
    return _selectedPreviewTabType;
  }

  void setPreviewTabType(
    PreviewTabType previewTabType,
  ) {
    if (previewTabType == _selectedPreviewTabType) return;

    _selectedPreviewTabType = previewTabType;
    notifyListener();
  }

  void onFileLoadedInView(String code) {
    _selectedConfigCode = code;
  }

  Future<String> onCopyClicked() async {
    if (_selectedConfigCode == null) {
      return 'Failed copying to clipboard';
    } else if (_selectedConfigCode!.isEmpty) {
      return 'Empty File! Failed copying to clipboard';
    } else {
      try {
        await _setClipboardDataUseCase.execute(data: _selectedConfigCode!);
        return 'Source code copied to clipboard successfully!';
      } catch (_) {
        return 'Failed copying to clipboard';
      }
    }
  }
}
