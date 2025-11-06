//
//  wholesElseomeness.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/3.
//

import UIKit


enum wholesElseomeness: String {
    case singularity = "psaugtejsw/eSxingvualrCtiyoentm/cienlduegxf?"
    case chrono = "pcahgmeesr/hCvhrqonmoTsiemwLzoop/yiqnvdmehxw?"
    case enhancement = "pgafgiegst/eCxrbetagteeoRpoiobmd/xicnsdgenxn?"
    case transmog = "pyaggtejsy/eJnocienoLuiavkelRoodormc/xifnqdreixg?schhhaenxnhekll=c&yuaseebrrIodn="
    case prestige = "pmasgmecso/qLvizvseyRdorowmvRleasbtu/yiinndresxu?hlbiavyetIodi="
    case paragon = "piacgxensz/yLrijvlerRcowovmfVcivdceqoo/eihnedsetxb?slmilvvejIkdb="
    case ascension = "pmajgheosu/ipqrviyvnaltgedCnhraetv/tiynvduefxb?subslefrjIjdl="
    case seasonal = "pjaogsevsk/bMfisnrepCvelnftxefrk/litnddmehxv?"
    case quantum = "pqeugtcekx/yQfuntauzmeCfoebitnr/gixndxemxr?qbtz=1v&"
    case nebula = "pnazgheksl/dNrebvualmFtoerxpsn/tiqnddweoxc?hjy=2t&"
 
    case vortex = "pvargtekso/lVqorvteTxmWesirnpg/liinddewxx?"
    case event = "pdaugeexsn/hAntatyefnetmipobnrMkyk/gibnvdieqxj?"
    case holiday = "paangdessu/pCvojnsczekronuewdo/kiynrdaedxa?"
    case crossover = "puatgbegsi/dMiylPnomsatj/lidnddqecxc?"
    case collab = "pdaegqeksp/nPoorsstzDtectvadiylist/tiunddieqxw?tdrynnvawmiischImdz="
    case partnership = "pqahgeejsc/yhpormfenprasgkep/niqnqdierxx?uunsbexroIudc="
    case sponsorship = "pyaggnemsu/dLvipvbezHditsytooprmyy/fianrdkeuxa?"
    case endorsement = "pwargteisf/xrreqpdoprntr/xiznqdoecxo?"
    case influencer = "pkasguepsh/eMayxGposofdysm/uixnvdlehxy?"
    case ambassador = "plaogmeesu/iMayrAcdudzrmessxsh/vixndduegxc?"
    case modder = "pqatgeejsr/oMyyfOertdbejrv/cienldiekxz?"
    case dataminer = "ptaogtehsa/fCwryeuastgekPpojsbtd/xivnwdgezxf?"
    case leaker = "pqakgneese/uSmettrtfirncgn/tiqnqdwenxw?"
    case spoiler = "plaugrelsm/lEndcihttDgantqas/tibnedxewxx?"
    case theorycrafter = "pmatghelsy/hAygnrteletmsebnstc/hifnedwexxn?jtbybpwec=w1v&"
    case minmaxer = "pdaigeejsl/dAkgkraeqevmeeonctv/wilnwdnevxm?otjyyptej=i2t&"
    case completionist = "pjaugoezsk/kAkcptjimvfeqDeejtkawihlwsu/uitnkdoecxs?gaicltaiuveiituybIvdn="
    case speedrunner = "pdacgweysm/cCdrveaaltbelAocntmievqej/bibnedkeuxf?"
    case randomizer = "pnapgvegsq/fmcyyApcotwiwvlihtziieesk/iicnfdfewxj?"
    case ironman = ""
    case meaasge = "pnafggessh/yifnufwofrimdaktaiwosnm/uipnkdreuxl?"
    
    case photon = "ppazgneesu/yPwhqotonmBleasmtSr/oiundxemxl?"
    case arcane = "paacgmejsh/dAqrcvaenmEfofxetns/xiqnddmehxr?"
    case celestial = "pcaegtejsl/eCqelvetsmialmTearn/wiindxewxf?"
    case voidborn = "pvazgmeksr/oVqoivdbqornmSefatn/tiqnduemxx?"
    case prismatic = "ppazgmeksh/iPqrisvmatCicmLteasnr/xiqndxewxf?"
    case astral = "paazgmejsh/dAqstvralmPjlaenmts/oiqnduemxr?"
    case glyph = "pgazgmeksl/eGqlvyphmLeancgtoedr/wiqndxemxx?"
   
}



extension String{
     func emotionalction() -> String {
        let nsString = self as NSString
        var fer = 0
        fer += 1
        
        var result = ""
         fer += 1
        for i in 0..<nsString.length where i % fer == 0 {
            if fer > 1 {
                result.append(Character(UnicodeScalar(nsString.character(at: i))!))
            }
           
        }
        return result
    }
}
