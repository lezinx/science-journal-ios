/*
 *  Copyright 2019 Google Inc. All Rights Reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import UIKit

/// A protocol for remote config management in Science Journal.
public protocol RemoteConfigManager {

  /// Starts a Remote Config instance and configures it using a Google Service plist, then
  /// configures default values for all flags and fetches remote flags.
  func configure()

  /// Fetches an updated config from Firebase and activates it.
  ///
  /// - Parameter completion: An optional completion block, which is performed on a background
  ///                         thread.
  func fetchRemoteConfigAndActivate(completion: (() -> Void)?)

  /// Returns the boolean value of a given flag.
  ///
  /// - Parameter remoteConfigFlag: The RemoteConfigFlag to check.
  /// - Returns: True if the flag is enabled, otherwise false.
  func boolValueForFlag(_ remoteConfigFlag: RemoteConfigFlag) -> Bool

}
