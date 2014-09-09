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
