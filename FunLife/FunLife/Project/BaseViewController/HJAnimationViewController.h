//
//  HJAnimationViewController.h
//  FunLife
//
//  Created by huangjian on 16/1/3.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HJAnimationViewControllerDelegate <NSObject>

- (void)animationViewControllerDidSelectedItemIndex:(NSInteger)index;

@end

@interface HJAnimationViewController : UIViewController

@property (nonatomic, weak) id <HJAnimationViewControllerDelegate>delegate;

@end

@protocol HJItemViewDelegate <NSObject>

- (void)didTapped:(NSInteger)index;

@end

@interface HJItemView : UIButton

@property (nonatomic, weak) id <HJItemViewDelegate>delegate;

- (instancetype)initWithNormalImage:(NSString *)normal highlightedImage:(NSString *)highlighted tag:(NSInteger)tag title:(NSString *)title;

@end
