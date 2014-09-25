//
//  MOPointerValue.m
//  Mocha
//
//  Created by Logan Collins on 7/26/12.
//  Copyright (c) 2012 Sunflower Softworks. All rights reserved.
//

#import "MOPointerValue.h"


@interface MOPointerValue ()

@property (readwrite) void * pointerValue;
@property (copy, readwrite) NSString *typeEncoding;

@end

extern BOOL logging;

@implementation MOPointerValue

- (id)initWithPointerValue:(void *)pointerValue typeEncoding:(NSString *)typeEncoding {
    if (logging)
        NSLog(@"%s", __FUNCTION__);
    self = [super init];
    if (self) {
        self.pointerValue = pointerValue;
        self.typeEncoding = typeEncoding;
    }
    return self;
}

- (NSString *)description {
    if (logging)
        NSLog(@"%s", __FUNCTION__);
    if ([self.typeEncoding length] > 0) {
        return [NSString stringWithFormat:@"<%p type=%@>", self.pointerValue, self.typeEncoding];
    }
    else {
        return [NSString stringWithFormat:@"<%p>", self.pointerValue];
    }
}

@end
