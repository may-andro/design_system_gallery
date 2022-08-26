import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/presentation/core/view_model/base_view_model.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/bar/filter_sort_order.dart';
import 'package:ds_gallery/usecase/components/atom/get_all_atom_component_groups_use_case.dart';
import 'package:ds_gallery/usecase/components/foundation/get_all_foundation_component_groups_use_case.dart';
import 'package:ds_gallery/usecase/components/molecule/get_all_molecule_component_groups_use_case.dart';
import 'package:ds_gallery/usecase/components/organism/get_all_organism_component_groups_use_case.dart';
import 'package:flutter/material.dart';

const tabFoundationIndex = 0;
const tabAtomIndex = 1;
const tabMoleculeIndex = 2;
const tabOrganismIndex = 3;

class DashboardViewModel extends BaseViewModel {
  DashboardViewModel(
    this._getAllFoundationComponentGroupsUseCase,
    this._getAllAtomComponentGroupUseCase,
    this._getAllMoleculeComponentGroupUseCase,
    this._getAllOrganismComponentGroupUseCase,
  );

  final GetAllFoundationComponentGroupsUseCase
      _getAllFoundationComponentGroupsUseCase;

  final GetAllAtomComponentGroupUseCase _getAllAtomComponentGroupUseCase;

  final GetAllMoleculeComponentGroupUseCase
      _getAllMoleculeComponentGroupUseCase;

  final GetAllOrganismComponentGroupUseCase
      _getAllOrganismComponentGroupUseCase;

  List<ComponentGroup>? _defaultFoundations;

  List<ComponentGroup>? _defaultAtoms;

  List<ComponentGroup>? _defaultMolecules;

  List<ComponentGroup>? _defaultOrganisms;

  List<ComponentGroup>? _searchedFoundations;

  List<ComponentGroup>? _searchedAtoms;

  List<ComponentGroup>? _searchedMolecules;

  List<ComponentGroup>? _searchedOrganisms;

  ComponentGroup? _selectedFoundation;

  ComponentGroup? _selectedAtom;

  ComponentGroup? _selectedMolecule;

  ComponentGroup? _selectedOrganism;

  FilterSortOrder _componentSortOrder = FilterSortOrder.asc;

  final searchTextEditingController = TextEditingController();

  FilterSortOrder get componentSortOrder => _componentSortOrder;

  List<ComponentGroup>? get searchedFoundations => _searchedFoundations;

  ComponentGroup? get selectedFoundation => _selectedFoundation;

  List<ComponentGroup>? get searchedAtoms => _searchedAtoms;

  ComponentGroup? get selectedAtom => _selectedAtom;

  List<ComponentGroup>? get searchedMolecules => _searchedMolecules;

  ComponentGroup? get selectedMolecule => _selectedMolecule;

  List<ComponentGroup>? get searchedOrganisms => _searchedOrganisms;

  ComponentGroup? get selectedOrganism => _selectedOrganism;

  void onInit() {
    _defaultFoundations = _getAllFoundationComponentGroupsUseCase.execute();
    _defaultAtoms = _getAllAtomComponentGroupUseCase.execute();
    _defaultMolecules = _getAllMoleculeComponentGroupUseCase.execute();
    _defaultOrganisms = _getAllOrganismComponentGroupUseCase.execute();
    onSearchApplied('');
  }

  @override
  void dispose() {
    searchTextEditingController.dispose();
    super.dispose();
  }

  void onSearchApplied(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      _searchedFoundations = _defaultFoundations;
      _searchedAtoms = _defaultAtoms;
      _searchedMolecules = _defaultMolecules;
      _searchedOrganisms = _defaultOrganisms;
    } else {
      _searchedFoundations = _defaultFoundations?.where((componentGroup) {
        return componentGroup.title
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase());
      }).toList();

      _searchedAtoms = _defaultAtoms?.where((componentGroup) {
        return componentGroup.title
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase());
      }).toList();

      _searchedMolecules = _defaultMolecules?.where((componentGroup) {
        return componentGroup.title
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase());
      }).toList();

      _searchedOrganisms = _defaultOrganisms?.where((componentGroup) {
        return componentGroup.title
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase());
      }).toList();
    }
    _applySort();
  }

  void _applySort() {
    if (_componentSortOrder == FilterSortOrder.desc) {
      _searchedFoundations?.sort((item2, item1) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });

      _searchedAtoms?.sort((item2, item1) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });

      _searchedMolecules?.sort((item2, item1) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });

      _searchedOrganisms?.sort((item2, item1) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });
    }

    if (_componentSortOrder == FilterSortOrder.asc) {
      _searchedFoundations?.sort((item1, item2) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });

      _searchedAtoms?.sort((item1, item2) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });

      _searchedMolecules?.sort((item1, item2) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });

      _searchedOrganisms?.sort((item1, item2) {
        return item1.title.toLowerCase().compareTo(item2.title.toLowerCase());
      });
    }

    if (_searchedFoundations?.isNotEmpty == true &&
        _selectedFoundation == null) {
      _selectedFoundation = _searchedFoundations?.first;
    }

    if (_searchedAtoms?.isNotEmpty == true && _selectedAtom == null) {
      _selectedAtom = _searchedAtoms?.first;
    }

    if (_searchedMolecules?.isNotEmpty == true && _selectedMolecule == null) {
      _selectedMolecule = _searchedMolecules?.first;
    }

    if (_searchedOrganisms?.isNotEmpty == true && _selectedOrganism == null) {
      _selectedOrganism = _searchedOrganisms?.first;
    }

    notifyListener();
  }

  void onSortApplied(FilterSortOrder filterSortOrder) {
    _componentSortOrder = filterSortOrder;
    _applySort();
  }

  void setSelectedFoundation(ComponentGroup componentGroup) {
    if (componentGroup.category == _selectedFoundation?.category) {
      return;
    }

    _selectedFoundation = componentGroup;
    notifyListener();
  }

  void setSelectedAtom(ComponentGroup componentGroup) {
    if (componentGroup.category == _selectedAtom?.category) {
      return;
    }

    _selectedAtom = componentGroup;
    notifyListener();
  }

  void setSelectedMolecule(ComponentGroup componentGroup) {
    if (componentGroup.category == _selectedMolecule?.category) {
      return;
    }

    _selectedMolecule = componentGroup;
    notifyListener();
  }

  void setSelectedOrganism(ComponentGroup componentGroup) {
    if (componentGroup.category == _selectedOrganism?.category) {
      return;
    }

    _selectedOrganism = componentGroup;
    notifyListener();
  }

  bool isSelectedFoundation(ComponentGroup componentGroup) {
    return componentGroup.category == _selectedFoundation?.category;
  }

  bool isSelectedAtom(ComponentGroup componentGroup) {
    return componentGroup.category == _selectedAtom?.category;
  }

  bool isSelectedMolecule(ComponentGroup componentGroup) {
    return componentGroup.category == _selectedMolecule?.category;
  }

  bool isSelectedOrganism(ComponentGroup componentGroup) {
    return componentGroup.category == _selectedOrganism?.category;
  }

  ComponentGroup? getSelectedComponentGroup(int index) {
    if (index == tabFoundationIndex) return _selectedFoundation;
    if (index == tabAtomIndex) return _selectedAtom;
    if (index == tabMoleculeIndex) return _selectedMolecule;
    if (index == tabOrganismIndex) return _selectedOrganism;
    return null;
  }
}
