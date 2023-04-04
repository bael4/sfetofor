//
//  SfetoforView.swift
//  first
//
//  Created by Баэль Рыспеков on 4/4/23.
//

import UIKit

class SfetoforView: UIView{

    
   private var greenView = SfetoforSectionView(colorLight: .green)
   private var redView = SfetoforSectionView(colorLight: .red)
   private var orangeView =  SfetoforSectionView(colorLight: .orange)
    
    
    private let stackView = UIStackView(frame: .zero)
    
    
     init() {
         
         super.init(frame: .zero)
         configureStackView()
         configureSfetoforSectionView()
         setStartState()
         
    }

    
    required init?(coder: NSCoder) {
        fatalError("error")
    }
    
    
    private func configureStackView () {
        addSubview(stackView)
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(orangeView)
        stackView.addArrangedSubview(greenView)
      
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    private func configureSfetoforSectionView() {
        
        redView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        orangeView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        greenView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
    }
    
    
    private func setStartState () {
        redView.turnOff()
        orangeView.turnOff()
        greenView.turnOff()
    }
    
    
    func switchMode(){
        if redView.isOff() && orangeView.isOff() && greenView.isOff() {
            redView.turnOn()
        } else if redView.isOn() {
            redView.turnOff()
            orangeView.turnOn()
        } else if orangeView.isOn() {
            orangeView.turnOff()
            greenView.turnOn()
        } else if greenView.isOn() {
            greenView.turnOff()
        }
    
    }
    
    
}
