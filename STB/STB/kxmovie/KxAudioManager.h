#import <CoreFoundation/CoreFoundation.h>

typedef void (^KxAudioManagerOutputBlock)(float *data, UInt32 numFrames, UInt32 numChannels);

@protocol KxAudioManager <NSObject>

@property (readonly) UInt32             numOutputChannels;
@property (readonly) Float64            samplingRate;
@property (readonly) UInt32             numBytesPerSample;
@property (readonly) Float32            outputVolume;
@property (readonly) BOOL               playing;
@property (readonly, strong) NSString   *audioRoute;

@property (readwrite, copy) KxAudioManagerOutputBlock outputBlock;

- (BOOL) activateAudioSession;
- (void) deactivateAudioSession;
- (BOOL) play;
- (void) pause;

@end

@interface KxAudioManager : NSObject
+ (id<KxAudioManager>) audioManager;
@end
