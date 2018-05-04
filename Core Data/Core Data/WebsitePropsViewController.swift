//
//  WebsitePropsViewController.swift
//  Core Data
//
//  Created by Bryce Ligaya on 4/29/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import CoreData
import Foundation


extension Website {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Website> {
        return NSFetchRequest<Website>(entityName: "Website")
    }
    
    @NSManaged public var url: String?
    @NSManaged public var summary: String?
    @NSManaged public var name: String?
    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


