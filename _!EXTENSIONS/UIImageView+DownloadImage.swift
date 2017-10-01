//
//  UIImageView+DownloadImage.swift
//  Instagram
//
//  Created by Duc Tran on 9/15/15.
//  Copyright © 2015 Developers Academy. All rights reserved.
//

import UIKit

extension UIImageView
{
    func loadImageWithURL(url: NSURL) -> NSURLSessionDownloadTask
    {
        let session = NSURLSession.sharedSession()
        
        let downloadTask = session.downloadTaskWithURL(url) { [weak self] (localFile, response, error) -> Void in
            if error == nil && localFile != nil {
                if let data = NSData(contentsOfURL: url) {
                    if let image = UIImage(data: data) {
                        dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            if let strongSelf = self {
                                strongSelf.image = image
                            }
                        })
                    }
                }
            }
        }
        
        downloadTask.resume()
        
        return downloadTask
    }
}




























