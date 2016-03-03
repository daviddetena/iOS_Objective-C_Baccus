//
//  DTCWebViewController.m
//  Baccus
//
//  Created by David de Tena on 03/03/16.
//  Copyright © 2016 David de Tena. All rights reserved.
//

#import "DTCWebViewController.h"

@interface DTCWebViewController ()

@end

@implementation DTCWebViewController


- (id) initWithModel:(DTCWineModel *) aModel{
    if(self = [super initWithNibName:nil bundle:nil]){
        _model = aModel;
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self displayURL: self.model.wineCompanyWeb];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Utils
- (void) displayURL: (NSURL *) aURL{
    // Make this VC WebView's delegate to understand their methods
    self.browser.delegate = self;
    self.activityView.hidden = NO;
    [self.activityView startAnimating];
    [self.browser loadRequest:[NSURLRequest requestWithURL:aURL]];
}

#pragma mark - UIWebViewDelegate
- (void) webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityView stopAnimating];
    self.activityView.hidden = YES;
}

@end
