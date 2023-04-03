//
//  ViewController.swift
//  first
//
//  Created by Баэль Рыспеков on 5/3/23.
//


import UIKit
import SnapKit

class ViewController: UIViewController {


    

    @IBOutlet weak var greenView: SfetoforUiView!
    @IBOutlet weak var redView: SfetoforUiView!
    @IBOutlet weak var orangeView: SfetoforUiView!
    
    @IBOutlet weak var turnButton: UIButton!
    
    @IBOutlet weak var redViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.turnOff()
        orangeView.turnOff()
        greenView.turnOff()
    }
    
 
    @IBAction func actionButton(_ sender: Any) {
                if redView.backgroundColor == .clear &&   orangeView.backgroundColor == .clear &&  greenView.backgroundColor == .clear
                {
                    redView.backgroundColor = .red
                }else if redView.backgroundColor == .red{
                    redView.backgroundColor = .clear
                    
                    orangeView.backgroundColor = .orange
                } else if orangeView.backgroundColor == .orange {
                    orangeView.backgroundColor = .clear
                    greenView.backgroundColor = .green
                } else if greenView.backgroundColor == .green{
                    greenView.backgroundColor = .clear
                }
    }
    
}


