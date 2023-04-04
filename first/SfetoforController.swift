//
//  ViewController.swift
//  first
//
//  Created by Баэль Рыспеков on 5/3/23.
//


import UIKit
import SnapKit

class SfetoforController: UIViewController {
    
    
    
    @IBOutlet weak var turnButton: UIButton!
    
    private let sfetoforView = SfetoforView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(sfetoforView)
        sfetoforConfigure()
        
    }
    
    
    // MARK: - Actions
    
    @IBAction func actionButton(_ sender: Any) {
        sfetoforView.switchMode()
    }
    
    
   // MARK: - Private
    
    private func sfetoforConfigure () {
        sfetoforView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalToSuperview().offset(64)
            make.centerX.equalToSuperview()
        }
    }
    
}
