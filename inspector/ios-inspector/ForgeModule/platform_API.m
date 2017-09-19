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
// https://gist.github.com/ReanimationXP/53c5a6a329397fb8fb0742d35112d345
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
    if ([platform isEqualToString:@"iPhone3,2"])    [task success:@"iPhone 4 (GSM Rev A)"];
    if ([platform isEqualToString:@"iPhone3,3"])    [task success:@"iPhone 4 (CDMA)"];
    if ([platform isEqualToString:@"iPhone4,1"])    [task success:@"iPhone 4S"];

    if ([platform isEqualToString:@"iPhone5,1"])    [task success:@"iPhone 5 (GSM)"];
    if ([platform isEqualToString:@"iPhone5,2"])    [task success:@"iPhone 5 (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPhone5,3"])    [task success:@"iPhone 5C (GSM)"];
    if ([platform isEqualToString:@"iPhone5,4"])    [task success:@"iPhone 5C (Global)"];
    if ([platform isEqualToString:@"iPhone6,1"])    [task success:@"iPhone 5S (GSM)"];
    if ([platform isEqualToString:@"iPhone6,2"])    [task success:@"iPhone 5S (Global)"];

    if ([platform isEqualToString:@"iPhone7,2"])    [task success:@"iPhone 6"];
    if ([platform isEqualToString:@"iPhone7,1"])    [task success:@"iPhone 6 Plus"];
    if ([platform isEqualToString:@"iPhone8,1"])    [task success:@"iPhone 6s"];
    if ([platform isEqualToString:@"iPhone8,2"])    [task success:@"iPhone 6s Plus"];

    if ([platform isEqualToString:@"iPhone8,3"])    [task success:@"iPhone SE (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPhone8,4"])    [task success:@"iPhone SE (GSM)"];

    if ([platform isEqualToString:@"iPhone9,1"])    [task success:@"iPhone 7 (Global)"];
    if ([platform isEqualToString:@"iPhone9,3"])    [task success:@"iPhone 7 (GSM)"];
    if ([platform isEqualToString:@"iPhone9,2"])    [task success:@"iPhone 7 Plus (Global)"];
    if ([platform isEqualToString:@"iPhone9,4"])    [task success:@"iPhone 7 Plus (GSM)"];

    if ([platform isEqualToString:@"iPhone10,1"])    [task success:@"iPhone 8 (Global)"];
    if ([platform isEqualToString:@"iPhone10,4"])    [task success:@"iPhone 8 (GSM)"];
    if ([platform isEqualToString:@"iPhone10,2"])    [task success:@"iPhone 8 Plus (Global)"];
    if ([platform isEqualToString:@"iPhone10,5"])    [task success:@"iPhone 8 Plus (GSM)"];

    if ([platform isEqualToString:@"iPhone10,3"])    [task success:@"iPhone X (Global)"];
    if ([platform isEqualToString:@"iPhone10,6"])    [task success:@"iPhone X (GSM)"];

    if ([platform isEqualToString:@"iPod1,1"])      [task success:@"iPod touch"];
    if ([platform isEqualToString:@"iPod2,1"])      [task success:@"2nd Gen iPod touch"];
    if ([platform isEqualToString:@"iPod3,1"])      [task success:@"3rd Gen iPod touch"];
    if ([platform isEqualToString:@"iPod4,1"])      [task success:@"4th Gen iPod touch"];
    if ([platform isEqualToString:@"iPod5,1"])      [task success:@"5th Gen iPod touch"];
    if ([platform isEqualToString:@"iPod7,1"])      [task success:@"6th Gen iPod touch"];

    if ([platform isEqualToString:@"iPad1,1"])      [task success:@"iPad"];

    if ([platform isEqualToString:@"iPad2,1"])      [task success:@"2nd Gen iPad (WiFi)"];
    if ([platform isEqualToString:@"iPad2,2"])      [task success:@"2nd Gen iPad (GSM)"];
    if ([platform isEqualToString:@"iPad2,3"])      [task success:@"2nd Gen iPad (CDMA)"];
    if ([platform isEqualToString:@"iPad2,4"])      [task success:@"2nd Gen iPad New Revision"];

    if ([platform isEqualToString:@"iPad2,5"])      [task success:@"iPad Mini (WiFi)"];
    if ([platform isEqualToString:@"iPad2,6"])      [task success:@"iPad mini (GSM+LTE)"];
    if ([platform isEqualToString:@"iPad2,7"])      [task success:@"iPad mini (CDMA+LTE)"];

    if ([platform isEqualToString:@"iPad3,1"])      [task success:@"3rd Gen iPad (WiFi)"];
    if ([platform isEqualToString:@"iPad3,2"])      [task success:@"3rd Gen iPad (CDMA)"];
    if ([platform isEqualToString:@"iPad3,3"])      [task success:@"3rd Gen iPad (GSM)"];

    if ([platform isEqualToString:@"iPad3,4"])      [task success:@"4th Gen iPad (WiFi)"];
    if ([platform isEqualToString:@"iPad3,5"])      [task success:@"4th Gen iPad (GSM+LTE)"];
    if ([platform isEqualToString:@"iPad3,6"])      [task success:@"4th Gen iPad (CDMA+LTE)"];

    if ([platform isEqualToString:@"iPad4,1"])      [task success:@"iPad Air (WiFi)"];
    if ([platform isEqualToString:@"iPad4,2"])      [task success:@"iPad Air (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPad4,3"])      [task success:@"iPad Air (China)"];

    if ([platform isEqualToString:@"iPad4,4"])      [task success:@"2nd Gen iPad mini (WiFi)"];
    if ([platform isEqualToString:@"iPad4,5"])      [task success:@"2nd Gen iPad mini (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPad4,6"])      [task success:@"2nd Gen iPad mini (China)"];

    if ([platform isEqualToString:@"iPad4,7"])      [task success:@"3rd Gen iPad mini (WiFi)"];
    if ([platform isEqualToString:@"iPad4,8"])      [task success:@"3rd Gen iPad mini (GSM+CDMA)"];
    if ([platform isEqualToString:@"iPad4,9"])      [task success:@"3rd Gen iPad mini (China)"];

    if ([platform isEqualToString:@"iPad5,1"])      [task success:@"4th Gen iPad mini (WiFi)"];
    if ([platform isEqualToString:@"iPad5,2"])      [task success:@"4th Gen iPad mini (GSM+CDMA)"];

    if ([platform isEqualToString:@"iPad5,3"])      [task success:@"2nd Gen iPad Air (WiFi)"];
    if ([platform isEqualToString:@"iPad5,4"])      [task success:@"2nd Gen iPad Air (Cellular)"];

    if ([platform isEqualToString:@"iPad6,3"])      [task success:@"iPad Pro 9.7-inch (WiFi)"];
    if ([platform isEqualToString:@"iPad6,4"])      [task success:@"iPad Pro 9.7-inch (WiFi+LTE)"];

    if ([platform isEqualToString:@"iPad6,7"])      [task success:@"iPad Pro 12.9-inch (WiFi)"];
    if ([platform isEqualToString:@"iPad6,8"])      [task success:@"iPad Pro 12.9-inch (WiFi+LTE)"];

    if ([platform isEqualToString:@"iPad6,11"])     [task success:@"5th Gen iPad (WiFi)"];
    if ([platform isEqualToString:@"iPad6,12"])     [task success:@"5th Gen iPad (GSM+LTE)"];

    if ([platform isEqualToString:@"iPad7,1"])      [task success:@"iPad Pro 12.9-inch (WiFi)"];
    if ([platform isEqualToString:@"iPad7,2"])      [task success:@"iPad Pro 12.9-inch (WiFi+LTE)"];

    if ([platform isEqualToString:@"iPad7,3"])      [task success:@"iPad Pro 10.5-inch (WiFi)"];
    if ([platform isEqualToString:@"iPad7,4"])      [task success:@"iPad Pro 10.5-inch (WiFi+LTE)"];

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
