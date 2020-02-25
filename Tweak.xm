//DirecTV
%hook ATVOmnitureManager

- (bool)isAirplayMirroringActive {
	return NO;
}

- (id)getScreenSize:(bool)size isAirplaying:(bool)airplaying {
	airplaying=NO;
	return %orig;
}

- (void)trackOmnitureForVideoStarted:(id)arg1 withVideoInfo:(id)arg2 withClientID:(id)arg3 withCurrentVideoTime:(double)arg4 withVideoLoadTime:(double)arg5 withFullScreen:(bool)arg6 isAirplayingOn:(bool)arg7 {
	return; arg7=NO;
}

%end

%hook ANVAnalyticsManager

- (void)trackAirplay:(id)arg1 withClientID:(id)arg2 {
	return;
}

%end

%hook AnvatoPlayer

- (bool)isAirplaying {
	return NO;
}

%end

%hook ANVPlayerController

- (bool)isAirPlayVideoStreamingActive {
	return NO;
}

- (bool)allowAirPlayVideoStreaming {
	return YES;
}

%end

%hook ANVPlayerContainerViewController

- (bool)isAirplayActive {
	return NO;
}

%end

%hook DTVExternalDisplayMonitor

- (void)checkForExternalDisplay {
	return;
}

- (bool)isExternalDisplayConnected {
	return NO;
}

- (void)blockadeExternalDisplays:(bool)arg1 {
	return %orig(NO);
}

- (void)addBlockade {
	return;
}



%end

%hook PGWSChannel 

- (bool)isExternalDisplayAllowed {
	return YES;
}

%end

%hook ASWSStreamingChannel

- (bool)externalDisplayAllowed {
	return YES;
}

%end

//Optimum

%hook ConfigXMLResponseModel

- (bool)allowAirplay {
	return YES;
}

%end

%hook CVCrDVRAppDelegate

- (void)disableExternalDisplay {
	return;
}

%end

%hook CLSUserDefaults

- (id)stringForKey:(NSString *)key {
	if ([key isEqualToString:@"ISAIRPLAYENABLED"]) return [NSString stringWithFormat:@"0"];
	else return %orig;
}

%end

//Crunchyroll

%hook CRVideoPlayerView

- (bool)showAirPlayButton {
	return YES;
}

%end

%hook FNFPlayer

- (bool)allowsExternalPlayback {
	return YES;
}

%end

%hook CRVideoPlayerViewController 

- (bool)allowsExternalDisplay {
	return YES;
}

%end

%hook CRVideoPlayer

- (bool)allowsExternalDisplay {
	return YES;
}

%end

//Bell Fibe (CA)

%hook AzukiDRMAgent

- (bool)isAirplayBlocked {
	return NO;
}

%end

%hook IMCInternal 

- (bool)isAirplayCapable {
	return YES;
}

%end

%hook BCACardViewData

- (bool)isContentPlayable {
	return YES;
}

%end

//Verizon FIOS

%hook VZCoreStateMachine

- (bool)isAirPlayToSupport {
	return YES;
}

- (bool)isAirPlayAvailable {
	return YES;
}

%end

%hook MSCSecureClient 

- (bool)allowsAirPlay {
	return YES;
}

%end

%hook AMSProxySingleton 

- (bool)allowsAirPlay {
	return YES;
}

%end

%hook AMSMotorolaProxy

- (bool)allowsAirPlay {
	return YES;
}

%end

%hook VZMediaPlayerController

- (bool)isAirPlayRestrictionApplied {
	return YES;
}

%end

//Cox Contour (incomplete)

%hook XTVAppContext

- (bool)restrictionsApply:(id)arg1 {
	return NO;
}

%end

%hook TVEItemDataSource

- (bool)shouldDisplayOOHRestrictionInfoForItemCard:(id)arg1 {
	return NO;
}

%end

%hook XTVTVEItem 

- (bool)isPlayable {
	return YES;
}

%end

//Fox Match Pass

%hook D3StandardPlayer 

- (bool)isInAirPlayMode {
	return NO;
}

- (bool)isAirPlayEnabled {
	return NO;
}

%end

%hook D3AirPlayConfiguration

- (bool)enableAirPlay:(id)arg1 {
	return YES;
}

%end

//Spectrum TV

/*%hook TWCClass1

+ (bool)enableAirPlay {
	return YES;
}

%end

%hook TWCClass2

- (bool)shouldAllowAirPlay {
	return YES;
}

%end

%hook TWCClass3

- (void)externalDisplayStateChanged {
	return;
}

%end*/

//Xfinity

%hook ANVPlayerController

- (bool)addedExternalPlaybackObserver {
	return NO;
}

%end

%hook FWSlot

- (bool)externalPlaybackActive {
	return NO;
}

%end

%hook ANVExternalDisplayManager

- (void)startMonitoring {
	return;
}

%end

%hook PlayerObserver

- (bool)isExternalPlaybackActive:(id)arg1 mpController:(id)arg2 {
	return NO;
}

%end

%hook LLDatapointHelper

+ (bool)isDeviceJailbroken {
	return NO;
}

%end

%hook XTVChannel

- (bool)isPlayable {
	return YES;
}

%end

//myCANAL

%hook CPD2GHLSDownloader

- (void)drmManager:(id)arg1 isPlayingOnAirplayForAsset:(bool)airplay {
	%orig;
	airplay = NO;
}

%end

%hook _TtC16CanalPlusProject10DRMManager

- (bool)isMediaPlayOnAirPlay {
	return NO;
}

%end

%hook CPAppDelegate

- (bool)shouldDisplayExternalDevicesButton {
	return YES;
}

%end

%hook AirplayManager //NFL

- (void)startAirplayMonitoring {
	return;
}


-(void)setShowsRouteButton:(long long)arg1 showsRouteButton:(bool)arg2 {
	arg1 = 1.0;
	arg2 = YES;
	%orig;
}

%end

%hook ANVLivePlayer

- (void)_didEnterBackground:(id)arg1 {
	return;
}

%end

%hook ANVVideoConfig 
- (bool)allowsAirplayExternalPlayback {
	return YES;
}

%end

%hook MPAVController
- (bool)usesAudioOnlyModeForExternalPlayback {
	return NO;
}

- (bool)disableAirPlayMirroringDuringPlayback {
	return NO;
}

%end




%hook BILivePlayerViewController //Bein Sports Connect
- (bool)isAirplayOn {
	return NO;
}

- (bool)allowsExternalPlayback {
	return YES;
}

%end

%hook BICLiveViewController

+ (bool)isUsingAirplay {
	return NO;
}

%end

%hook NFUIPlayerAirPlayButton //netflix

- (bool)isEnabled {
	return YES;
}

%end

%hook NFUIPlayerInternal

-(bool)allowsExternalPlayback {
	return YES;
}

- (bool)isExternalPlaybackActive {
	return NO;
}

- (bool)playerController:(id)arg1 externalPlaybackActive:(bool)arg2 {
	return arg2 = NO;
}

%end

%hook NFUIExternalDevicePicker

- (bool)willShowAirPlayPicker {
	return YES;
}

%end

%hook NFUIPlayerControlsHeaderView

-(bool)airPlayRoutesAvailable {
	return YES;
}

- (void)setAirPlayButtonEnabled:(bool)show {
	%orig;
	show = YES;
}

- (bool)airPlayButton {
	return YES;
}

%end