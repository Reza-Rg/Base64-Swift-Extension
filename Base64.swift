//
//  Base64.swift
//  twitt3r
//
//  Created by Reza Rg on 3/1/15.
//  Copyright (c) 2015 ghaleh. All rights reserved.
//

import Foundation

extension String {
    
    //Encode base64
    func base64Encoded() -> String {
        let plainData = self.data(using: String.Encoding.utf8)
        let base64String = plainData?.base64EncodedString(options: [])
        return base64String!
    }
    
    //Decode base64
    func base64Decoded() -> String {
        let decodedData = Data(base64Encoded: self, options: [])
        let decodedString = NSString(data: decodedData!, encoding: String.Encoding.utf8.rawValue)
        return decodedString! as String
    }
}
