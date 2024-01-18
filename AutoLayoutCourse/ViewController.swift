//
//  ViewController.swift
//  AutoLayoutCourse
//
//  Created by Rattan Das on 14/01/24.
//

import UIKit

class PriorityTestViewController: UIViewController {

   
    @IBOutlet weak var redLbl1: UILabel!
    
    @IBOutlet weak var yellowLbl1: UILabel!
    
    @IBOutlet weak var redLbl2: UILabel!
    
    @IBOutlet weak var yellowLbl2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yellowLbl1.text = "250 want to grow"
        redLbl1.text = "251 we want to grow"
        
        //hug - don't want to grow
        //resistance-  don't want to compress
       
        
        redLbl2.text = "251 we want to grow"
//
        yellowLbl2.text = "250 want to grow"
//
    }


}

