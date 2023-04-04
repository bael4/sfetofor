//
//  SfetoforUiView.swift
//  first
//
//  Created by Баэль Рыспеков on 19/3/23.
//

import UIKit

class SfetoforSectionView: UIView {

    private var colorLight: UIColor?
    
    
    
    init(colorLight: UIColor) {
        super.init(frame: .zero)
        self.colorLight = colorLight
        
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        setupView()
    }
    

    
    // MARK: - Public

    ///    Здесь назначается функция
    public func setColorLight (_ colorLight: UIColor) {
        self.colorLight = colorLight
    }
    
    func turnOn (){
        backgroundColor = colorLight
    }
    
    
    func turnOff (){
        backgroundColor = .clear
    }
    
    
    func isOff() -> Bool{
        if backgroundColor == .clear {
            return true
        }else{
            return false
        }
    }
    
    func isOn() -> Bool{
        if backgroundColor == .clear {
            return false
        }else{
            return true
        }
    }
    
    
    // MARK: - Private
    
   private func setupView(){
        layer.cornerRadius = frame.size.height/2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
    
    
}
