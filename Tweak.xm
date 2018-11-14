@interface SplashVC
-(void)dismissMe;
@end

%hook SplashVC
- (void)setLoader:(UIActivityIndicatorView *)loader { %log; %orig; }
- (UIActivityIndicatorView *)loader { %log; UIActivityIndicatorView * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setErrorLabel:(UILabel *)errorLabel { %log; %orig; }
- (UILabel *)errorLabel { %log; UILabel * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setLabelStatus:(UILabel *)labelStatus { %log; %orig; }
- (UILabel *)labelStatus { %log; UILabel * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)closeProposeInApp { %log; %orig; }
- (void)displayInAppVC { %log;}
- (void)displayRemoteVC { %log; %orig; }
- (void)proposeNewRemote { %log; %orig; }
- (void)proposeInApp { %log;}
- (void)checkErrorState { %log; %orig; }
- (void)interstitialAdDidClose:(id)arg1 { %log; %orig; }
- (void)interstitialAd:(id)arg1 didFailWithError:(id)arg2 { %log; %orig; }
- (void)interstitialAdDidLoad:(id)arg1 { %log; %orig; }
- (void)loadFacebookInterstitial { %log; %orig; }
- (void)interstitial:(id)arg1 didFailToReceiveAdWithError:(id)arg2 { %log; %orig; }
- (void)interstitialDidDismissScreen:(id)arg1 { %log; %orig; }
- (void)interstitialDidReceiveAd:(id)arg1 { %log; %orig; }
- (void)cacheOrDisplayAdmob { %log; %orig; }
- (void)TryToDisplayAdmob { %log; %orig; }
- (void)TryToDisplayAdmobOrQuit { %log; %orig; }
- (void)changeErrorMessage:(id)arg1 { %log; %orig; }
- (void)changeLabelStatus:(id)arg1 { %log; %orig; }
- (void)didReceiveMemoryWarning { %log; %orig; }
- (void)CallInters { %log; %orig; }
- (void)resumeFromBackground { %log; %orig; }
- (void)cacheAdmob { %log; %orig; }
- (void)watchDog {  %log; [self dismissMe];}
- (void)dismissMe { %log; %orig; }
- (void)hideMe { %log; %orig; }
- (void)viewDidLoad { %log; [self dismissMe]; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned int )hash { %log; unsigned int  r = %orig; [self dismissMe]; HBLogDebug(@" = %u", r); return r; }
%end

%hook GADInterstitial

- (void)loadRequest:(id)arg1{}
- (void)loadSlotFromCacheEntry:(id)arg1{}
- (void)createSlot{}
- (void)interstitialCreatedSlot:(id)arg1{}
- (BOOL)slotShouldReloadCurrentRequest:(id)arg1{return NO;}

%end

%hook GADAdAppViewController
- (void)loadHTML:(id)arg1 baseURL:(id)arg2{}
- (void)load:(id)arg1{}
- (id)initWithAdView:(id)arg1{return nil;}
- (id)initWithNibName:(id)arg1 bundle:(id)arg2{return nil;}
- (id)initWithCoder:(id)arg1{return nil;}
- (id)init{return nil;}
- (BOOL)isLoaded{return YES;}
%end

@interface GADBannerView
@property(retain, nonatomic) UIView *rootAdView; // @synthesize rootAdView=_rootAdView;
@end

%hook GADBannerView
- (UIView *)rootAdView{return nil;}
- (id)init{return nil;}
- (id)initWithFrame:(struct CGRect)arg1{return nil;}
- (id)initWithCoder:(id)arg1{return nil;}
%end

%hook GADSlot
- (id)initWithFrame:(struct CGRect)arg1{return nil;}
- (void)loadAd:(id)arg1 headers:(id)arg2{}
%end
