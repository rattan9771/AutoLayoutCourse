//
//  ViewController.swift
//  AutoLayoutCourse
//
//  Created by Rattan Das on 14/01/24.
//

import UIKit

class PriorityTestViewController: UIViewController {

    @IBOutlet weak var playbackbtn: UIButton!
    
    @IBOutlet weak var ibookBtn: UIButton!
    
    @IBOutlet weak var kindleBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapBtn(sender : UIButton) {
        
        UIView.animate(withDuration: 0.5) {
            
            switch sender.tag {
                
            case 0:
                self.playbackbtn.removeFromSuperview()
                
            case 1:
                self.ibookBtn.removeFromSuperview()
                
            case 2:
                self.kindleBtn.removeFromSuperview()
                
            default:
                print("nothing")
            }
            
            self.view.layoutIfNeeded()
        }
       
        
        
    }

}

