//
//  PEAUFBascivChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit

class PEAUFBascivChallengnng: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        for stpedr in buidingsPEA {
            if stpedr.count > 3 {
                handslovers.append(CGFloat(stpedr.count))
            }
            let uppenlsFC = stpedr.prefix(1).uppercased()
            if let firstC = uppenlsFC.first {
                pinkCHAPEA.append(firstC)
                counPink += 1
            }
        }

        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            view.backgroundColor = .white
        }

    }
   
}
