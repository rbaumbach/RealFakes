//Copyright (c) 2014 Ryan Baumbach <rbaumbach.github@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining
//a copy of this software and associated documentation files (the "Software"),
//to deal in the Software without restriction, including
//without limitation the rights to use, copy, modify, merge, publish,
//distribute, sublicense, and/or sell copies of the Software, and to
//permit persons to whom the Software is furnished to do so, subject to
//the following conditions:
//
//The above copyright notice and this permission notice shall be
//included in all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "FakeAFHTTPSessionManager.h"


@implementation FakeAFHTTPSessionManager

- (instancetype)initWithBaseURL:(NSURL *)url
           sessionConfiguration:(NSURLSessionConfiguration *)configuration
{
    self.urlSessionConfiguration = configuration;
    return [super initWithBaseURL:url sessionConfiguration:configuration];
}

- (NSURLSessionDataTask *)GET:(NSString *)URLString
                   parameters:(id)parameters
                      success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                      failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.getParameters = parameters;
    self.getSuccessBlock = success;
    self.getFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];
}

- (NSURLSessionDataTask *)HEAD:(NSString *)URLString
                    parameters:(id)parameters
                       success:(void (^)(NSURLSessionDataTask *task))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.headParameters = parameters;
    self.headSuccessBlock = success;
    self.headFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
                       success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.postParameters = parameters;
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
    self.putWithMultipartFormDataParameters = parameters;
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
    self.putParameters = parameters;
    self.putSuccessBlock = success;
    self.putFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)PATCH:(NSString *)URLString
                     parameters:(id)parameters
                        success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                        failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.patchParameters = parameters;
    self.patchSuccessBlock = success;
    self.patchFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

- (NSURLSessionDataTask *)DELETE:(NSString *)URLString
                      parameters:(id)parameters
                         success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                         failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    self.deleteParameters = parameters;
    self.deleteSuccessBlock = success;
    self.deleteFailureBlock = failure;
    
    return [[NSURLSessionDataTask alloc] init];

}

@end
