//
//  Channel.swift
//  Smack
//
//  Created by macOS on 4/30/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int!
}
