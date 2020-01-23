
#import "RNNativeToastLibrary.h"
#import "IOSNativeToast.h"

@interface RNNativeToastLibrary()
@property (nonatomic, retain) IOSNativeToast *toast;
@end

@implementation RNNativeToastLibrary

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

- (instancetype)init {
  self = [super init];
  if (self) {
    self.toast = [[IOSNativeToast alloc] init];
  }
  return self;
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

RCT_EXPORT_METHOD(show:(NSString *)text)
{
  [self.toast showToast:text];
}

RCT_EXPORT_MODULE()

@end
  
