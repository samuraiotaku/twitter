//
//  DetailViewController.swift
//  twitter_alamofire_demo
//
//  Created by Brandon Shimizu on 10/12/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailHandleLabel: UILabel!
    @IBOutlet weak var detailDateLabel: UILabel!
    @IBOutlet weak var detailTweetLabel: UILabel!
    @IBOutlet weak var detailRetweetBtn: UIButton!
    @IBOutlet weak var detailFavoriteBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //refreshData()
//        if let tweet = tweet {
//            let profileImage = NSURL(string: tweet.user!.profileImage!)
//            detailImage.setImageWith(profileImage! as URL)
//            detailNameLabel.text = tweet.user!.name
//            detailHandleLabel.text = "@" + tweet.user!.screenName!
//            detailTweetLabel.text = tweet.text
//            detailDateLabel.text = tweet.createdAtString
//
//            }
//        }
    }


//    @IBAction func onRetweet(_ sender: AnyObject) {
//        //
//        if(tweet.retweeted == false){
//            tweet.retweeted = true
//            //tweet.retweetCount += 1
//            refreshData()
//            APIManager.shared.retweet(with: tweet) { (tweet: Tweet?, error: Error?) in
//                if let  error = error {
//                    print("Error Retweeting tweet: \(error.localizedDescription)")
//                } else if let tweet = tweet {
//                    print("Successfully Retweeted the following Tweet: \n\(tweet.text)")
//                }
//            }
//        }
//        else{
//            tweet.retweeted = false
//            //tweet.retweetCount -= 1
//            refreshData()
//            APIManager.shared.untweet(with: tweet) { (tweet: Tweet?, error: Error?) in
//                if let  error = error {
//                    print("Error Unretweeting tweet: \(error.localizedDescription)")
//                } else if let tweet = tweet {
//                    print("Successfully Unretweeted the following Tweet: \n\(tweet.text)")
//                }
//            }
//
//        }
//    }
//
//    @IBAction func onFavorite(_ sender: AnyObject) {
//        if(tweet.favorited == false){
//            tweet.favorited = true
//            //tweet.favoriteCount += 1
//            refreshData()
//            APIManager.shared.favorite( tweet) { (tweet: Tweet?, error: Error?) in
//                if let  error = error {
//                    print("Error favoriting tweet: \(error.localizedDescription)")
//                } else if let tweet = tweet {
//                    print("Successfully favorited the following Tweet: \n\(tweet.text)")
//                }
//            }
//        }
//        else{
//            tweet.favorited = false
//            //tweet.favoriteCount -= 1
//            refreshData()
//            APIManager.shared.favorite(tweet) { (tweet: Tweet?, error: Error?) in
//                if let  error = error {
//                    print("Error unfavoriting tweet: \(error.localizedDescription)")
//                } else if let tweet = tweet {
//                    print("Successfully unfavorited the following Tweet: \n\(tweet.text)")
//                }
//
//            }
//        }
//    }
//
//
//    var tweet: Tweet {
//        didSet {
//            refreshData()
//        }
//    }
//
//func refreshData(){
//    if let tweet = tweet {
//        let profileImage = NSURL(string: tweet.user!.profileImage!)
//        detailImage.setImageWith(profileImage! as URL)
//        detailNameLabel.text = tweet.user!.name
//        detailHandleLabel.text = "@" + tweet.user!.screenName!
//        detailTweetLabel.text = tweet.text
//        detailDateLabel.text = tweet.createdAtString
//
//    }
//    }
//    if(tweet.favorited)!{
//        detailFavoriteBtn.setImage(#imageLiteral(resourceName: "favor-icon-red"), for: .normal)
//    }
//    if(tweet.favorited == false){
//        detailFavoriteBtn.setImage(#imageLiteral(resourceName: "favor-icon"), for: .normal)
//    }
//
//    if(tweet.retweeted!){
//        detailRetweetBtn.setImage(#imageLiteral(resourceName: "retweet-icon-green"), for: .normal)
//    }
//    if(tweet.retweeted==false){
//        detailRetweetBtn.setImage(#imageLiteral(resourceName: "retweet-icon"), for: .normal)
//    }

    
}


