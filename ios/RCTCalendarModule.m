#import "RCTCalendarModule.h"
#import <React/RCTLog.h>
#import <UIKit/UIKit.h>

@implementation RCTCalendarModule

// To export a module named RCTCalendarModule
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)name location:(NSString *)location)
{
    RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);

    // Hiển thị thông báo (Toast)
    dispatch_async(dispatch_get_main_queue(), ^{
        UIWindow *keyWindow = [[[UIApplication sharedApplication] delegate] window];
        UIAlertController *toast = [UIAlertController alertControllerWithTitle:nil
                                                                       message:[NSString stringWithFormat:@"Event created: %@ at %@", name, location]
                                                                preferredStyle:UIAlertControllerStyleAlert];
        [keyWindow.rootViewController presentViewController:toast animated:YES completion:nil];
        
        int duration = 1.5; // seconds
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            [toast dismissViewControllerAnimated:YES completion:nil];
        });
    });
}

@end
