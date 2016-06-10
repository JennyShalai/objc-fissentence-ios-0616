//
//  FISSentence.m
//  objc-fissentence
//
//  Created by Flatiron School on 6/9/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISSentence.h"


@interface FISSentence ()

@property (strong, nonatomic, readwrite) NSString *sentence;

@end


@implementation FISSentence

- (void)addWord:(NSString *)word {
    if (![word isEqualToString:@""] && ![word is ])
    [self.words addObject:word];
}

- (void)addWords:(NSArray *)words withPunctuation:(NSString *)punctuation {
    
}


- (void)removeWordAtIndex:(NSUInteger )index {
    
}


- (void)insertWord:(NSString *)word atIndex:(NSUInteger )index {
    
}


- (void)replacePunctuationWithPunctuation:(NSString *)punctuation {
    
}


- (void)replaceWordAtIndex:(NSUInteger)index withWord:(NSString *)word {
    
}

- (void)assembleSentence {
    self.sentence = [[self.words componentsJoinedByString:@" "] stringByAppendingString:self.punctuation];
}

- (BOOL)validWord:(NSString *)word {
    return NO;
}


- (BOOL)validPunctuation:(NSString *)punctuation {
    return NO;
}

- (BOOL)validIndex:(NSUInteger )index {
    return NO;
}


@end
