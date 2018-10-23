//
//  ProfileViewController.swift
//  twitter_alamofire_demo
//
//  Created by Brandon Shimizu on 10/17/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileHeader: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileHandle: UILabel!
    @IBOutlet weak var profileTweetAmt: UILabel!
    @IBOutlet weak var profileFollowingAmt: UILabel!
    @IBOutlet weak var profileFollowerAmt: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let profImage = URL(string: (User.current?.profileImage)!)
        profileImage.af_setImage(withURL: profImage!)
        profileName.text = User.current?.name
        profileHandle.text = "@" + (User.current?.screenName)!
        profileFollowerAmt.text = (User.current?.followersCount)!
        profileFollowingAmt.text = (User.current?.followingCount)!
        profileTweetAmt.text = (User.current?.statusesCount)!
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
