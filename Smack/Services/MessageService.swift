//
//  MessageService.swift
//  Smack
//
//  Created by macOS on 4/30/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannels(completion: @escaping CompletionHandler) {
        Alamofire.request(GET_CHANNELS_URL, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                do {
                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                } catch let error {
                    debugPrint(error) // as Any
                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}
