//
//  FeedVC- TableView.swift
//  InstagramMDB
//
//  Created by Rini Vasan on 2/22/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import UIKit
extension FeedVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath[1]
        // look at DateFormatter documentation to figure out how to convert a SnapImage.timeSent to a label's text
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell", for: indexPath)
            as! FeedTableViewCell

       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath[1]
    
        performSegue(withIdentifier: "toFeedVC", sender: self)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
