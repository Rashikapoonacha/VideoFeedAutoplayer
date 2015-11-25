//
//  PRVimeoData.swift
//
//  Created by Prajwal on 08/11/2015
//  Copyright (c) Above Solutions India Pvt Ltd. All rights reserved.
//

import Foundation
import SwiftyJSON
import ObjectMapper

public class PRVimeoData: NSObject, Mappable, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kPRVimeoDataTitleKey: String = "title"
	internal let kPRVimeoDataThumbnailLargeKey: String = "thumbnail_large"
	internal let kPRVimeoDataThumbnailSmallKey: String = "thumbnail_small"
	internal let kPRVimeoDataWidthKey: String = "width"
	internal let kPRVimeoDataStatsNumberOfLikesKey: String = "stats_number_of_likes"
	internal let kPRVimeoDataStatsNumberOfPlaysKey: String = "stats_number_of_plays"
	internal let kPRVimeoDataDescriptionValueKey: String = "description"
	internal let kPRVimeoDataDurationKey: String = "duration"
	internal let kPRVimeoDataEmbedPrivacyKey: String = "embed_privacy"
	internal let kPRVimeoDataUserPortraitSmallKey: String = "user_portrait_small"
	internal let kPRVimeoDataThumbnailMediumKey: String = "thumbnail_medium"
	internal let kPRVimeoDataUserNameKey: String = "user_name"
	internal let kPRVimeoDataTagsKey: String = "tags"
	internal let kPRVimeoDataMobileUrlKey: String = "mobile_url"
	internal let kPRVimeoDataInternalIdentifierKey: String = "id"
	internal let kPRVimeoDataStatsNumberOfCommentsKey: String = "stats_number_of_comments"
	internal let kPRVimeoDataHeightKey: String = "height"
	internal let kPRVimeoDataUserIdKey: String = "user_id"
	internal let kPRVimeoDataUploadDateKey: String = "upload_date"
	internal let kPRVimeoDataUserPortraitLargeKey: String = "user_portrait_large"
	internal let kPRVimeoDataUserUrlKey: String = "user_url"
	internal let kPRVimeoDataUserPortraitMediumKey: String = "user_portrait_medium"
	internal let kPRVimeoDataUrlKey: String = "url"
	internal let kPRVimeoDataUserPortraitHugeKey: String = "user_portrait_huge"


    // MARK: Properties
	public var title: String?
	public var thumbnailLarge: String?
	public var thumbnailSmall: String?
	public var width: Int?
	public var statsNumberOfLikes: Int?
	public var statsNumberOfPlays: Int?
	public var descriptionValue: String?
	public var duration: Int?
	public var embedPrivacy: String?
	public var userPortraitSmall: String?
	public var thumbnailMedium: String?
	public var userName: String?
	public var tags: String?
	public var mobileUrl: String?
	public var internalIdentifier: Int?
	public var statsNumberOfComments: Int?
	public var height: Int?
	public var userId: Int?
	public var uploadDate: String?
	public var userPortraitLarge: String?
	public var userUrl: String?
	public var userPortraitMedium: String?
	public var url: String?
	public var userPortraitHuge: String?


    // MARK: SwiftyJSON Initalizers
    /**
    Initates the class based on the object
    - parameter object: The object of either Dictionary or Array kind that was passed.
    - returns: An initalized instance of the class.
    */
    convenience public init(object: AnyObject) {
        self.init(json: JSON(object))
    }

    /**
    Initates the class based on the JSON that was passed.
    - parameter json: JSON object from SwiftyJSON.
    - returns: An initalized instance of the class.
    */
    public init(json: JSON) {
		title = json[kPRVimeoDataTitleKey].string
		thumbnailLarge = json[kPRVimeoDataThumbnailLargeKey].string
		thumbnailSmall = json[kPRVimeoDataThumbnailSmallKey].string
		width = json[kPRVimeoDataWidthKey].int
		statsNumberOfLikes = json[kPRVimeoDataStatsNumberOfLikesKey].int
		statsNumberOfPlays = json[kPRVimeoDataStatsNumberOfPlaysKey].int
		descriptionValue = json[kPRVimeoDataDescriptionValueKey].string
		duration = json[kPRVimeoDataDurationKey].int
		embedPrivacy = json[kPRVimeoDataEmbedPrivacyKey].string
		userPortraitSmall = json[kPRVimeoDataUserPortraitSmallKey].string
		thumbnailMedium = json[kPRVimeoDataThumbnailMediumKey].string
		userName = json[kPRVimeoDataUserNameKey].string
		tags = json[kPRVimeoDataTagsKey].string
		mobileUrl = json[kPRVimeoDataMobileUrlKey].string
		internalIdentifier = json[kPRVimeoDataInternalIdentifierKey].int
		statsNumberOfComments = json[kPRVimeoDataStatsNumberOfCommentsKey].int
		height = json[kPRVimeoDataHeightKey].int
		userId = json[kPRVimeoDataUserIdKey].int
		uploadDate = json[kPRVimeoDataUploadDateKey].string
		userPortraitLarge = json[kPRVimeoDataUserPortraitLargeKey].string
		userUrl = json[kPRVimeoDataUserUrlKey].string
		userPortraitMedium = json[kPRVimeoDataUserPortraitMediumKey].string
		url = json[kPRVimeoDataUrlKey].string
		userPortraitHuge = json[kPRVimeoDataUserPortraitHugeKey].string

    }

    // MARK: ObjectMapper Initalizers
    /**
    Map a JSON object to this class using ObjectMapper
    - parameter map: A mapping from ObjectMapper
    */
    required public init?(_ map: Map){

    }

    /**
    Map a JSON object to this class using ObjectMapper
    - parameter map: A mapping from ObjectMapper
    */
    public func mapping(map: Map) {
		title <- map["kPRVimeoDataTitleKey"]
		thumbnailLarge <- map["kPRVimeoDataThumbnailLargeKey"]
		thumbnailSmall <- map["kPRVimeoDataThumbnailSmallKey"]
		width <- map["kPRVimeoDataWidthKey"]
		statsNumberOfLikes <- map["kPRVimeoDataStatsNumberOfLikesKey"]
		statsNumberOfPlays <- map["kPRVimeoDataStatsNumberOfPlaysKey"]
		descriptionValue <- map["kPRVimeoDataDescriptionValueKey"]
		duration <- map["kPRVimeoDataDurationKey"]
		embedPrivacy <- map["kPRVimeoDataEmbedPrivacyKey"]
		userPortraitSmall <- map["kPRVimeoDataUserPortraitSmallKey"]
		thumbnailMedium <- map["kPRVimeoDataThumbnailMediumKey"]
		userName <- map["kPRVimeoDataUserNameKey"]
		tags <- map["kPRVimeoDataTagsKey"]
		mobileUrl <- map["kPRVimeoDataMobileUrlKey"]
		internalIdentifier <- map["kPRVimeoDataInternalIdentifierKey"]
		statsNumberOfComments <- map["kPRVimeoDataStatsNumberOfCommentsKey"]
		height <- map["kPRVimeoDataHeightKey"]
		userId <- map["kPRVimeoDataUserIdKey"]
		uploadDate <- map["kPRVimeoDataUploadDateKey"]
		userPortraitLarge <- map["kPRVimeoDataUserPortraitLargeKey"]
		userUrl <- map["kPRVimeoDataUserUrlKey"]
		userPortraitMedium <- map["kPRVimeoDataUserPortraitMediumKey"]
		url <- map["kPRVimeoDataUrlKey"]
		userPortraitHuge <- map["kPRVimeoDataUserPortraitHugeKey"]

    }

    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject] {

        var dictionary: [String : AnyObject] = [ : ]
		if title != nil {
			dictionary.updateValue(title!, forKey: kPRVimeoDataTitleKey)
		}
		if thumbnailLarge != nil {
			dictionary.updateValue(thumbnailLarge!, forKey: kPRVimeoDataThumbnailLargeKey)
		}
		if thumbnailSmall != nil {
			dictionary.updateValue(thumbnailSmall!, forKey: kPRVimeoDataThumbnailSmallKey)
		}
		if width != nil {
			dictionary.updateValue(width!, forKey: kPRVimeoDataWidthKey)
		}
		if statsNumberOfLikes != nil {
			dictionary.updateValue(statsNumberOfLikes!, forKey: kPRVimeoDataStatsNumberOfLikesKey)
		}
		if statsNumberOfPlays != nil {
			dictionary.updateValue(statsNumberOfPlays!, forKey: kPRVimeoDataStatsNumberOfPlaysKey)
		}
		if descriptionValue != nil {
			dictionary.updateValue(descriptionValue!, forKey: kPRVimeoDataDescriptionValueKey)
		}
		if duration != nil {
			dictionary.updateValue(duration!, forKey: kPRVimeoDataDurationKey)
		}
		if embedPrivacy != nil {
			dictionary.updateValue(embedPrivacy!, forKey: kPRVimeoDataEmbedPrivacyKey)
		}
		if userPortraitSmall != nil {
			dictionary.updateValue(userPortraitSmall!, forKey: kPRVimeoDataUserPortraitSmallKey)
		}
		if thumbnailMedium != nil {
			dictionary.updateValue(thumbnailMedium!, forKey: kPRVimeoDataThumbnailMediumKey)
		}
		if userName != nil {
			dictionary.updateValue(userName!, forKey: kPRVimeoDataUserNameKey)
		}
		if tags != nil {
			dictionary.updateValue(tags!, forKey: kPRVimeoDataTagsKey)
		}
		if mobileUrl != nil {
			dictionary.updateValue(mobileUrl!, forKey: kPRVimeoDataMobileUrlKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kPRVimeoDataInternalIdentifierKey)
		}
		if statsNumberOfComments != nil {
			dictionary.updateValue(statsNumberOfComments!, forKey: kPRVimeoDataStatsNumberOfCommentsKey)
		}
		if height != nil {
			dictionary.updateValue(height!, forKey: kPRVimeoDataHeightKey)
		}
		if userId != nil {
			dictionary.updateValue(userId!, forKey: kPRVimeoDataUserIdKey)
		}
		if uploadDate != nil {
			dictionary.updateValue(uploadDate!, forKey: kPRVimeoDataUploadDateKey)
		}
		if userPortraitLarge != nil {
			dictionary.updateValue(userPortraitLarge!, forKey: kPRVimeoDataUserPortraitLargeKey)
		}
		if userUrl != nil {
			dictionary.updateValue(userUrl!, forKey: kPRVimeoDataUserUrlKey)
		}
		if userPortraitMedium != nil {
			dictionary.updateValue(userPortraitMedium!, forKey: kPRVimeoDataUserPortraitMediumKey)
		}
		if url != nil {
			dictionary.updateValue(url!, forKey: kPRVimeoDataUrlKey)
		}
		if userPortraitHuge != nil {
			dictionary.updateValue(userPortraitHuge!, forKey: kPRVimeoDataUserPortraitHugeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.title = aDecoder.decodeObjectForKey(kPRVimeoDataTitleKey) as? String
		self.thumbnailLarge = aDecoder.decodeObjectForKey(kPRVimeoDataThumbnailLargeKey) as? String
		self.thumbnailSmall = aDecoder.decodeObjectForKey(kPRVimeoDataThumbnailSmallKey) as? String
		self.width = aDecoder.decodeObjectForKey(kPRVimeoDataWidthKey) as? Int
		self.statsNumberOfLikes = aDecoder.decodeObjectForKey(kPRVimeoDataStatsNumberOfLikesKey) as? Int
		self.statsNumberOfPlays = aDecoder.decodeObjectForKey(kPRVimeoDataStatsNumberOfPlaysKey) as? Int
		self.descriptionValue = aDecoder.decodeObjectForKey(kPRVimeoDataDescriptionValueKey) as? String
		self.duration = aDecoder.decodeObjectForKey(kPRVimeoDataDurationKey) as? Int
		self.embedPrivacy = aDecoder.decodeObjectForKey(kPRVimeoDataEmbedPrivacyKey) as? String
		self.userPortraitSmall = aDecoder.decodeObjectForKey(kPRVimeoDataUserPortraitSmallKey) as? String
		self.thumbnailMedium = aDecoder.decodeObjectForKey(kPRVimeoDataThumbnailMediumKey) as? String
		self.userName = aDecoder.decodeObjectForKey(kPRVimeoDataUserNameKey) as? String
		self.tags = aDecoder.decodeObjectForKey(kPRVimeoDataTagsKey) as? String
		self.mobileUrl = aDecoder.decodeObjectForKey(kPRVimeoDataMobileUrlKey) as? String
		self.internalIdentifier = aDecoder.decodeObjectForKey(kPRVimeoDataInternalIdentifierKey) as? Int
		self.statsNumberOfComments = aDecoder.decodeObjectForKey(kPRVimeoDataStatsNumberOfCommentsKey) as? Int
		self.height = aDecoder.decodeObjectForKey(kPRVimeoDataHeightKey) as? Int
		self.userId = aDecoder.decodeObjectForKey(kPRVimeoDataUserIdKey) as? Int
		self.uploadDate = aDecoder.decodeObjectForKey(kPRVimeoDataUploadDateKey) as? String
		self.userPortraitLarge = aDecoder.decodeObjectForKey(kPRVimeoDataUserPortraitLargeKey) as? String
		self.userUrl = aDecoder.decodeObjectForKey(kPRVimeoDataUserUrlKey) as? String
		self.userPortraitMedium = aDecoder.decodeObjectForKey(kPRVimeoDataUserPortraitMediumKey) as? String
		self.url = aDecoder.decodeObjectForKey(kPRVimeoDataUrlKey) as? String
		self.userPortraitHuge = aDecoder.decodeObjectForKey(kPRVimeoDataUserPortraitHugeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(title, forKey: kPRVimeoDataTitleKey)
		aCoder.encodeObject(thumbnailLarge, forKey: kPRVimeoDataThumbnailLargeKey)
		aCoder.encodeObject(thumbnailSmall, forKey: kPRVimeoDataThumbnailSmallKey)
		aCoder.encodeObject(width, forKey: kPRVimeoDataWidthKey)
		aCoder.encodeObject(statsNumberOfLikes, forKey: kPRVimeoDataStatsNumberOfLikesKey)
		aCoder.encodeObject(statsNumberOfPlays, forKey: kPRVimeoDataStatsNumberOfPlaysKey)
		aCoder.encodeObject(descriptionValue, forKey: kPRVimeoDataDescriptionValueKey)
		aCoder.encodeObject(duration, forKey: kPRVimeoDataDurationKey)
		aCoder.encodeObject(embedPrivacy, forKey: kPRVimeoDataEmbedPrivacyKey)
		aCoder.encodeObject(userPortraitSmall, forKey: kPRVimeoDataUserPortraitSmallKey)
		aCoder.encodeObject(thumbnailMedium, forKey: kPRVimeoDataThumbnailMediumKey)
		aCoder.encodeObject(userName, forKey: kPRVimeoDataUserNameKey)
		aCoder.encodeObject(tags, forKey: kPRVimeoDataTagsKey)
		aCoder.encodeObject(mobileUrl, forKey: kPRVimeoDataMobileUrlKey)
		aCoder.encodeObject(internalIdentifier, forKey: kPRVimeoDataInternalIdentifierKey)
		aCoder.encodeObject(statsNumberOfComments, forKey: kPRVimeoDataStatsNumberOfCommentsKey)
		aCoder.encodeObject(height, forKey: kPRVimeoDataHeightKey)
		aCoder.encodeObject(userId, forKey: kPRVimeoDataUserIdKey)
		aCoder.encodeObject(uploadDate, forKey: kPRVimeoDataUploadDateKey)
		aCoder.encodeObject(userPortraitLarge, forKey: kPRVimeoDataUserPortraitLargeKey)
		aCoder.encodeObject(userUrl, forKey: kPRVimeoDataUserUrlKey)
		aCoder.encodeObject(userPortraitMedium, forKey: kPRVimeoDataUserPortraitMediumKey)
		aCoder.encodeObject(url, forKey: kPRVimeoDataUrlKey)
		aCoder.encodeObject(userPortraitHuge, forKey: kPRVimeoDataUserPortraitHugeKey)
    }
}
