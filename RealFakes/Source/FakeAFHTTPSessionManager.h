#import "AFHTTPSessionManager.h"


@interface FakeAFHTTPSessionManager : AFHTTPSessionManager

@property (strong, nonatomic) NSURLSessionConfiguration *urlSessionConfiguration;

@property (strong, nonatomic) id getParameters;
@property (copy, nonatomic) void (^getSuccessBlock)(NSURLSessionDataTask *task, id responseObject);
@property (copy, nonatomic) void (^getFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@property (strong, nonatomic) id headParameters;
@property (copy, nonatomic) void (^headSuccessBlock)(NSURLSessionDataTask *task);
@property (copy, nonatomic) void (^headFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@property (strong, nonatomic) id postParameters;
@property (copy, nonatomic) void (^postSuccessBlock)(NSURLSessionDataTask *task, id responseObject);
@property (copy, nonatomic) void (^postFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@property (strong, nonatomic) id putWithMultipartFormDataParameters;
@property (copy, nonatomic) void (^putWithMultipartFormDataBlock)(id <AFMultipartFormData> formData);
@property (copy, nonatomic) void (^putWithMultipartFormDataSuccessBlock)(NSURLSessionDataTask *task, id responseObject);
@property (copy, nonatomic) void (^putWithMultipartFormDataFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@property (strong, nonatomic) id putParameters;
@property (copy, nonatomic) void (^putSuccessBlock)(NSURLSessionDataTask *task, id responseObject);
@property (copy, nonatomic) void (^putFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@property (strong, nonatomic) id patchParameters;
@property (copy, nonatomic) void (^patchSuccessBlock)(NSURLSessionDataTask *task, id responseObject);
@property (copy, nonatomic) void (^patchFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@property (strong, nonatomic) id deleteParameters;
@property (copy, nonatomic) void (^deleteSuccessBlock)(NSURLSessionDataTask *task, id responseObject);
@property (copy, nonatomic) void (^deleteFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@end
