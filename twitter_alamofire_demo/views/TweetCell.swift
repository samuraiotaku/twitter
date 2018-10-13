//
//  TweetCell.swift
//  twitter_alamofire_demo
//
//  Created by Brandon Shimizu on 10/9/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import UIKit
import AFNetworking

class TweetCell: UITableViewCell {

    @IBOutlet weak var profileView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var accountNameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var tweetTextLabel: UILabel!
    
    @IBOutlet weak var favoriteBtn: UIButton!
    
    @IBOutlet weak var retweetBtn: UIButton!
    
    
    @IBAction func didTapRetweet(_ sender: Any) {
        //
        if(tweet.retweeted == false){
            tweet.retweeted = true
            //tweet.retweetCount += 1
            refreshData()
            APIManager.shared.retweet(with: tweet) { (tweet: Tweet?, error: Error?) in
                if let  error = error {
                    print("Error Retweeting tweet: \(error.localizedDescription)")
                } else if let tweet = tweet {
                    print("Successfully Retweeted the following Tweet: \n\(tweet.text)")
                }
            }
        }
        else{
            tweet.retweeted = false
            //tweet.retweetCount -= 1
            refreshData()
            APIManager.shared.untweet(with: tweet) { (tweet: Tweet?, error: Error?) in
                if let  error = error {
                    print("Error Unretweeting tweet: \(error.localizedDescription)")
                } else if let tweet = tweet {
                    print("Successfully Unretweeted the following Tweet: \n\(tweet.text)")
                }
            }
            
        }
    }
    
    @IBAction func didTapFavorite(_ sender: Any) {
        if(tweet.favorited == false){
            tweet.favorited = true
            //tweet.favoriteCount += 1
            refreshData()
            APIManager.shared.favorite( tweet) { (tweet: Tweet?, error: Error?) in
                if let  error = error {
                    print("Error favoriting tweet: \(error.localizedDescription)")
                } else if let tweet = tweet {
                    print("Successfully favorited the following Tweet: \n\(tweet.text)")
                }
            }
        }
        else{
            tweet.favorited = false
            //tweet.favoriteCount -= 1
            refreshData()
            APIManager.shared.favorite(tweet) { (tweet: Tweet?, error: Error?) in
                if let  error = error {
                    print("Error unfavoriting tweet: \(error.localizedDescription)")
                } else if let tweet = tweet {
                    print("Successfully unfavorited the following Tweet: \n\(tweet.text)")
                }
                
            }
        }
    }
    
    
    var tweet: Tweet! {
        didSet {
            refreshData()
        }
    }
    
    func refreshData() {
        nameLabel.text = tweet.user?.name
        accountNameLabel.text = tweet.user?.screenName
        tweetTextLabel.text = tweet.text
        dateLabel.text = tweet.createdAtString
        profileView.image = nil
        
        let profileImage = NSURL(string: (tweet.user?.profileImage)!)
        profileView.setImageWith(profileImage! as URL)
        
        if(tweet.favorited)!{
            favoriteBtn.setImage(#imageLiteral(resourceName: "favor-icon-red"), for: .normal)
        }
        if(tweet.favorited == false){
            favoriteBtn.setImage(#imageLiteral(resourceName: "favor-icon"), for: .normal)
        }
        
        if(tweet.retweeted!){
            retweetBtn.setImage(#imageLiteral(resourceName: "retweet-icon-green"), for: .normal)
        }
        if(tweet.retweeted==false){
            retweetBtn.setImage(#imageLiteral(resourceName: "retweet-icon"), for: .normal)
        }
    }
    
    
    
}
