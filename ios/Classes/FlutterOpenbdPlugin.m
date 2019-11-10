#import "FlutterOpenbdPlugin.h"
#import <flutter_openbd/flutter_openbd-Swift.h>

@implementation FlutterOpenbdPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterOpenbdPlugin registerWithRegistrar:registrar];
}
@end
