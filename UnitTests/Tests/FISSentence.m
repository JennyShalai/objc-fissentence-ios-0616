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

// // PUBLIC METHODS // //

- (void)addWord:(NSString *)word {
    if ([self validWord:word]) {
        [self.words addObject:word];
    }
    [self assembleSentence];
}

- (void)addWords:(NSArray *)words withPunctuation:(NSString *)punctuation {
    if ((words != nil) && ([words count] > 0) && (punctuation != nil) && ([self validPunctuation:punctuation])) {
        for (NSString *word in words) {
            if ([self validWord:word]) {
                 [self.words addObject:word];
            }
        }
        self.punctuation = punctuation;
    } else {
        return;
    }
    [self assembleSentence];
}

- (void)removeWordAtIndex:(NSUInteger )index {
    if ([self validIndex:index]) {
        [self.words removeObjectAtIndex:index];
    }
    [self assembleSentence];
}

- (void)insertWord:(NSString *)word atIndex:(NSUInteger )index {
    if ([self validIndex:index]) {
        [self.words insertObject:word atIndex:index];
    }
    [self assembleSentence];
}

- (void)replacePunctuationWithPunctuation:(NSString *)punctuation {
    if ([self validPunctuation:punctuation]) {
        self.punctuation = punctuation;
    }
    [self assembleSentence];
}

- (void)replaceWordAtIndex:(NSUInteger)index withWord:(NSString *)word {
    if ( ([self validIndex:index]) && ([self validWord:word]) ) {
        [self.words replaceObjectAtIndex:index withObject:word];
    }
    [self assembleSentence];
}

// // PRIVATE METHODS // //

- (void)assembleSentence {
    self.sentence = [[self.words componentsJoinedByString:@" "] stringByAppendingString:self.punctuation];
}

- (BOOL)validWord:(NSString *)word {
    BOOL isWordValid = NO;
    NSString *wordNoSpaces = [word stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ((word != nil) && (![word isEqualToString:@""]) && ([word isEqualToString:wordNoSpaces])) {
        isWordValid = YES;
    }
    return isWordValid;
}

- (BOOL)validPunctuation:(NSString *)punctuation {
    BOOL isValidPunctuation = NO;
    NSString *punctuationString = @".,:;-?!";
    if ([punctuationString containsString:punctuation]) {
        isValidPunctuation = YES;
    }
    return isValidPunctuation;
}

- (BOOL)validIndex:(NSUInteger )index {
    BOOL isValidIndex = NO;
    if ([self.words count] > index) {
        isValidIndex = YES;
    }
    return isValidIndex;
}


@end
