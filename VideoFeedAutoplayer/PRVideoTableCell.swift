//
//  PRVideoTableCell.swift
//  VideoFeedAutoplayer
//
//  Created by Prajwal on 08/11/15.
//  Copyright © 2015 Above Solutions India Pvt Ltd. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class PRVideoTableCell: UITableViewCell {

    @IBOutlet weak var previewContainer: UIView!
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    let playerViewController = AVPlayerViewController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func playVideoWithURL(url:NSURL) {
        //TODO: auto playvideo upon cell appears to view
//        if let player = AVPlayer.playerWithURL(url) as? AVPlayer {
//            playerViewController.player = player
//        }
    }
}
