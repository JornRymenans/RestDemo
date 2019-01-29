//
//  PostParser.swift
//  RestDemo
//
//  Created by mobapp05 on 29/01/2019.
//  Copyright © 2019 Jorn Swift. All rights reserved.
//

import Foundation


class PostParser {
    
    static func getAllPosts() -> [UserPost]{
        //op welk adres staat de data?
        let url = URL.init(string: "https://jsonplaceholder.typicode.com/posts")!
        //starten lege array
        var posts = [UserPost]()
        do{
            //ruwe data van url binnehalen
            let data = try Data.init(contentsOf: url)
            //voorlopige test, komt er iets binnen?
            print(data)
            //data start met een array, data laten omzetten naar array van objecten
            let jsonArray = try JSONSerialization.jsonObject(with: data) as! [NSObject]
            
            //array overlopen
            for item in jsonArray {
                //value for key, geeft een generiek object terug, meoten we nog casten
                let id = item.value(forKey: "id") as! Int
                let userID = item.value(forKey: "userId") as! Int
                let title = item.value(forKey: "title") as! String
                let body = item.value(forKey: "body") as! String
                let currentPost = UserPost.init(id: id, userID: userID, title: title, body: body)
                
                posts.append(currentPost)
            }
            
        }catch{
            print("\'t werkt niet")
        }
        
        
        return posts
}
}
