//
//  TestViewController.m
//  demo_mintegral_ios
//
//  Created by Hương Lâm Quỳnh on 05/01/2022.
//

#import <Foundation/Foundation.h>
#import "TestViewController.h"

#import <MTGSDK/MTGSDK.h>
#import <MTGSDKBanner/MTGBannerAdView.h>
#import <MTGSDKBanner/MTGBannerAdViewDelegate.h>
@interface TestViewController ()<MTGBannerAdViewDelegate>

@property (nonatomic, strong) MTGBannerAdView *bannerAdView;

@end

@implementation TestViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    if (_bannerAdView == nil) {
        _bannerAdView = [[MTGBannerAdView alloc]initBannerAdViewWithAdSize:CGSizeMake(100, 50) placementId:@"138804" unitId:@"146898" rootViewController:self];
    _bannerAdView.frame = CGRectMake(10, 100, 100,50);
    _bannerAdView.delegate = self;

        _bannerAdView.autoRefreshTime = 0;//Automatic refresh time, in seconds, is set in the range of 10s~180s.If set to 0, it will not be automatically refreshed.

        _bannerAdView.delegate = self;
        [self.view addSubview:_bannerAdView];
        [_bannerAdView loadBannerAd];

    }

}

- (IBAction)destroyButtonAction:(id)sender
{
   [_bannerAdView destroyBannerAdView];
}

#pragma mark MTGBannerAdViewDelegate


- (void)adViewLoadSuccess:(MTGBannerAdView *)adView
{
    //This method is called when adView ad slot loaded successfully.
//    [self log:@"adViewLoadSuccess"];
}

- (void)adViewLoadFailedWithError:(NSError *)error adView:(MTGBannerAdView *)adView
{
    //This method is called when adView ad slot failed to load.
//    [self log:[NSString stringWithFormat:@"Failed to load ads, error:%@", error.localizedDescription]];
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
- (void)adViewWillOpenFullScreen:(MTGBannerAdView *)adView
{
    //Would open the full screen view.Sent when openning storekit or openning the webpage in app.
//    [self log:@"adViewWillOpenFullScreen"];
}
- (void)adViewCloseFullScreen:(MTGBannerAdView *)adView
{
    //Would close the full screen view.Sent when closing storekit or closing the webpage in app.
//    [self log:@"adViewCloseFullScreen"];
}

- (void)adViewClosed:(MTGBannerAdView *)adView {
}


- (void)encodeWithCoder:(nonnull NSCoder *)coder {
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
  
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {

}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    return parentSize;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog (@"123");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog (@"123");

}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog (@"123");

}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    NSLog (@"123");

}

- (void)setNeedsFocusUpdate {
    NSLog (@"123");

}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    return true;
}

- (void)updateFocusIfNeeded {
    NSLog (@"123");
}

@end
