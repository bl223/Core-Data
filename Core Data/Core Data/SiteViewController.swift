//
//  SiteViewController.swift
//  Core Data
//
//  Created by Bryce Ligaya on 4/28/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import UIKit

class SiteViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var summaryTextField: UITextView!
    
    
    
    var existingWebsite:Website?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        urlTextField.delegate = self
        summaryTextField.delegate = self
        
        nameTextField.text = existingWebsite?.name
        urlTextField.text = existingWebsite?.url
        summaryTextField.text = existingWebsite?.summary
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTextField.resignFirstResponder()
        urlTextField.resignFirstResponder()
        summaryTextField.resignFirstResponder()
    }
    
    @IBAction func saveWebsite(_ sender: Any) {
        let name = nameTextField.text
        let url = urlTextField.text
        let summary = summaryTextField.text
        
        var website:Website?
        
        if let existingWebsite = existingWebsite{
            existingWebsite.name = name
            existingWebsite.summary = summary
            existingWebsite.url = url
            
            website = existingWebsite
        }else{
            website = Website(name: name, url: url, summary: summary)
        }
        
        if let website = website {
            do {
                let managedContext = website.managedObjectContext
                
                try managedContext?.save()
                
                self.navigationController?.popViewController(animated: true)
            }catch{
                print("Context could not be saved.")
            }
        }
    }


 func startTouches(_ touches: Set<UITouch>, with event: UIEvent?) {
    nameTextField.resignFirstResponder()
    urlTextField.resignFirstResponder()
    summaryTextField.resignFirstResponder()
    }

}
extension SiteViewController: UITextViewDelegate {
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }
}

extension SiteViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


