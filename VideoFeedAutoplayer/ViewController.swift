//
//  ViewController.swift
//  VideoFeedAutoplayer
//
//  Created by Prajwal on 08/11/15.
//  Copyright © 2015 Above Solutions India Pvt Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var videoData:[PRVimeoData] = [PRVimeoData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.        
        
        PRVimeoConfig.fetchVimeoVideosWithChannel("deepakchopra",
            completion: { (videos:[PRVimeoData], err:NSError?) -> Void in
                if (videos.count > 0) {
                    self.videoData = videos
                    for video in videos {
                        print(video.dictionaryRepresentation())
                    }
                    self.tableView.reloadData()
                }
             })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        if let indexPaths:[NSIndexPath] = self.tableView.indexPathsForVisibleRows {
//            for indexpath in indexPaths {
//                print(indexpath.row)
//            }
//        }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        if let indexPaths:[NSIndexPath] = self.tableView.indexPathsForVisibleRows {
            if indexPaths.count > 0 {
                let midRow = (indexPaths.count/2)
                let midIndexPath = indexPaths[midRow]
                print("End Decelerating Visible index \(midIndexPath.row)")
            }
        }
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numOfRows:Int = self.videoData.count
        return numOfRows
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 220.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:PRVideoTableCell = tableView.dequeueReusableCellWithIdentifier("VideoCell", forIndexPath: indexPath) as! PRVideoTableCell
        cell.previewImageView.image = nil
        if self.videoData.count > indexPath.row {
            let vimeoData:PRVimeoData = self.videoData[indexPath.row] as PRVimeoData
            cell.titleLabel.text = "Index: \(indexPath.row)   " + (vimeoData.title ?? "")
            if vimeoData.thumbnailLarge != nil {
                self.imageAsychronous(vimeoData.thumbnailSmall!, cell: cell, indexPath: indexPath)
            }
        }
        
        return cell
    }
    
    
    //MARK: Image cache methods
    var imageDownloadingQueue:NSOperationQueue = NSOperationQueue()
    var imageCache:NSCache = NSCache()
    func imageAsychronous(urlstring:String, cell:PRVideoTableCell, indexPath:NSIndexPath) {
        
        if let cachedImage0:UIImage = self.imageCache.objectForKey(indexPath) as? UIImage {
            //show cached image
            cell.previewImageView.image = cachedImage0
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                cell.previewImageView.alpha = 1
            })
        } else {
            //Downloading the image in seperate thread
            self.imageDownloadingQueue.addOperationWithBlock({ () -> Void in
                let imageUrl:NSURL = NSURL(string: urlstring)!
                if let imageData:NSData = NSData(contentsOfURL: imageUrl) {
                    if let userImg:UIImage = UIImage(data: imageData) {
                        self.imageCache.setObject(userImg, forKey:indexPath)
                        NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                            if let tempCell:PRVideoTableCell = self.tableView.cellForRowAtIndexPath(indexPath) as? PRVideoTableCell {
                                tempCell.previewImageView.image = userImg
                            }
                        })
                    }
                }
            })
        }
    }
}

