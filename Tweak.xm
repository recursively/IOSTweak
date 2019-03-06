%hook SpringBoard

// Hooking a class method

// Hooking an instance method with an argument.
- (void)applicationDidFinishLaunching:(id)application {

	%orig; // Call through to the original function with its original arguments.
	UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"此广告位常年招商" message:nil delegate:self cancelButtonTitle:@"OK"otherButtonTitles:nil];
	[alert show];
	[alert release];

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
