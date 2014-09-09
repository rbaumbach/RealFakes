#import "FakeAFHTTPSessionManager.h"


@implementation FakeAFHTTPSessionManager

- (instancetype)initWithBaseURL:(NSURL *)url sessionConfiguration:(NSURLSessionConfiguration *)configuration
{
    self.urlSessionConfiguration = configuration;
    return [super initWithBaseURL:url sessionConfiguration:configuration];
}

- (NSURLSessionDataTask *)GET:(NSString *)URLString
                   parameters:(id)parameters
                      success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                      failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.getSuccessBlock = success;
    self.getFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];
}

- (NSURLSessionDataTask *)HEAD:(NSString *)URLString
                    parameters:(id)parameters
                       success:(void (^)(NSURLSessionDataTask *task))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.headSuccessBlock = success;
    self.headFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
                       success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.postSuccessBlock = success;
    self.postFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
     constructingBodyWithBlock:(void (^)(id <AFMultipartFormData> formData))block
                       success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.putWithMultipartFormDataBlock = block;
    self.putWithMultipartFormDataSuccessBlock = success;
    self.putWithMultipartFormDataFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)PUT:(NSString *)URLString
                   parameters:(id)parameters
                      success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                      failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.putSuccessBlock = success;
    self.putFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)PATCH:(NSString *)URLString
                     parameters:(id)parameters
                        success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                        failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.patchSuccessBlock = success;
    self.patchFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)DELETE:(NSString *)URLString
                      parameters:(id)parameters
                         success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                         failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.deleteSuccessBlock = success;
    self.deleteFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

@end
