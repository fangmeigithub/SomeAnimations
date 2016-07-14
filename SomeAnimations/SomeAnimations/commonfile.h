

#define HEIGHT    [UIScreen mainScreen].bounds.size.height
#define WIDTH     [UIScreen mainScreen].bounds.size.width
#define NEWX                     [UIScreen mainScreen].bounds.size.width/320

// 判断硬件类型
#define iPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)



