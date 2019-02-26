#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>
#import <Twitter/Twitter.h>

%config(generator=internal)

%group UIDoc
%hook SBDockView
-(void)setBackgroundAlpha:(double)arg1 {
%orig(0.0);
}
%end
%end
%ctor {

  // Enable or Disable Switch
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.ahmadsalah.dockclear"];
 bool Enable = [([Key objectForKey:@"Dock"] ?: @(NO)) boolValue];

if (Enable) {
 %init(UIDoc);

}
}
