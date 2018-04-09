
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
//        cls.ISA();
        NSObject *obj = [[[NSObject alloc] init] autorelease];
        [obj retain];
        int *a = nil;
//        kk b;
//        b.a = 0b10;
//        b.b = 0x3;
        
//        __weak NSObject *weakObj = obj;
////        obj = nil;
//        __weak NSObject *weakObj1 = obj;
//        __weak NSObject *weakObj2 = obj;
//        __weak NSObject *weakObj3 = obj;
//        __weak NSObject *weakObj4 = obj;
        NSLog(@"%p",obj);
        [obj release];
    }
    return 0;
}
