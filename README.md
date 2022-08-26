## Table of Contents

- [DS Gallery](#ds-gallery)
- [Getting Started](#getting-started)
- [Building Blocks](#building-blocks)
- [Adding `Component`](#adding-component)
- [Adding `ComponentConfig`](#adding-componentconfig)
- [Adding `ComponentGroup`](#adding-componentgroup)
- [Concept used](#concept-used)

# DS Gallery

DS Gallery is overview app for displaying the components in Design Systems defined in the [Component Gallery](https://github.com/may-andro/component_gallery).

The purpose of this project is to layout the behaviour of a design system and acts as a reference point for inspection by Developers, Designers and Product owners.

This project is meant to be for learning purpose. One can use this concept or project to create there own version. Part of the UI is inspired from [Flutter Gallery](https://gallery.flutter.dev/#/demo)

## Getting Started

Clone this project in your local environment. The project supports: `Android`, `IOS`, `Web`, `MacOS`.

## Building Blocks

- `Component` - Every widget in component library is a component in DS Gallery.
    - For example a `CLFabWidget` is described with a `Component`.

- `ComponentConfig` - represents a configuration variant of a `Component`. Each `Component` can have multiple configurations.
    - For example, a `LoadingFilledButtonConfigWidget` describe behaviour of `CLButtonWidget` when `isLoading` boolean field is true.

- `ComponentCategory` - Enum used to categorize related components.
    - For example, `CLFabWidget` and `CLButtonWidget` are both buttons and shall be assigned with same `ComponentCategory.button`.

- `ComponentGroup` - a group of `Component` which belong to same `ComponentCategory`.
    - For example, `ComponentGroup` for `ComponentCategory.button`.

- `ComponentAtomicCategory` - Enum used to categorize `ComponentGroup` at atomic level.
    - For example, `ComponentGroup` button belongs to `ComponentAtomicCategory.atom`.

## Steps to add a new design component to DS Gallery if `ComponentCategory` does not exists.

1. Create a new `UseCase` for the widget you want to add. Place it based on the `ComponentAtomicCategory` in the project.
2. Create a `ComponentGroup` object definig the `ComponentCategory` and `ComponentAtomicCategory`.
3. Create the new `Component` objects.
4. Define all `ComponentConfig` for each `Component` object.
5. Expose the `UseCase` based on `ComponentAtomicCategory` in one of these: `GetAllOrganismComponentGroupUseCase`or `GetAllFoundationComponentGroupsUseCase` or `GetAllAtomComponentGroupUseCase` or `€etAllMoleculeComponentGroupUseCase`

## Steps to add a new design component to DS Gallery if `ComponentCategory` exists.

1. Create the new `Component` object.
2. Define all `ComponentConfig` for each `Component` object.

## Adding new `Component`

1. Decide the type of `ComponentCategory` where the `Component` belongs. If the `ComponentCategory` exists then create the `Component` object. If not then refer to section: [Adding `ComponentGroup`](#adding-componentgroup).
2. Create all the possible configuration the `Component` can take and create a list for `ComponentConfig`s for those configuration. See section: [Adding `ComponentConfig`](#adding-componentconfig)
3. Create the `Component` object with title and description.
4. Add this `Component` into its respective `ComponentGroup`.

## Adding `ComponentConfig`

1. Identify all the configuration of the `Component` and create a list of `ComponentConfig` for each state.
2. Create a `your_state_config_widget.dart` for the state representation of the `Component` at `ds_gallery/data/component/{yourComponentAtomicCategory}/{yourComponentCategoryType}/config/{yourComponent}/your_state_config_widget.dart`.
    - Keep the config widget clean by not importing any dependency from CG.
    - For example, `LoadingFabConfigWidget` is a config widget of type `ComponentCategory.button` located at `ds_gallery/data/component/atom/button/config/fab/loading_fab_config_widget.dart`'
3. Add the path of the created `your_state_config_widget.dart` file in the `ComponentConfig` object.
4. Add the `Component`'s directory path to pubspec.yaml under assets so that the `DSGCodeViewWidget` can read the file as an asset and display it on the UI.
    - For example, `lib/data/component/atom/button/config/fab/`.

## Adding `ComponentGroup`

1. Create new `ComponentCategory` type for the `ComponentGroup`.
2. Assign the corresponding   `ComponentAtomicCategory`. 
3. Add name and description for the object.
4. Create `Component` list for the `ComponentGroup`. Refer to section: [Adding `Component`](#adding-component).
5. Create a use case for the Component Group. Expose the usecase in `locator.dart`
6. Use the use case in `GetAllOrganismComponentGroupUseCase`or `GetAllFoundationComponentGroupsUseCase` or `GetAllAtomComponentGroupUseCase` or `€etAllMoleculeComponentGroupUseCase` execute method to expose it to presentation layer.

## Concept used
[x] MVVM Arch.
[x] Design System
[x] Responsive Design
[ ] Unit test

