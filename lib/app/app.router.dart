// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i6;

import 'package:alio_sub_button/ui/components/alio_sub_button.dart' as _i4;
import 'package:alio_sub_button/ui/views/home/home_view.dart' as _i2;
import 'package:alio_sub_button/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const alioSubButton = '/alio-sub-button';

  static const all = <String>{
    homeView,
    startupView,
    alioSubButton,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.alioSubButton,
      page: _i4.AlioSubButton,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.AlioSubButton: (data) {
      final args = data.getArgs<AlioSubButtonArguments>(
        orElse: () => const AlioSubButtonArguments(),
      );
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.AlioSubButton(
            key: args.key,
            isSelected: args.isSelected,
            isSelectedColor: args.isSelectedColor,
            borderRadius: args.borderRadius,
            borderColor: args.borderColor,
            busyTitle: args.busyTitle,
            onTap: args.onTap,
            isSelectedIcon: args.isSelectedIcon,
            isFullWidth: args.isFullWidth,
            isSizedBox: args.isSizedBox,
            isTextButton: args.isTextButton,
            isFullHeight: args.isFullHeight,
            width: args.width,
            leading: args.leading,
            trailing: args.trailing,
            icon: args.icon,
            textStyle: args.textStyle,
            padding: args.padding,
            isChecked: args.isChecked),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class AlioSubButtonArguments {
  const AlioSubButtonArguments({
    this.key,
    this.isSelected = false,
    this.isSelectedColor = false,
    this.borderRadius,
    this.borderColor,
    this.busyTitle,
    this.onTap,
    this.isSelectedIcon = false,
    this.isFullWidth = true,
    this.isSizedBox = false,
    this.isTextButton = false,
    this.isFullHeight = false,
    this.width,
    this.leading,
    this.trailing,
    this.icon,
    this.textStyle,
    this.padding,
    this.isChecked = false,
  });

  final _i5.Key? key;

  final bool isSelected;

  final bool isSelectedColor;

  final _i5.BorderRadius? borderRadius;

  final _i6.Color? borderColor;

  final String? busyTitle;

  final dynamic Function(bool?)? onTap;

  final bool isSelectedIcon;

  final bool isFullWidth;

  final bool isSizedBox;

  final bool isTextButton;

  final bool isFullHeight;

  final double? width;

  final _i5.Widget? leading;

  final _i5.Widget? trailing;

  final _i5.Widget? icon;

  final _i5.TextStyle? textStyle;

  final _i5.EdgeInsets? padding;

  final bool isChecked;

  @override
  String toString() {
    return '{"key": "$key", "isSelected": "$isSelected", "isSelectedColor": "$isSelectedColor", "borderRadius": "$borderRadius", "borderColor": "$borderColor", "busyTitle": "$busyTitle", "onTap": "$onTap", "isSelectedIcon": "$isSelectedIcon", "isFullWidth": "$isFullWidth", "isSizedBox": "$isSizedBox", "isTextButton": "$isTextButton", "isFullHeight": "$isFullHeight", "width": "$width", "leading": "$leading", "trailing": "$trailing", "icon": "$icon", "textStyle": "$textStyle", "padding": "$padding", "isChecked": "$isChecked"}';
  }

  @override
  bool operator ==(covariant AlioSubButtonArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.isSelected == isSelected &&
        other.isSelectedColor == isSelectedColor &&
        other.borderRadius == borderRadius &&
        other.borderColor == borderColor &&
        other.busyTitle == busyTitle &&
        other.onTap == onTap &&
        other.isSelectedIcon == isSelectedIcon &&
        other.isFullWidth == isFullWidth &&
        other.isSizedBox == isSizedBox &&
        other.isTextButton == isTextButton &&
        other.isFullHeight == isFullHeight &&
        other.width == width &&
        other.leading == leading &&
        other.trailing == trailing &&
        other.icon == icon &&
        other.textStyle == textStyle &&
        other.padding == padding &&
        other.isChecked == isChecked;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        isSelected.hashCode ^
        isSelectedColor.hashCode ^
        borderRadius.hashCode ^
        borderColor.hashCode ^
        busyTitle.hashCode ^
        onTap.hashCode ^
        isSelectedIcon.hashCode ^
        isFullWidth.hashCode ^
        isSizedBox.hashCode ^
        isTextButton.hashCode ^
        isFullHeight.hashCode ^
        width.hashCode ^
        leading.hashCode ^
        trailing.hashCode ^
        icon.hashCode ^
        textStyle.hashCode ^
        padding.hashCode ^
        isChecked.hashCode;
  }
}

extension NavigatorStateExtension on _i7.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAlioSubButton({
    _i5.Key? key,
    bool isSelected = false,
    bool isSelectedColor = false,
    _i5.BorderRadius? borderRadius,
    _i6.Color? borderColor,
    String? busyTitle,
    dynamic Function(bool?)? onTap,
    bool isSelectedIcon = false,
    bool isFullWidth = true,
    bool isSizedBox = false,
    bool isTextButton = false,
    bool isFullHeight = false,
    double? width,
    _i5.Widget? leading,
    _i5.Widget? trailing,
    _i5.Widget? icon,
    _i5.TextStyle? textStyle,
    _i5.EdgeInsets? padding,
    bool isChecked = false,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.alioSubButton,
        arguments: AlioSubButtonArguments(
            key: key,
            isSelected: isSelected,
            isSelectedColor: isSelectedColor,
            borderRadius: borderRadius,
            borderColor: borderColor,
            busyTitle: busyTitle,
            onTap: onTap,
            isSelectedIcon: isSelectedIcon,
            isFullWidth: isFullWidth,
            isSizedBox: isSizedBox,
            isTextButton: isTextButton,
            isFullHeight: isFullHeight,
            width: width,
            leading: leading,
            trailing: trailing,
            icon: icon,
            textStyle: textStyle,
            padding: padding,
            isChecked: isChecked),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAlioSubButton({
    _i5.Key? key,
    bool isSelected = false,
    bool isSelectedColor = false,
    _i5.BorderRadius? borderRadius,
    _i6.Color? borderColor,
    String? busyTitle,
    dynamic Function(bool?)? onTap,
    bool isSelectedIcon = false,
    bool isFullWidth = true,
    bool isSizedBox = false,
    bool isTextButton = false,
    bool isFullHeight = false,
    double? width,
    _i5.Widget? leading,
    _i5.Widget? trailing,
    _i5.Widget? icon,
    _i5.TextStyle? textStyle,
    _i5.EdgeInsets? padding,
    bool isChecked = false,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.alioSubButton,
        arguments: AlioSubButtonArguments(
            key: key,
            isSelected: isSelected,
            isSelectedColor: isSelectedColor,
            borderRadius: borderRadius,
            borderColor: borderColor,
            busyTitle: busyTitle,
            onTap: onTap,
            isSelectedIcon: isSelectedIcon,
            isFullWidth: isFullWidth,
            isSizedBox: isSizedBox,
            isTextButton: isTextButton,
            isFullHeight: isFullHeight,
            width: width,
            leading: leading,
            trailing: trailing,
            icon: icon,
            textStyle: textStyle,
            padding: padding,
            isChecked: isChecked),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
