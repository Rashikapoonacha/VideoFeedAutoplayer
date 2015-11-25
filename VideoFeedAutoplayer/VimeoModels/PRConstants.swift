//
//  PRConstants.swift
//  VideoFeedAutoplayer
//
//  Created by Prajwal on 08/11/15.
//  Copyright © 2015 Above Solutions India Pvt Ltd. All rights reserved.
//

import UIKit

let kChannelPlaceholder = "{cName}"
let kVimeoChannelBaseURLString: String = "https://vimeo.com/api/v2/channel/\(kChannelPlaceholder)/videos.json"

class PRConstants: NSObject
{
    class func urlWithChannelName(channelName:String) -> String {
        //returns Vimeo channel URL
        return kVimeoChannelBaseURLString.stringByReplacingOccurrencesOfString(kChannelPlaceholder,
            withString: channelName)
    }
}
