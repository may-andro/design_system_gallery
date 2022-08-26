import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_dark_color_palette.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_light_color_palette.dart';
import 'package:ds_gallery/presentation/core/theme/theme/dsg_theme.dart';
import 'package:ds_gallery/presentation/screen/app/dsg_app_view_model.dart';
import 'package:ds_gallery/presentation/screen/dashboard/dashboard_view_model.dart';
import 'package:ds_gallery/presentation/screen/login/login_view_model.dart';
import 'package:ds_gallery/presentation/screen/preview/preview_view_model.dart';
import 'package:ds_gallery/usecase/components/atom/get_all_atom_component_groups_use_case.dart';
import 'package:ds_gallery/usecase/components/atom/get_button_atom_component_group_use_case.dart';
import 'package:ds_gallery/usecase/components/atom/get_text_atom_component_group_use_case.dart';
import 'package:ds_gallery/usecase/components/foundation/get_all_foundation_component_groups_use_case.dart';
import 'package:ds_gallery/usecase/components/foundation/get_color_foundation_use_case.dart';
import 'package:ds_gallery/usecase/components/foundation/get_text_foundation_use_case.dart';
import 'package:ds_gallery/usecase/components/molecule/get_all_molecule_component_groups_use_case.dart';
import 'package:ds_gallery/usecase/components/organism/get_all_organism_component_groups_use_case.dart';
import 'package:ds_gallery/usecase/set_clipboard_data_use_case.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

extension Initialiter on GetIt {
  Future<void> resetDependencies() async {
    await reset();
  }

  Future<void> initDependencies() async {
    _initUseCases();
    _initAppTheme();
    _initViewModels();
  }

  void _initUseCases() {
    registerLazySingleton(() => GetColorFoundationUseCase());
    registerLazySingleton(() => GetTextFoundationUseCase());
    registerLazySingleton(
      () => GetAllFoundationComponentGroupsUseCase(get(), get()),
    );

    registerLazySingleton(() => GetAllAtomComponentGroupUseCase(get(), get()));
    registerLazySingleton(() => GetTextAtomComponentGroupUseCase());
    registerLazySingleton(() => GetButtonAtomComponentGroupUseCase());

    registerLazySingleton(() => GetAllMoleculeComponentGroupUseCase());
    registerLazySingleton(() => GetAllOrganismComponentGroupUseCase());

    registerLazySingleton(() => SetClipboardDataUseCase());
  }

  void _initAppTheme() {
    registerFactory(() => DSGLightColorPalette());
    registerFactory(() => DSGDarkColorPalette());
    registerFactory(() => DSGTheme(get(), get()));
  }

  void _initViewModels() {
    registerFactory(() => DSGAppViewModel(get()));
    registerFactory(() => LoginViewModel());
    registerFactory(() => DashboardViewModel(get(), get(), get(), get()));
    registerFactory(() => PreviewViewModel(get()));
  }
}
