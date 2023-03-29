import 'package:universal_platform/universal_platform.dart';
import 'package:video_player_media_kit/video_player_media_kit_platform/video_player_media_kit_platform_ffi.dart';

/// Initializes the VideoPlayerMediaKit plugin if running on a supported platform.
///
/// On Windows, Linux, and macOS, this function registers the VideoPlayerMediaKit
/// plugin using the `registerWith()` method. On iOS, it also registers the plugin
/// if the `iosUseMediaKit` parameter is set to `true`.
///
/// If the current platform is not supported or is the web platform, this function
/// does nothing.
///
/// Parameters:
/// - `iosUseMediaKit`: A boolean value indicating whether to register the plugin on iOS.
void initVideoPlayerMediaKitIfNeeded({bool iosUseMediaKit=false}) {
  if((UniversalPlatform.isWindows||UniversalPlatform.isLinux||UniversalPlatform.isMacOS)&&!UniversalPlatform.isWeb){
    VideoPlayerMediaKit.registerWith();
  }
  if(UniversalPlatform.isIOS&&iosUseMediaKit){
    VideoPlayerMediaKit.registerWith();
  }
}
