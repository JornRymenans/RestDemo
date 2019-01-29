//
//  ViewController.swift
//  RestDemo
//
//  Created by mobapp05 on 29/01/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var items = [UserPost]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = PostParser.getAllPosts()
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let userPostForCell = items[indexPath.row]
        cell.textLabel!.text = userPostForCell.title
        
        return cell
    }
    
    
}
