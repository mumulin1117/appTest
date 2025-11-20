//
//  CRETEMCMOASacalNulriamControler.swift
//  Nurmiaofd
//
//  Created by  on 2025/6/27.
//

import UIKit

class CRETEMCMOASacalNulriamControler: UIViewController {
     var CRETEMCMOAcorticalActivityIndicator: UIActivityIndicatorView = {
        let goujs = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
       
        goujs.tintColor = .white
        
        return goujs
        
    }()
    private let waveformLayerCRETEMCMOA: CAShapeLayer = {
            let layer = CAShapeLayer()
            layer.strokeColor = UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1).cgColor
            layer.fillColor = UIColor.clear.cgColor
            layer.lineWidth = 3
            layer.lineCap = .round
            return layer
        }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CRETEMCMOAcorticalActivityIndicator.hidesWhenStopped = true
        CRETEMCMOAcorticalActivityIndicator.frame = CGRect(x: 0, y: 0, width: 111, height: 111)
    }

}
