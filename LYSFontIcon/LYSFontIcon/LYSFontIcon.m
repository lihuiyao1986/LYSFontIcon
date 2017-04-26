//
//  LYSFontIcon.m
//  LYSFontIcon
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "LYSFontIcon.h"
#import <CoreText/CoreText.h>


@implementation LYSFontIconInfo

- (instancetype)initWithText:(NSString *)text textSize:(CGFloat)textSize textColor:(UIColor *)textColor {
    if (self = [super init]) {
        self.text = text;
        self.textSize = textSize;
        self.textColor = textColor;
    }
    return self;
}

+ (instancetype)iconInfoWithText:(NSString *)text textSize:(CGFloat)textSize textColor:(UIColor *)textColor{
    return [[LYSFontIconInfo alloc] initWithText:text textSize:textSize textColor:textColor];
}

@end

@implementation LYSFontIcon

static NSString *_fontName;

#pragma mark - 注册font对应的文件路径
+ (void)registerFontWithURL:(NSURL *)url {
    if ([[NSFileManager defaultManager] fileExistsAtPath:[url path]]) {
        CGDataProviderRef fontDataProvider = CGDataProviderCreateWithURL((__bridge CFURLRef)url);
        CGFontRef newFont = CGFontCreateWithDataProvider(fontDataProvider);
        CGDataProviderRelease(fontDataProvider);
        CTFontManagerRegisterGraphicsFont(newFont, nil);
        CGFontRelease(newFont);
    }
 }


+ (UIFont *)fontWithSize:(CGFloat)size {
    UIFont *font = [UIFont fontWithName:[self fontName] size:size];
    if (!font) {
        NSURL *fontFileUrl = [[NSBundle mainBundle] URLForResource:[self fontName] withExtension:@"ttf"];
        [self registerFontWithURL: fontFileUrl];
        font = [UIFont fontWithName:[self fontName] size:size];
        NSAssert(font, @"UIFont object should not be nil, check if the font file is added to the application bundle and you're using the correct font name.");
    }
    return font;
}

+ (void)setFontName:(NSString *)fontName {
    _fontName = fontName;    
}

+ (NSString *)fontName {
    return _fontName ? : @"iconfont";
}


@end
