//
//  DetailViewController.swift
//  RestDemo
//
//  Created by mobapp05 on 29/01/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var tvBody: UITextView!
    
    var post:UserPost?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = post!.title
        tvBody.text = post!.body
        
        let username = PostParser.userById(userId: post!.userID)
        lblUsername.text = username
        
        //title in navbar aanpassen
        self.title = post!.title

    }

}
