//
//  ViewController.swift
//  exerciseNoStrbd
//
//  Created by Danijel Vasov on 2/23/19.
//  Copyright © 2019 OSX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataRev {
    
    //FROM PROTOCOL
    func returnFromSecondVC(dismissed: Bool) {
        isReturnFromSecond = true
    }
    

    let button = UIButton()
    var isReturnFromSecond = false
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        configureButton()
    }

    
    
    override func viewDidAppear(_ animated: Bool) {

        super.viewDidAppear(animated)
        if isReturnFromSecond {
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.button.transform = CGAffineTransform.identity
                self.button.alpha = 1
            }, completion: nil)
        }
    }
    
    

    fileprivate func configureButton() {
        
        button.setTitle("Press", for: .normal)
        button.backgroundColor = .green
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 27)
        button.tintColor = .white
        button.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints: [NSLayoutConstraint] = [
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    
    
    
    
    
    @objc fileprivate func buttonTouched(){
        
        isReturnFromSecond = false
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
                self.button.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.button.alpha = 0
            
        }) { (_) in
    
                let secondController = SecondController()
                secondController.delegate = self
                self.present(secondController, animated: true, completion: nil)
        }
   
    }
    
    
    
}

