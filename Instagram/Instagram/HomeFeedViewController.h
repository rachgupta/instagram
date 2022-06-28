//
//  HomeFeedViewController.h
//  Instagram
//
//  Created by Rachna Gupta on 6/27/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeFeedViewController : UIViewController
@property (nonatomic, strong) UIRefreshControl *refreshControl;
- (void)fetchPosts;
@end

NS_ASSUME_NONNULL_END
