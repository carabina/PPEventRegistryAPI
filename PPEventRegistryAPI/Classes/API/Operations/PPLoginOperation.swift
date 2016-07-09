//
//  PPLoginOperation.swift
//  PPEventRegistryAPI
//
//  Created by Pavel Pantus on 6/19/16.
//  Copyright © 2016 Pavel Pantus. All rights reserved.
//

import Foundation
import SwiftyJSON

final class PPLoginOperation: PPAsyncOperation {
    init(email: String, password: String, completionHandler: ((error: NSError?) -> Void)?) {
        let parameters = ["email": email, "pass": password]
        let completion: (JSON?, NSError?) -> Void = { (data, error) -> Void in
            completionHandler?(error: error)
        }

        super.init(controller: "login", httpMethod: "POST", parameters: parameters)
        self.completionHandler = completion
    }
}
