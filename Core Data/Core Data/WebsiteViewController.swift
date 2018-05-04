//
//  WebsiteViewController.swift
//  Core Data
//
//  Created by Bryce Ligaya on 4/29/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import UIKit
import CoreData

@objc(Website)
public class Website: NSManagedObject {
    convenience init?(name: String?, url: String?, summary: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        return nil
    }
    
    self.init(entity: Website.entity(), insertInto: managedContext)
    
    self.name = name
    self.url = url
    self.summary = summary
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


