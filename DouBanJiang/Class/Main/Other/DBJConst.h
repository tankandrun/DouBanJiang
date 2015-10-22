#import <Foundation/Foundation.h>

#ifdef DEBUG
#define DBJLog(...) NSLog(__VA_ARGS__)
#else
#define DBJLog(...)
#endif

#define DBJColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define DBJTintColor DBJColor(72, 187, 91)
