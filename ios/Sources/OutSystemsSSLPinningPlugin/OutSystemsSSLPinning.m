#import "OutSystemsSSLPinning.h"
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <Capacitor/Capacitor.h>
#import <Capacitor/Capacitor-Swift.h>
#import <Capacitor/CAPBridgedPlugin.h>
#import <Capacitor/CAPBridgedJSTypes.h>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
// suppressing warnings of the type: "Class 'OutSystemsSSLPinningPlugin' does not conform to protocol 'CAPBridgedPlugin'"
// protocol conformance for this class is implemented by a macro and clang isn't detecting that
@implementation OutSystemsSSLPinningPlugin

- (void)load
{
  // TODO implement
}

#pragma mark Plugin interface

- (void)checkCertificate:(CAPPluginCall *)call
{
  // TODO implement
  [call resolve];
}

@end
#pragma clang diagnostic pop

