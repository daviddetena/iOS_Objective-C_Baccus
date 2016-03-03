//
//  DTCWebViewController.h
//  Baccus
//
//  Created by David de Tena on 03/03/16.
//  Copyright © 2016 David de Tena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTCWineModel.h"

@interface DTCWebViewController : UIViewController<UIWebViewDelegate>


#pragma mark - Properties

@property (strong, nonatomic) DTCWineModel *model;
@property (weak, nonatomic) IBOutlet UIWebView *browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;


#pragma mark - Init

- (id) initWithModel:(DTCWineModel *) aModel;

@end
