/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/behance.svg
  String get behance => 'assets/icons/behance.svg';

  /// File path: assets/icons/facebook_circled.svg
  String get facebookCircled => 'assets/icons/facebook_circled.svg';

  /// File path: assets/icons/linkedin.svg
  String get linkedin => 'assets/icons/linkedin.svg';

  /// File path: assets/icons/menu.svg
  String get menu => 'assets/icons/menu.svg';

  /// File path: assets/icons/menu2.svg
  String get menu2 => 'assets/icons/menu2.svg';

  /// File path: assets/icons/menus.svg
  String get menus => 'assets/icons/menus.svg';

  /// File path: assets/icons/slack_new.svg
  String get slackNew => 'assets/icons/slack_new.svg';

  /// File path: assets/icons/usa.svg
  String get usa => 'assets/icons/usa.svg';

  /// File path: assets/icons/youtube.svg
  String get youtube => 'assets/icons/youtube.svg';

  /// List of all assets
  List<String> get values => [
        behance,
        facebookCircled,
        linkedin,
        menu,
        menu2,
        menus,
        slackNew,
        usa,
        youtube
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/Facebook.png');

  /// File path: assets/images/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/images/menu.png');

  /// File path: assets/images/optimized_search.png
  AssetGenImage get optimizedSearch =>
      const AssetGenImage('assets/images/optimized_search.png');

  /// File path: assets/images/page1.png
  AssetGenImage get page1 => const AssetGenImage('assets/images/page1.png');

  /// File path: assets/images/page2.png
  AssetGenImage get page2 => const AssetGenImage('assets/images/page2.png');

  /// File path: assets/images/page3.png
  AssetGenImage get page3 => const AssetGenImage('assets/images/page3.png');

  /// File path: assets/images/profile.webp
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile.webp');

  /// File path: assets/images/slack.png
  AssetGenImage get slack => const AssetGenImage('assets/images/slack.png');

  /// File path: assets/images/user.png
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        facebook,
        menu,
        optimizedSearch,
        page1,
        page2,
        page3,
        profile,
        slack,
        user
      ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/vi-VN.json
  String get viVN => 'assets/translations/vi-VN.json';

  /// List of all assets
  List<String> get values => [enUS, viVN];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
