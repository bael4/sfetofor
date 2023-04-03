//
//  SfetoforUiView.swift
//  first
//
//  Created by Баэль Рыспеков on 19/3/23.
//

import UIKit

class SfetoforUiView: UIView {

    var color: UIColor?
    
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        layer.cornerRadius = frame.size.height/2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
        
    }

    
    func turnOn (){
        backgroundColor = color
    }
    
    func turnOff (){
        backgroundColor = .clear
    }
    
    func isOn() -> Bool{
        if backgroundColor == .clear {
            return false
        }else{
            return true
        }
    }
    
    
    
}
