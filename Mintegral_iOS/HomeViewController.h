//
//  TestViewController.h
//  demo_mintegral_ios
//
//  Created by Hương Lâm Quỳnh on 05/01/2022.
//

#ifndef HomeViewController_h
#define HomeViewController_h

#import <MTGSDK/MTGSDK.h>
#import <MTGSDKBanner/MTGBannerAdView.h>
#import <MTGSDKBanner/MTGBannerAdViewDelegate.h>
@interface HomeViewController :UIViewController
@property(nonatomic,assign) NSInteger autoRefreshTime;
@property(nonatomic,assign) MTGBool showCloseButton;
@property(nonatomic,copy,readonly) NSString * _Nullable requestId;


/**
 This is a method to initialize an MTGBannerAdView with the given unit id

 @param adSize The size of the banner view.
 @param placementId The id of the ad placement id. You can create your ad placement from our Portal.
 @param unitId The id of the ad unit. You can create your unit id from our Portal.
 @param rootViewController The view controller that will be used to present full screen ads.
 @return
 */
- (nonnull instancetype)initBannerAdViewWithAdSize:(CGSize)adSize
                                       placementId:(nullable NSString *)placementId
                                            unitId:(nonnull NSString *) unitId
                                rootViewController:(nullable UIViewController *)rootViewController;

/**
 This is a method to initialize an MTGBannerAdView with the given unit id

 @param bannerSizeType please refer to enum MTGBannerSizeType.
 @param placementId The id of the ad placement id. You can create your ad placement from our Portal.
 @param unitId The id of the ad unit. You can create your unit id from our Portal.
 @param rootViewController The view controller that will be used to present full screen ads.
 @return
 */
- (nonnull instancetype)initBannerAdViewWithBannerSizeType:(MTGBannerSizeType)bannerSizeType
                                               placementId:(nullable NSString *)placementId
                                                    unitId:(nonnull NSString *) unitId
                                        rootViewController:(nullable UIViewController *)rootViewController;





- (void)loadBannerAd;
/**
 This method will clear all the variables and properties of the MTGBannerAdView.

 NOTE: After calling this method, if you need to continue using the MTGBannerAdView, you must reinitialize a MTGBannerAdView
 */
- (void)destroyBannerAdView;


/**
* get the id of this request ad,call  after adViewLoadSuccess
*/
@end


#endif /* TestViewController_h */
