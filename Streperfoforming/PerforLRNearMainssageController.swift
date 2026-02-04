//
//  PerforLRNearMainssageController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/15.
//

import UIKit

class PerforLRNearMainssageController: UIViewController {

    private let universalInteractiontrep: UIImageView = {
        let universalInteraction = UIImageView()
        universalInteraction.image = UIImage(named: "MESSAGE")
        universalInteraction.contentMode = .scaleAspectFit
        universalInteraction.translatesAutoresizingMaskIntoConstraints = false
        return universalInteraction
    }()
    
  
    private lazy var backLRNearButton: UIButton = {
        let LRNear = UIButton(type: .custom)
        LRNear.setImage(UIImage(named: "neibbalLRNear"), for: .normal)
        LRNear.addTarget(self, action: #selector(yeuiabn(_:)), for: .touchUpInside)
        LRNear.translatesAutoresizingMaskIntoConstraints = false
        return LRNear
    }()
    
    
    private let setinhvlouLRNear: UIView = {
        let setupVlog = UIView()
        setupVlog.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.192, alpha: 1.0)
        setupVlog.layer.cornerRadius = 20
        setupVlog.layer.masksToBounds = true
        setupVlog.translatesAutoresizingMaskIntoConstraints = false
        return setupVlog
    }()
    
  
    private let emptyLRNearLabel: UILabel = {
        let universalAccess = UILabel()
        universalAccess.text = VisualEcho.centerEther("Fnienzdr lnrogtahdipnugw.e.c.")
        universalAccess.textAlignment = .center
        universalAccess.font = .systemFont(ofSize: 17)
        universalAccess.textColor = .lightGray
        universalAccess.translatesAutoresizingMaskIntoConstraints = false
        return universalAccess
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(universalInteractiontrep)
        view.addSubview(backLRNearButton)
        view.addSubview(setinhvlouLRNear)
        accessibleStagesapire()
    }

  
    private func accessibleStagesapire() {
       
        view.backgroundColor = UIColor(red: 0.059, green: 0.071, blue: 0.110, alpha: 1.0)
       
        setinhvlouLRNear.addSubview(emptyLRNearLabel)
      
        NSLayoutConstraint.activate([
           
            universalInteractiontrep.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 9),
            universalInteractiontrep.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            backLRNearButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            backLRNearButton.centerYAnchor.constraint(equalTo: universalInteractiontrep.centerYAnchor),
            backLRNearButton.widthAnchor.constraint(equalToConstant: 36),
            backLRNearButton.heightAnchor.constraint(equalToConstant: 36),
         
            setinhvlouLRNear.topAnchor.constraint(equalTo: backLRNearButton.bottomAnchor, constant: 26.67),
            setinhvlouLRNear.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            setinhvlouLRNear.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
           
            setinhvlouLRNear.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20),
           
            emptyLRNearLabel.centerXAnchor.constraint(equalTo: setinhvlouLRNear.centerXAnchor),
            emptyLRNearLabel.topAnchor.constraint(equalTo: setinhvlouLRNear.topAnchor, constant: 128)
        ])
    }

    @objc  func yeuiabn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


