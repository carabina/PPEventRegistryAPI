//
//  PPEvent.swift
//  PPEventRegistryAPI
//
//  Created by Pavel Pantus on 7/10/16.
//  Copyright © 2016 Pavel Pantus. All rights reserved.
//

import Foundation

public struct PPEvent: PPModelType {
    let title: String
    let summary: String
    let eventDate: String
    let location: String
    let image: URL?
}
