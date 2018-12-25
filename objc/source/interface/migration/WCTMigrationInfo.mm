/*
 * Tencent is pleased to support the open source community by making
 * WCDB available.
 *
 * Copyright (C) 2017 THL A29 Limited, a Tencent company.
 * All rights reserved.
 *
 * Licensed under the BSD 3-Clause License (the "License"); you may not use
 * this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 *       https://opensource.org/licenses/BSD-3-Clause
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <WCDB/WCTMigrationInfo+Private.h>
#import <WCDB/WCTMigrationInfo.h>

@implementation WCTMigrationBaseInfo

- (instancetype)initWithBaseInfo:(const WCDB::MigrationBaseInfo &)info
{
    if (self = [super init]) {
        _table = [NSString stringWithUTF8String:info.getTable().c_str()];
        _database = [NSString stringWithUTF8String:info.getDatabase().c_str()];
        _sourceTable = [NSString stringWithUTF8String:info.getSourceTable().c_str()];
        _sourceDatabase = [NSString stringWithUTF8String:info.getSourceDatabase().c_str()];
    }
    return self;
}

@end

@implementation WCTMigrationUserInfo

- (void)setSourceTable:(NSString *)table
{
    _sourceTable = table;
}

- (void)setSourceDatabase:(NSString *)database
{
    _sourceDatabase = database;
}

@end
