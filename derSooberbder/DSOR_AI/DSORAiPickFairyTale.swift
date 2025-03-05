//
//  DSORAiPickFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/10.
//

import UIKit

class DSORAiPickFairyTale: UIViewController {

 

    @IBAction func awaythisRoolmDSOR(_ sender: UIButton) {
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
          
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
    @IBAction func createStykeolmDSOR(_ sender: UIButton) {
        
        if sender.tag == 12 {
            self.navigationController?.pushViewController(DSORAiCreateFairyTale.init(cerateTypeDSOR: 0, nil), animated: true)
            return
        }
        
        if sender.tag == 13 {
            self.navigationController?.pushViewController(DSORHeaderAICreateFairyTale.init(), animated: true)
            return
        }
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
          
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
