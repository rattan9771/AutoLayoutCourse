//
//  ViewController.swift
//  AutoLayoutCourse
//
//  Created by Rattan Das on 14/01/24.
//

import UIKit

class PriorityTestViewController: UIViewController {

   
    @IBOutlet weak var leadingYellow: NSLayoutConstraint!
    
    @IBOutlet weak var bottom: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

    @IBAction func tapMe(_ sender: Any) {
        
        UIView.animate(withDuration: 3.0) {
            
            if self.leadingYellow.constant == 0 {
                self.leadingYellow.constant = -(self.view.frame.width)
            }else {
                self.leadingYellow.constant = 0
            }
            
            if self.bottom.constant == -500 {
                self.bottom.constant = 0
            }else {
                self.bottom.constant = -500
            }
            
            self.view.layoutIfNeeded()
            
        }
        
        
    }
    
}

