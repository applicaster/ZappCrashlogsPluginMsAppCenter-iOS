//
//  ZPCrashlogsPluginMsAppCenter.swift
//  ZappCrashlogsPluginMsAppCenter
//
//  Created by Alex Zchut on 24/09/2019.
//  Copyright © 2019 Applicaster Ltd. All rights reserved.
//

import UIKit
import ZappCrashlogsPluginsSDK
import AppCenter
import AppCenterCrashes

public class ZPCrashlogsPluginMsAppCenter: ZPCrashlogsBaseProvider {
    
    override public func activate(object: NSObject?, completion: ((NSObject?) -> Void)?) {
        
        MSAppCenter.startService(MSCrashes.self)
        completion?(nil)
    }
}
