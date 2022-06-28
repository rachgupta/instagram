//
//  ComposeViewController.h
//  Instagram
//
//  Created by Rachna Gupta on 6/27/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ComposeViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

- (UIImage *)resizeImage:(UIImage *)image withSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
