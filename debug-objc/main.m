
//  main.m
//  debug-objc
//
//  Created by closure on 2/24/16.
//
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

typedef struct kk{
    unsigned int a : 2;
    unsigned int b : 30;
}kk;

extern id
objc_loadWeakRetained(id *location);

extern id
objc_loadWeak(id *location);

@interface myObject : NSObject

@property (nonatomic, copy) NSString *obj2;
@property (nonatomic, copy) NSString *obj1;

- (void)hello;

@end

@implementation myObject

- (instancetype)init{
    if (self = [super init]) {
        self->_obj1 = [NSString stringWithFormat:@"23423234234"];
        self->_obj2 = [NSString stringWithFormat:@"dfgertrtewrtew"];
    }
    return self;
}

- (void)hello{
    NSLog(@"hello");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        myObject *obj = [[myObject alloc] init];
//        int a = ~15;
        __block int b = 22;
        void (^testBlock)(int) = ^(int a){
            printf("%d",b);
        };
        unsigned int n ;
        Method *me = class_copyMethodList([testBlock class], &n);
        
        Ivar *ivar = class_copyIvarList([testBlock class], &n);
        NSObject *obj = [[NSObject alloc] init];
        NSObject * __weak weakObj = obj;
        NSObject *obj1 = objc_loadWeak(&obj);
        NSLog(@"");
//        printf(@"aaaaaaa-%d",a);
        NSLog(@"%p",[myObject class]);
//        obj->_obj1 = [NSString stringWithFormat:@"23423234234"];
//        obj->_obj2 = [NSString stringWithFormat:@"dfgertrtewrtew"];
        
    }
    return 0;
}
