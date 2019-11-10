#import "FlutterOpenBDPlugin.h"
#import <flutter_openbd/flutter_openbd-Swift.h>

@implementation FlutterOpenBDPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterOpenBDPlugin registerWithRegistrar:registrar];
}
@end
