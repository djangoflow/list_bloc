## 3.1.1

 - **REFACTOR**: added replaceLocally function. ([144dfa8f](https://github.com/djangoflow/list_bloc/commit/144dfa8f58b3e6e24870c1a5dd95b7857541cddb))
 - **REFACTOR**: AddLocally function. ([6fda4b62](https://github.com/djangoflow/list_bloc/commit/6fda4b62692d90cf9bfc66ac73067865c4d7c0f5))
 - **REFACTOR**: Added removeLocally function. ([02febba4](https://github.com/djangoflow/list_bloc/commit/02febba441d6fadce8945afe2708958d96800ff9))

## [3.1.0] - 21 Apr 2022
* Dependencies upgrades

## [3.0.5] - 16 Apr 2022
* Allow direct state update via update() method

## [3.0.4] - 23 Mar 2022
* Bugfix: empty state not always emitting
* Re-through exception in load

## [3.0.0] - 23 Mar 2022

* Removed ContinuousListCubit
* ListCubit is back with `load` for re-loading and `append` for loading more
* Logic fixes for the DataCubit

## [3.0.0-dev1] - 22 Mar 2022

This is work in progress - many breaking changes!

* [BREAKING]: refactored from bloc to cubit
* [BREAKING]: refactored equatable to freezed
* [BREAKING]: separated ListCubit and ContinuousListCubit

## [2.0.3] - 5 Apr 2021

* Use equatable as filter base

## [2.0.2] - 3 Apr 2021

* fixed division by zero bug
* experimental support for infinite pages

## [2.0.1] - 02 Apr 2021

* Null safety fixes

## [2.0.0] - 02 Apr 2021

* Null safety

## [1.0.2] - 02 Aug 2020

* Upgrade to bloc 6.0.1

## [1.0.1] - 24 Jul 2020

* Upgrade to bloc 5.0.1

## [1.0.0] - 20 Jul 2020

* First version used in production

## 0.0.5

- reuse state filter if no filter is supplied with `DataLoad` event

## 0.0.4

- Use `built_value` for the filters

## 0.0.3

- Initial README

## 0.0.1

- Initial version
