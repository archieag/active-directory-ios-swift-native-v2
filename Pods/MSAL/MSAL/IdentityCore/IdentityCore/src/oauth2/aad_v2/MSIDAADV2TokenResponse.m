// Copyright (c) Microsoft Corporation.
// All rights reserved.
//
// This code is licensed under the MIT License.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files(the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and / or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions :
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "MSIDAADV2TokenResponse.h"
#import "MSIDAADV2IdTokenClaims.h"
#import "NSOrderedSet+MSIDExtensions.h"
#import "MSIDAuthority.h"
#import "MSIDTokenResponse+Internal.h"

@implementation MSIDAADV2TokenResponse

- (BOOL)initIdToken:(NSError *__autoreleasing *)error
{
    if (![NSString msidIsStringNilOrBlank:self.idToken])
    {
        self.idTokenObj = [[MSIDAADV2IdTokenClaims alloc] initWithRawIdToken:self.idToken error:error];
        return self.idTokenObj != nil;
    }
    return YES;
}

- (MSIDAccountType)accountType
{
    return MSIDAccountTypeMSSTS;
}

@end
