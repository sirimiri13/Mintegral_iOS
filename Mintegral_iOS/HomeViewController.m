//
//  TestViewController.m
//  demo_mintegral_ios
//
//  Created by Hương Lâm Quỳnh on 05/01/2022.
//

#import <Foundation/Foundation.h>
#import "HomeViewController.h"
#import <MTGSDK/MTGSDK.h>
#import <MTGSDKBanner/MTGBannerAdView.h>
#import <MTGSDKBanner/MTGBannerAdViewDelegate.h>


static NSString *const MintegralEventErrorDomain = @"com.google.MintegralCustomEvent";




@interface HomeViewController ()<MTGBannerAdViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *optionButton;

@property (nonatomic, strong) MTGBannerAdView *bannerAdView;
@property BOOL isShowAds;

@end



@implementation HomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"home view");
    _isShowAds = true;
    [_optionButton setTitle: @"Close Ads" forState:UIControlStateNormal];
    if (_bannerAdView == nil) {
        _bannerAdView = [[MTGBannerAdView alloc]initBannerAdViewWithAdSize:CGSizeMake(100, 50) placementId:@"138804" unitId:@"146898" rootViewController:self];
    _bannerAdView.frame = CGRectMake(10, 300, 345,50);
    _bannerAdView.delegate = self;

        _bannerAdView.autoRefreshTime = 3;//Automatic refresh time, in seconds, is set in the range of 10s~180s.If set to 0, it will not be automatically refreshed.

        _bannerAdView.delegate = self;
        [self.view addSubview:_bannerAdView];
        [_bannerAdView loadBannerAd];

    }
}

- (IBAction)optionButtonAction:(id)sender
{
    
    
    if (!_isShowAds) {
        NSLog(@"add");
        _bannerAdView.alpha = 1;
        [_optionButton setTitle:@"Close Ads" forState:UIControlStateNormal];


}else {
    NSLog(@"close");

//    [_bannerAdView destroyBannerAdView];
    _bannerAdView.alpha = 0;
    [_optionButton setTitle:@"Show Ads" forState:UIControlStateNormal];

}
    _isShowAds = !_isShowAds;

}

#pragma mark MTGBannerAdViewDelegate



- (void) destroyBannerAdView{
    NSLog (@"destroy");
}

- (void) loadBannerAd{
    NSLog (@"add banner");
}

- (void) adViewLoadSuccess:(MTGBannerAdView *)adView
{
    //This method is called when adView ad slot loaded successfully.
    NSLog (@"adViewLoadSuccess");
}

- (void)adViewLoadFailedWithError:(NSError *)error adView:(MTGBannerAdView *)adView
{
    //This method is called when adView ad slot failed to load.
//    [self log:[NSString stringWithFormat:@"Failed to load ads, error:%@", error.localizedDescription]];
    
    NSLog(@"adViewLoadFailedWithError \(error.description)");
}

- (void)adViewWillLogImpression:(MTGBannerAdView *)adView
{
    //This method is called before the impression of an MTGBannerAdView object.
//    [self log:@"adViewWillLogImpression"];
}

- (void)adViewDidClicked:(MTGBannerAdView *)adView
{
    //This method is called when ad is clicked.
//    [self log:@"adViewDidClicked"];
}

- (void)adViewWillLeaveApplication:(MTGBannerAdView *)adView
{
    //Sent when a user is about to leave your application as a result of tapping.Your application will be moved to the background shortly after this method is called.
//    [self log:@"adViewWillLeaveApplication"];
}
//- (void)adViewWillOpenFullScreen:(MTGBannerAdView *)adView
//{
//    //Would open the full screen view.Sent when openning storekit or openning the webpage in app.
////    [self log:@"adViewWillOpenFullScreen"];
//}
//- (void)adViewCloseFullScreen:(MTGBannerAdView *)adView
//{
//    //Would close the full screen view.Sent when closing storekit or closing the webpage in app.
////    [self log:@"adViewCloseFullScreen"];
//}

- (void)adViewClosed:(MTGBannerAdView *)adView {
}

- (void)adViewCloseFullScreen:(MTGBannerAdView *)adView {
    
}


- (void)adViewWillOpenFullScreen:(MTGBannerAdView *)adView {
    
}



- (void)encodeWithCoder:(nonnull NSCoder *)coder {
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
  
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {

}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    NSLog(@"sizeForChildContentContainer");
    return parentSize;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog (@"systemLayoutFittingSizeDidChangeForChildContentContainer");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog (@"viewWillTransitionToSize");

}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog (@"willTransitionToTraitCollection");

}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    NSLog (@"didUpdateFocusInContext");

}

- (void)setNeedsFocusUpdate {
    NSLog (@"setNeedsFocusUpdate");

}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    return true;
}

- (void)updateFocusIfNeeded {
    NSLog (@"updateFocusIfNeeded");
}






@end
