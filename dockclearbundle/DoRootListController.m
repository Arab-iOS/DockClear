#include "DoRootListController.h"

@implementation DoRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)Ahmed {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter://user?screen_name=its_Fywre"]]) {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=its_Fywre"]];
    } else {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/its_Fywre"]];
    }
}


-(void)A {
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

@end
