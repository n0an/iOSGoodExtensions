//
//  ImageToString.swift
//  DACircularProgress
//
//  Created by Anton Novoselov on 27/11/2017.
//

import Foundation
import UIKit

func imageFromData(pictureData: String) -> UIImage? {
    
    // !!!IMPORTANT!!!
    // Decode image from string
    
    // TODO: - add to my extensions
    
    var image: UIImage?
    
    let decodedData = NSData(base64Encoded: pictureData, options: NSData.Base64DecodingOptions(rawValue: 0))
    
    image = UIImage(data: decodedData! as Data)
    
    return image
}

func imageToString(pictureData: UIImage) -> String? {
    
    // !!!IMPORTANT!!!
    // Encode image to string
    
    let image = UIImageJPEGRepresentation(pictureData, 0.5)
    
    let avatarString = image!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
    
    return avatarString
    
}




