//
//  ZPGeneralPluginMsAppCenterCrashlogs.swift
//  ZappGeneralPluginMsAppCenterCrashlogs
//
//  Created by Alex Zchut on 24/09/2019.
//  Copyright © 2019 Applicaster Ltd. All rights reserved.
//

import UIKit
import ZappGeneralPluginsSDK
import AppCenter
import AppCenterCrashes

public class ZPGeneralPluginMsAppCenterCrashlogs: ZPGeneralBaseProvider, ZPGeneralPluginCrashlogProtocol {
    
    override public func activate(object: NSObject?, completion: ((NSObject?) -> Void)?) {
        
        MSAppCenter.startService(MSCrashes.self)
        completion?(nil)
    }
}
