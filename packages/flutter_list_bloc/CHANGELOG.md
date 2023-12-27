## 4.1.3

 - Update a dependency to the latest release.

## 4.1.2

 - **FIX**: empty state determination. ([baca05e2](https://github.com/djangoflow/list_bloc/commit/baca05e218fdbbdcdd083974e71d7addde2a9dd0))

## 4.1.1

 - Update a dependency to the latest release.

## [4.1.0] - 24 Mar 2023

- added optional `loadMoreScrollThreshold`, the threshold in pixels from the bottom of the list when the next page should be loaded. If not provided `10` will be used

## [4.0.1] - 26 Sep 2022

- added optional `errorBuilder` to show error state.

## [4.0.0] - 25 Apr 2022

#### Breaking change

- This applies to all the builder widgets

```Dart
// FROM

ListBlocBuilder<T, F> extends StatelessWidget ....

// TO

ListBlocBuilder<B extends ListCubit<T, F>, T, F> extends StatelessWidget ....
```

- Added new widget `DataBlocBuilder`

## [3.1.2] - 25 Apr 2022

- added `builder` argument for further `ListView.builder` customisation

## [3.1.1] - 22 Apr 2022

- Exposed `reverse` attribute

## [3.1.0] - 21 Apr 2022

- Dependencies upgrades

## [3.0.6] 3 Apr 2022

- refresh list from zero offset in case filter is OffsetLimitFilter

## [3.0.5] 23 Mar 2022

- removed unnecessary assertion in SliverListBlocBuilder

## [3.0.4] 22 Mar 2022

- depend on list_bloc 3.0.4

## [3.0.3] 22 Mar 2022

- bugfix - do not ignore the cubit arguments

## [3.0.2] 22 Mar 2022

- bugfix - missing type arguments to ListBlocBuilder

## [3.0.1] 22 Mar 2022

- bugfix - leftover debug code

## [3.0.0] 22 Mar 2022

- Created ListBlocBuilder
- Exposed physics in ListViewBlocBuilder

## [3.0.0-dev2] 22 Mar 2022

- fixed withRefreshIndicator in ListViewBlocBuilder

## [3.0.0-dev1] 22 Mar 2022

- dependency on list_bloc 3.0.0
- added ListView builders

## [2.0.1] - 2 Apr 2021

- initial null safety

## [1.0.4] - 1 Oct 2020

- fixed error 'positions.isNotEmpty': PageController.page cannot be accessed before a PageView is built with it.

## [1.0.3] - 02 Aug 2020

- Fix empty data null exception when loading

## [1.0.2] - 2 Aug 2020

- Upgrade to flutter_bloc 6.0.1

## [1.0.1] - 24 Jul 2020

- Upgrade to flutter_bloc 5.0.1

## [1.0.0] - 20 Jul 2020

- First version used in production

## [0.0.2] - 23 Jun 2020

- Different approach to building pages

## [0.0.1] - 23 Jun 2020

- Initial release
