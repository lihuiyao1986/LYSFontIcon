//
//  LYSFontIcon.h
//  LYSFontIcon
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface LYSFontIconInfo : NSObject

#pragma mark - 文本
@property (nonatomic, strong) NSString *text;

#pragma mark - 字体颜色
@property (nonatomic, strong) UIColor *textColor;

#pragma mark - 字体大小
@property (nonatomic, assign) CGFloat textSize;

- (instancetype)initWithText:(NSString *)text textSize:(CGFloat)textSize textColor:(UIColor *)textColor;

+ (instancetype)iconInfoWithText:(NSString *)text textSize:(CGFloat)textSize textColor:(UIColor *)textColor;

@end


#define LYSFontIconInfoMake(text, imageSize, imageColor) [LYSFontIconInfo iconInfoWithText:text textSize:imageSize textColor:imageColor]

@interface LYSFontIcon : NSObject

#pragma mark - 根据获取对应大小的字体
+ (UIFont *)fontWithSize: (CGFloat)size;

#pragma mark - 设置fontName
+ (void)setFontName:(NSString *)fontName;

@end
