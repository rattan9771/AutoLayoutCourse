//
//  ViewController.swift
//  AutoLayoutCourse
//
//  Created by Rattan Das on 14/01/24.
//

import UIKit

class PriorityTestViewController: UIViewController {

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
       let lbl = addLabel()
       let bt1 = addBtn1(lbl : lbl)
        
        
        let v1 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width - 36, height: 0))
        v1.backgroundColor = .green
        v1.layer.borderColor = UIColor.lightGray.cgColor
        v1.layer.borderWidth = 2
        
        v1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(v1)
        
        v1.topAnchor.constraint(equalTo: bt1.bottomAnchor, constant: 24).isActive = true
        v1.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        v1.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 18).isActive = true
        v1.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -18).isActive = true
        
       // NSLayoutConstraint(item: v1, attribute: .top, relatedBy: .equal, toItem: bt1, attribute: .bottom, multiplier: 1.0, constant: 24).isActive = true
        
     //   NSLayoutConstraint(item: v1, attribute: .bottom, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: -8).isActive = true

      //  NSLayoutConstraint(item: v1, attribute: .leading, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1.0, constant: 18).isActive = true

     //  NSLayoutConstraint(item: v1, attribute: .trailing, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .trailing, multiplier: 1.0, constant: -18).isActive = true
        
        let bt2 = addBtn2(v1 : v1)
        
        let bt3 = addBtn3(v1 : v1, bt2 : bt2)
    }
    
    
    func addBtn3(v1 : UIView, bt2 : UIButton) -> UIButton {
        let bt1 = UIButton()
        bt1.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        bt1.setTitle("Button 3", for: .normal)
        bt1.setTitleColor(UIColor.red, for: .normal)
        bt1.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        bt1.backgroundColor = UIColor.blue
        
        v1.addSubview(bt1)
        bt1.translatesAutoresizingMaskIntoConstraints = false
        
        
        bt1.topAnchor.constraint(equalTo: bt2.bottomAnchor, constant: 24).isActive = true
        bt1.centerXAnchor.constraint(equalTo: v1.centerXAnchor, constant: 0).isActive = true
        bt1.widthAnchor.constraint(equalTo: v1.widthAnchor, multiplier: 0.5, constant: 0).isActive = true
        
      //  NSLayoutConstraint(item: bt1, attribute: .top, relatedBy: .equal, toItem: bt2, attribute: .bottom, multiplier: 1.0, constant: 24).isActive = true
        
     //   NSLayoutConstraint(item: bt1, attribute: .centerX, relatedBy: .equal, toItem: v1, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        
     //   NSLayoutConstraint(item: bt1, attribute: .width, relatedBy: .equal, toItem: v1, attribute: .width, multiplier: 0.5, constant: 0).isActive = true
        
        return bt1
    }
    
    func addBtn2(v1 : UIView) -> UIButton {
        let bt1 = UIButton()
        bt1.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        bt1.setTitle("Button 2", for: .normal)
        bt1.setTitleColor(UIColor.red, for: .normal)
        bt1.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        bt1.backgroundColor = UIColor.blue
        
        v1.addSubview(bt1)
        bt1.translatesAutoresizingMaskIntoConstraints = false
        
        
        bt1.topAnchor.constraint(equalTo: v1.topAnchor, constant: 24).isActive = true
        bt1.centerXAnchor.constraint(equalTo: v1.centerXAnchor, constant: 0).isActive = true
        bt1.widthAnchor.constraint(equalTo: v1.widthAnchor, multiplier: 0.5, constant: 0).isActive = true
        
        //NSLayoutConstraint(item: bt1, attribute: .top, relatedBy: .equal, toItem: v1, attribute: .top, multiplier: 1.0, constant: 24).isActive = true
        
     //   NSLayoutConstraint(item: bt1, attribute: .centerX, relatedBy: .equal, toItem: v1, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        
    //    NSLayoutConstraint(item: bt1, attribute: .width, relatedBy: .equal, toItem: v1, attribute: .width, multiplier: 0.5, constant: 0).isActive = true
        
        return bt1
    }
    
    func addBtn1(lbl: UILabel) -> UIButton {
        let bt1 = UIButton()
        bt1.frame = CGRect(x: 0, y: 0, width: self.view.frame.width - 36, height: 40)
        bt1.setTitle("Button 1", for: .normal)
        bt1.setTitleColor(UIColor.red, for: .normal)
        bt1.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        bt1.backgroundColor = UIColor.blue
        
        self.view.addSubview(bt1)
        bt1.translatesAutoresizingMaskIntoConstraints = false
        
        
        bt1.topAnchor.constraint(equalTo: lbl.bottomAnchor, constant: 24).isActive = true
        bt1.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        bt1.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
        
      //  NSLayoutConstraint(item: bt1, attribute: .top, relatedBy: .equal, toItem: lbl, attribute: .bottom, multiplier: 1.0, constant: 24).isActive = true
        
     //   NSLayoutConstraint(item: bt1, attribute: .leading, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1.0, constant: 18).isActive = true
        
       // NSLayoutConstraint(item: bt1, attribute: .trailing, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .trailing, multiplier: 1.0, constant: -18).isActive = true
        
        return bt1
    }
    
    func addLabel() -> UILabel {
        
        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 0, y: 0, width: self.view.frame.width - 36, height: 40)
        titleLabel.textColor = .red
        titleLabel.text = "Programatic Constraint"
        titleLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 24).isActive = true
        
        //NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 1.0, constant: 24).isActive = true
        
     //   NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1.0, constant: 18).isActive = true
        
       // NSLayoutConstraint(item: titleLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .trailing, multiplier: 1.0, constant: -18).isActive = true
        
        return titleLabel
    }

   
    
}

