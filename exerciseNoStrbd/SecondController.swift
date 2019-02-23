//
//  SecondController.swift
//  exerciseNoStrbd
//
//  Created by Danijel Vasov on 2/23/19.
//  Copyright © 2019 OSX. All rights reserved.
//

import UIKit

protocol DataRev {
    func returnFromSecondVC(dismissed: Bool)
}


class SecondController: UIViewController {

    let button = UIButton()
    var delegate: DataRev?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        button.setTitle("Go back", for: .normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 27)
        button.tintColor = .white
        button.addTarget(self, action: #selector(backBtnWasPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        
        
        let constraints: [NSLayoutConstraint] = [
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    

    
    @objc fileprivate func backBtnWasPressed(){
        delegate?.returnFromSecondVC(dismissed: true)
        self.dismiss(animated: true, completion: nil)
    }
   

}
