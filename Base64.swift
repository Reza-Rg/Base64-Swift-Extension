//
//  Base64.swift
//  Base64 Swift Extension
//
//  Created by Reza Rg on 3/1/15.
//  Copyright (c) 2015 ghaleh. All rights reserved.
//

import Foundation

extension String {
    
    //Encode base64
    func base64Encoded() -> String {
        let plainData = self.dataUsingEncoding(NSUTF8StringEncoding)
        let base64String = plainData?.base64EncodedStringWithOptions(.allZeros)
        return base64String!
    }
    
    //Decode base64
    func base64Decoded() -> String {
        let decodedData = NSData(base64EncodedString: self, options: .allZeros)
        let decodedString = NSString(data: decodedData!, encoding: NSUTF8StringEncoding)
        return decodedString!
    }
}
