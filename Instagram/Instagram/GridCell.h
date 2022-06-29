//
//  GridCell.h
//  Instagram
//
//  Created by Rachna Gupta on 6/29/22.
//

#import <UIKit/UIKit.h>
#import "PFImageView.h"

NS_ASSUME_NONNULL_BEGIN

@interface GridCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet PFImageView *postImage;

@end

NS_ASSUME_NONNULL_END
