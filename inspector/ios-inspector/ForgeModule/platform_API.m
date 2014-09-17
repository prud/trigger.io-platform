#import "platform_API.h"
#import <sys/utsname.h>

@implementation platform_API

//
// Here you can implement your API methods which can be called from JavaScript
// an example method is included below to get you started.
//

// return the OS version string
+ (void)getVersion:(ForgeTask*)task {
	[task success:[[UIDevice currentDevice] systemVersion]];
}

// return the device model name
// http://theiphonewiki.com/wiki/Models
// http://en.wikipedia.org/wiki/List_of_iOS_devices
+ (void)getModel:(ForgeTask*)task {
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString *platform = [NSString stringWithCString:systemInfo.machine
                              encoding:NSUTF8StringEncoding];
    
    if ([platform isEqualToString:@"iPhone1,1"])    [task success:@"iPhone 1G"];
    if ([platform isEqualToString:@"iPhone1,2"])    [task success:@"iPhone 3G"];
    if ([platform isEqualToString:@"iPhone2,1"])    [task success:@"iPhone 3GS"];
    if ([platform isEqualToString:@"iPhone3,1"])    [task success:@"iPhone 4"];
    if ([platform isEqualToString:@"iPhone3,2"])    [task success:@"iPhone 4"];
    if ([platform isEqualToString:@"iPhone3,3"])    [task success:@"Verizon iPhone 4"];
    if ([platform isEqualToString:@"iPhone4,1"])    [task success:@"iPhone 4S"];
    if ([platform isEqualToString:@"iPhone5,1"])    [task success:@"iPhone 5 (GSM)"];
    if ([platform isEqualToString:@"iPhone5,2"])    [task success:@"iPhone 5 (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPhone5,3"])    [task success:@"iPhone 5c (GSM)"];
    if ([platform isEqualToString:@"iPhone5,4"])    [task success:@"iPhone 5c (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPhone6,1"])    [task success:@"iPhone 5s (GSM)"];
    if ([platform isEqualToString:@"iPhone6,2"])    [task success:@"iPhone 5s (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPhone7,1"])    [task success:@"iPhone 6 Plus"];
    if ([platform isEqualToString:@"iPhone7,2"])    [task success:@"iPhone 6"];
    if ([platform isEqualToString:@"iPod1,1"])      [task success:@"iPod Touch 1G"];
    if ([platform isEqualToString:@"iPod2,1"])      [task success:@"iPod Touch 2G"];
    if ([platform isEqualToString:@"iPod3,1"])      [task success:@"iPod Touch 3G"];
    if ([platform isEqualToString:@"iPod4,1"])      [task success:@"iPod Touch 4G"];
    if ([platform isEqualToString:@"iPod5,1"])      [task success:@"iPod Touch 5G"];
    if ([platform isEqualToString:@"iPad1,1"])      [task success:@"iPad"];
    if ([platform isEqualToString:@"iPad2,1"])      [task success:@"iPad 2 (WiFi)"];
    if ([platform isEqualToString:@"iPad2,2"])      [task success:@"iPad 2 (GSM)"];
    if ([platform isEqualToString:@"iPad2,3"])      [task success:@"iPad 2 (CDMA)"];
    if ([platform isEqualToString:@"iPad2,4"])      [task success:@"iPad 2 (WiFi)"];
    if ([platform isEqualToString:@"iPad2,5"])      [task success:@"iPad Mini (WiFi)"];
    if ([platform isEqualToString:@"iPad2,6"])      [task success:@"iPad Mini (GSM)"];
    if ([platform isEqualToString:@"iPad2,7"])      [task success:@"iPad Mini (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPad3,1"])      [task success:@"iPad 3 (WiFi)"];
    if ([platform isEqualToString:@"iPad3,2"])      [task success:@"iPad 3 (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPad3,3"])      [task success:@"iPad 3 (GSM)"];
    if ([platform isEqualToString:@"iPad3,4"])      [task success:@"iPad 4 (WiFi)"];
    if ([platform isEqualToString:@"iPad3,5"])      [task success:@"iPad 4 (GSM)"];
    if ([platform isEqualToString:@"iPad3,6"])      [task success:@"iPad 4 (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPad4,1"])      [task success:@"iPad Air (WiFi)"];
    if ([platform isEqualToString:@"iPad4,2"])      [task success:@"iPad Air (Cellular)"];
    if ([platform isEqualToString:@"iPad4,3"])      [task success:@"iPad Air (Cellular)"];
    if ([platform isEqualToString:@"iPad4,4"])      [task success:@"iPad mini 2G (WiFi)"];
    if ([platform isEqualToString:@"iPad4,5"])      [task success:@"iPad mini 2G (Cellular)"];
    if ([platform isEqualToString:@"iPad4,6"])      [task success:@"iPad mini 2G (Cellular)"];
    if ([platform isEqualToString:@"i386"])         [task success:@"Simulator"];
    if ([platform isEqualToString:@"x86_64"])       [task success:@"Simulator"];
    [task success:platform];
}

// return the OS manufacturer string
+ (void)getManufacturer:(ForgeTask*)task {
	[task success:@"Apple"];
}

// return the NSFoundation version number
+ (void)getAPILevel:(ForgeTask*)task {
	[task success:[NSString stringWithFormat:@"%f", NSFoundationVersionNumber]];
}



@end
