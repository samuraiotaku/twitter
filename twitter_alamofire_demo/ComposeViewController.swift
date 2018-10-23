//
//  ComposeViewController.swift
//  twitter_alamofire_demo
//
//  Created by Brandon Shimizu on 10/13/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import UIKit
import AFNetworking
import AlamofireImage

protocol ComposeViewControllerDelegate {
    func did(post: Tweet)
}

class ComposeViewController: UIViewController, UITextViewDelegate {
    
    //had to remove weak at the beginning
    var delegate: ComposeViewControllerDelegate?
    
    @IBOutlet weak var composeProfileImage: UIImageView!
    @IBOutlet weak var composeName: UILabel!
    @IBOutlet weak var composeHandle: UILabel!
    @IBOutlet weak var composeTextField: UITextView!
    @IBOutlet weak var composeCharCount: UILabel!
    
    
    @IBAction func didTapPost(_ sender: Any) {
        APIManager.shared.composeTweet(with: "This is my tweet 😀") { (tweet, error) in
            if let error = error {
                print("Error composing Tweet: \(error.localizedDescription)")
            } else if let tweet = tweet {
                self.delegate?.did(post: tweet)
                print("Compose Tweet Success!")
            }
        }
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        composeTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        composeTextField.delegate = self
        
        let profileImage = URL(string: (User.current?.profileImage)!)
        composeProfileImage.af_setImage(withURL: profileImage!)
        composeName.text = User.current?.name
        composeHandle.text = "@" + (User.current?.screenName)!
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        // TODO: Check the proposed new text character count
        // Allow or disallow the new text
        // Set the max character limit
        let characterLimit = 140
        
        // Construct what the new text would be if we allowed the user's latest edit
        let newText = NSString(string: textView.text!).replacingCharacters(in: range, with: text)
        
        // TODO: Update Character Count Label
        composeCharCount.text = String(140 - newText.characters.count)
        
        // The new text should be allowed? True/False
        return newText.characters.count < characterLimit
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
