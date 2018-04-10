
//  main.m
//  debug-objc
//
//  Created by closure on 2/24/16.
//
//

#import <Foundation/Foundation.h>

typedef struct kk{
    unsigned int a : 2;
    unsigned int b : 30;
}kk;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        size_t size = sizeof(Class);
        Class cls = [NSObject class];
        
        NSString *str = [NSString stringWithFormat:@"asd"];
//        cls.ISA();
        NSObject *obj = [[NSObject alloc] init];
        [obj run];
//        for (int i = 0; i < 256; i++) {
//            [obj retain];
//        }
//        [obj retainCount];
//        int *a = nil;
////        kk b;
////        b.a = 0b10;
////        b.b = 0x3;
//
////        __weak NSObject *weakObj = obj;
//////        obj = nil;
////        __weak NSObject *weakObj1 = obj;
////        __weak NSObject *weakObj2 = obj;
////        __weak NSObject *weakObj3 = obj;
////        __weak NSObject *weakObj4 = obj;
//        NSLog(@"%p",obj);
//        for (int i = 0; i < 128; i++) {
//            [obj release];
//        }
//        [obj release];
//        [obj release];
    }
    return 0;
}
