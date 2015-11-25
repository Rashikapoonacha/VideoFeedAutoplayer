//
//  PRVimeoConfig.swift
//  VideoFeedAutoplayer
//
//  Created by Prajwal on 08/11/15.
//  Copyright © 2015 Above Solutions India Pvt Ltd. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PRVimeoConfig {
    
    class func fetchVimeoVideosWithChannel(channelName:String, completion: ([PRVimeoData], NSError?) -> Void) {
        
        let vimeoChannelURL = PRConstants.urlWithChannelName(channelName)
        Alamofire.request(.GET, vimeoChannelURL, parameters:nil)
            .response { request, response, data, error in
                var videos:[PRVimeoData] = [PRVimeoData]()
                if (data != nil) {
                    let vimeoVideos:[JSON] = JSON(data: data!).array!
                    for video in vimeoVideos {
//                        let videoObj:PRVimeoFeed = PRVimeoFeed(json: video)
//                        print(videoObj.dictionaryRepresentation())
                        videos.append(PRVimeoData(json: video))
                    }
                }
                completion(videos, error)
        }
    }
    
    
    //TODO: Video config https://player.vimeo.com/video/9626830/config
}