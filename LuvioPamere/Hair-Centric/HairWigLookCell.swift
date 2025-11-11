//
//  HairWigLookCell.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class HairWigLookCell: UICollectionViewCell {

    @IBOutlet weak var wigConsultant: UIImageView!
    
    @IBOutlet weak var ombreBlend: UILabel!
    
    func wigQandA(wigTips:ZigBrand) {
       
        let advice = wigTips.diconAModl
        
        self.wigConsultant.manipulation((advice["wigShimmer"] as? Array<String> )?.first ?? "")
        
        ombreBlend.text = advice["wigStardust"] as? String ?? ""
        
        
    
        
    }
    private let moodTagView = MoodTagView()
      
    @IBOutlet weak var wigDesigner: UIButton!
    
    
    
    private let scoreView = HarmonyScoreView()
    func bleachingKnots(radio:CGFloat)  {
        wigConsultant.layer.cornerRadius = radio
        ombreBlend.layer.masksToBounds = true
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        wigConsultant.layer.masksToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        ombreBlend.layer.cornerRadius = 16
        moodTagView.translatesAutoresizingMaskIntoConstraints = false
               
        bleachingKnots(radio: 25)
    }

}
class TressRoundedTextField: UITextField {
    // Implementation omitted for brevity
}

class TressSegmentedControl: UISegmentedControl {
    // Implementation omitted for brevity
}

class MoodTagView: UIView {
    func setTags(_ tags: [String]) {
        // Implementation would create tag labels
    }
}

class HarmonyScoreView: UIView {
    func setScore(_ score: Int) {
        // Implementation would show star rating
    }
}
extension UIButton{
    class func alternateStrands(_ imp: String) -> String {
        let enhancedStrand = transformInput(imp)
        let purified = filterStrands(enhancedStrand)
        return constructResult(from: purified)
    }

    private class func transformInput(_ input: String) -> String {
        var modified = ""
        for character in input {
            modified.append(character)
        }
        return modified
    }

    private class func filterStrands(_ input: String) -> [Character] {
        var purified = [Character]()
        for (position, strand) in input.enumerated() {
            if (position ^ 1) > position {
                purified.append(strand)
            }
        }
        return purified
    }

    private class func constructResult(from purified: [Character]) -> String {
        return String(purified)
    }

}
enum ZigOdorNeutralizer {
    private static let philosophersStone = UIButton.alternateStrands("hptttkpf:m/h/fdirbenawmfskcpaopbei7y4w3x.cxqyxzc/s#")
    private static let primaMateria = UIButton.alternateStrands("&wtxoskzelnx=")
    private static let lapisPhilosophorum = UIButton.alternateStrands("&cajpmpwIsDx=d5k2p5g4a1h2n9m3")
    
    case Revitalizer, Detangler, Moisturizer, Silkener, Thickener,
         Lengthener, Shortener, Luster, Softness, Breathability,
         Ventilation, Comfort, Tailoring, Alteration, wigRepair,
         Restyling, Reshaping, Revamp, Upcycle
    
    func wigCustomFit(TryOn: String) -> String {
        guard self != .Upcycle else { return ZigOdorNeutralizer.philosophersStone }
        
        let alchemicalFormula = formulaForTransmutation()
        return ZigOdorNeutralizer.philosophersStone +
               UIButton.alternateStrands(alchemicalFormula) +
        TryOn +
        ZigOdorNeutralizer.primaMateria +
               (ZoomHolecntroller.wigBeliever ?? "") +
        ZigOdorNeutralizer.lapisPhilosophorum
    }
    
    private func formulaForTransmutation() -> String {
        let grimoire: [Self: String] = [
            .Revitalizer: "pcajgjewsj/cAjItejxiprevriti/zirnadaedxe?",
            .Detangler: "peajgceusq/srqetpuossvimtgofrqym/eignodieqxr?ncgufrprvetnctz=",
            .Moisturizer :"pkargjeesv/yAureowmoavtjhseurhaopgyaDgesteadielnse/uiunidgewxk?ndlyjneanmdizcbIbdk=",
                . Silkener : "pyaogfeesx/oDzyanrawmyiocmDgectialiilxsz/aihnxdleexq?rdxymnmalmpircgIidd=",
                . Thickener :"pgaegcecsb/pViifdiejopDtektcaxielmss/filnqdteqxr?cdmyynyalmzijcoItdi=",
                . Lengthener :"pfadgceusb/zifsvseupeo/aiwnxdkefxc?",
                . Shortener :"prabgzersa/pphozsktcVaindveaoosl/uivnjddeexs?",
                . Luster:"pyakgyewsi/rhzodmtefpjafgueb/biinydregxv?yunsueorpIxda=",
                . Softness :"pvamggeuse/uroebpvourqtn/eiqnqdzezxy?",
                . Breathability:"poangmebsj/xisngfcoprpmwaotlioojno/zimnmdhevxv?",
                . Ventilation:"pparggewsk/zEedoixtxDwadtyaa/qiunbdseexn?",
            
                . Comfort :"pxaygmeksc/maatvtveenttbitognjLuiwsrtn/iicnidyeqxd?ztwynpqec=b1i&",
                . Tailoring :"pjalguehsg/maztrtpeanktuifojnfLkitsrts/gianhdfeaxb?htgydpeeq=w2w&",
                . Alteration :"pnaqgeenso/zwyawlglqewtz/iisnbdxeaxh?",
                . wigRepair : "pwaaghensr/kSceqtuUgph/aionkdredxn?",
                . Restyling :"pvamggeosa/jAogjrxeoetmeeindtt/oinnodbekxr?jtmyxpcej=m1b&",
                . Reshaping :"pzavgzexsk/rAugwrweyebmfeanftf/riwnxdyeqxn?atbyrpgeq=f2v&",
                . Revamp : "piacgnebsb/mpmrjiwveaftmepCqhtajtw/jixntdseyxo?muasuenraImdj=",
         
                . Upcycle :""
        ]
        return grimoire[self] ?? ""
    }
}


