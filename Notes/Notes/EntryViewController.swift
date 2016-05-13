//
//  EntryViewController.swift
//  Notes
//
//  Created by Eva Marie Bresciano on 5/13/16.
//  Copyright © 2016 Module 9. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var bodyText: UITextView!
    
    
    var entry: Entry?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
        
        if let entry = entry {
            updateWithEntry(entry)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        titleText.resignFirstResponder()
        
        return true
    }
    
    func updateWithEntry(entry:Entry) {
        self.navigationItem.title = entry.title
        bodyText.text = entry.bodyText
        titleText.text = entry.title
    }
    
    //MARK: -Actions
    
    
    
    
    
    
    
    
    @IBAction func clearButton(sender: AnyObject) {
        titleText.text = ""
        bodyText.text = ""
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        if let entry = entry {
            entry.title = titleText.text ?? ""
            entry.bodyText = bodyText.text ?? ""
        } else {
            let entry = Entry(title: titleText.text ?? "",bodyText: bodyText.text ?? "",
                              timeStamp: NSDate())
            EntryController.sharedController.addEntry(entry)
            self.entry = entry
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
        
        
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
        
    }
    
}