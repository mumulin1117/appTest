import UIKit
import AuthenticationServices
import PhotosUI

private enum DiscobTopGwivlPourFlow {
    case vineyardSignIn
    case cellarSignUp
}

private enum DiscobTopGwivlPortalStage {
    case cellarGateway
    case cellarCredentials
    case cellarProfile
}

private enum DiscobTopGwivlGatewayIntent {
    case cellarLogIn
    case cellarSignUp
}

private struct DiscobTopGwivlPendingBlend {
    let DiscobTopgwivlEmailBlend: String
    let DiscobTopgwivlPasswordBlend: String
    let DiscobTopgwivlGenderBlend: String?
    let DiscobTopgwivlAppleUserBlend: String?
    let DiscobTopgwivlIdentityBlend: String?
    let DiscobTopgwivlDisplayBlend: String?
    let DiscobTopgwivlAvatarBlend: String?
    let DiscobTopgwivlAppleBlend: Bool
}

private struct DiscobTopGwivlCellarRecord: Codable {
    var DiscobTopgwivlEmailCellar: String
    var DiscobTopgwivlPasswordCellar: String
    var DiscobTopgwivlDisplayCellar: String
    var DiscobTopgwivlAvatarCellar: String
    var DiscobTopgwivlBirthCellar: String
    var DiscobTopgwivlGenderCellar: String?
    var DiscobTopgwivlAppleUserCellar: String?
    var DiscobTopgwivlIdentityCellar: String?
    var DiscobTopgwivlAppleBlendCellar: Bool
    var DiscobTopgwivlLastToastCellar: TimeInterval
}

private final class DiscobTopGwivlCellarVault {
    private let DiscobTopgwivlLedgerKey = DiscobTopGwivlCipher.ledgerKey

    func DiscobTopuncorkCellars() -> [DiscobTopGwivlCellarRecord] {
        guard let DiscobTopgwivlLedgerData = UserDefaults.standard.data(forKey: DiscobTopgwivlLedgerKey),
              let DiscobTopgwivlLedger = try? JSONDecoder().decode([DiscobTopGwivlCellarRecord].self, from: DiscobTopgwivlLedgerData) else {
            return []
        }
        return DiscobTopgwivlLedger
    }

    func DiscobToppourCellar(DiscobTopgwivlEmail: String) -> DiscobTopGwivlCellarRecord? {
        let DiscobTopgwivlNeedle = DiscobTopgwivlEmail.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        return DiscobTopuncorkCellars().first { $0.DiscobTopgwivlEmailCellar.lowercased() == DiscobTopgwivlNeedle }
    }

    func DiscobToppourCellar(DiscobTopgwivlAppleUser: String) -> DiscobTopGwivlCellarRecord? {
        let DiscobTopgwivlNeedle = DiscobTopgwivlAppleUser.trimmingCharacters(in: .whitespacesAndNewlines)
        return DiscobTopuncorkCellars().first { $0.DiscobTopgwivlAppleUserCellar == DiscobTopgwivlNeedle }
    }

    func DiscobTopreserveCellar(_ DiscobTopgwivlRecord: DiscobTopGwivlCellarRecord) {
        var DiscobTopgwivlLedger = DiscobTopuncorkCellars()
        if let DiscobTopgwivlIndex = DiscobTopgwivlLedger.firstIndex(where: {
            $0.DiscobTopgwivlEmailCellar.lowercased() == DiscobTopgwivlRecord.DiscobTopgwivlEmailCellar.lowercased()
                || (($0.DiscobTopgwivlAppleUserCellar?.isEmpty == false) && $0.DiscobTopgwivlAppleUserCellar == DiscobTopgwivlRecord.DiscobTopgwivlAppleUserCellar)
        }) {
            DiscobTopgwivlLedger[DiscobTopgwivlIndex] = DiscobTopgwivlRecord
        } else {
            DiscobTopgwivlLedger.append(DiscobTopgwivlRecord)
        }
        guard let DiscobTopgwivlLedgerData = try? JSONEncoder().encode(DiscobTopgwivlLedger) else {
            return
        }
        UserDefaults.standard.set(DiscobTopgwivlLedgerData, forKey: DiscobTopgwivlLedgerKey)
    }
}

private enum DiscobTopGwivlCipher {
    static let emptyText = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "")
    static let ledgerKey = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "guwdiavxli_hthaesxtdivnxgr_ccsenlblaacrg_hrqetcaorrgdws")
    static let testEmail = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "guwwirvnlh@ogsmiazialy.zcfowm")
    static let testPassword = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "1n2k3i4e5g6y7k8")
    static let avatarFallback = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gdwcimvdll-latsiszebtx:o/r/dDmUcLrIjOuStIlAsGgwwicvbl")
    static let birthFallback = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "1v9h9y8j-c0h6")
    static let assetHongjiaufb = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "hdomnigojuilafulflb")
    static let assetBrand = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "DgUvLiIwOvSuIcAtGuwfirvxl")
    static let assetNormalButton = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "nhofrommailuBwurthtvoknyBydbf")
    static let assetSignup = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "sviugundubpmbxg")
    static let assetSignInNow = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "sfiigonhicnonzorwdGbwuvrial")
    static let assetAppleIcon = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "acpylhpflnepipcgomn")
    static let assetEulaBg = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "eblfumsaBmdig")
    static let assetBackgroundDetail = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "DbUxLkIbObSsIpRqtqefrbrqocifrcEtxcpvrhemsdssihosn")
    static let assetConsentOn = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "DtUbLtIcOnSvIsAsGqakyiygnvgwe")
    static let assetConsentOff = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "DkUhLiImOeSvIuRjsodkcyscdafoatasa")
    static let localePosix = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "eznz_oUjSn_wPxOzSrIvX")
    static let sfEnvelope = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "egnrvyexlwogpwe")
    static let sfLock = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "laoscrk")
    static let sfPerson = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "pheirvspogn")
    static let sfCalendar = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "cnagldednvdnalr")
    static let sfXmark = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "xrmoaernk")
    static let sfPlus = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "pmlhuys")
    static let heroLogin = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Lwopgeign")
    static let heroSignUp = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Sjiggbns xUrp")
    static let buttonLogIn = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Lnongo xibn")
    static let buttonSignUp = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Skizgdnh gugp")
    static let placeholderEmail = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ecnctxeprc yermyaeielv pardfdirqetsns")
    static let placeholderPassword = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ejnmtveurl opqaosdshwhocrkd")
    static let placeholderName = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ehnsthearc wyuobuhrc bnkacmqe")
    static let placeholderBirth = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Brierxtshs pmhoznptzh")
    static let genderFemale = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Fhebmzaklme")
    static let genderMale = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Miaclge")
    static let genderOther = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ostwhkegr")
    static let genderTitles = [genderFemale, genderMale, genderOther]
    static let consentLead = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Buyp mcuoonetiienhuxirnrgi xysonus malghreeqep ctyob doeuurf ")
    static let termsTitle = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "<zTvenrtmcsm motfo qSierravvixcdev>")
    static let termsURL = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "grwyiivylu:k/d/jtnefromas")
    static let consentAnd = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "\nxaxnidq ")
    static let privacyTitle = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "<yPfrqidvuajcuyq tPgoelliycfyr>y.")
    static let privacyURL = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gqwaitvklp:a/d/lpzrjihvbahcsy")
    static let alertConsent = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Adgcrregeq iteol cthhlej fToerrwmjst zoufq aSverrjvvidceei dadnxdr ePirjitvgawckyg vPuoilqipciyb cbuenfiobraek yeenutiefrxionrgw nGrwaidvclw.")
    static let alertEnterEmailPassword = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Eenrtbelrs raenn eebmjalizlb lagnvdh vpdalsysrwnotrxde hffizrzsftn.")
    static let alertCheckEmailPassword = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cahfexckkz ntzhvex zehmiafizlw dfmobrpmhagto lajnzdh hkaevegpm ktihcey iplausqsmwvorrkda daitf sliebadsttn lsxizxk ncthqadrmascgtiebrwsn.")
    static let alertCheckCellarEmailPassword = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cahqezcrkv xtxhxev gclenlclvakrt kevmdaxijlq jfvonrkmmawtj raengdn vkmevexpf ttshjem rpaajsjsgwnozrsdt uakto oloevagsqtp zszixxf vcchjaqrvaucttkecrysh.")
    static let alertChooseUsername = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cvhjohozsgee aab hupsteyrcnoanmues gwwiwtmhp mahte ulweaaysytd ytnwhof zcwhqaorbarchtdeoresz.")
    static let hudPairing = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Poaviqrritnkgy otthxeq ncreolflxapro.i.y.")
    static let successWelcome = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Wteelhceopmved sbgaocwki ytlof tGtwxiwvdly.")
    static let alertLoginParse = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Trhaem scsevlalcaurn eloofgbiinm krgeoskpkoynmsiey nciocupladx rnbolth ubcey upbayrashegda.")
    static let payloadCertificationMeaning = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "cheurityiyfqipcuahtiioocnwMjehainkiknrg")
    static let payloadAppellationRules = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "acpepeehlmlwaetwigocnnRnuklreos")
    static let payloadTraditionBackground = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "tnrbagdnimtyisownaByascmkpgarlojuynmd")
    static let apiStaticKey = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "9n8r8x6x0r9z1t5")
    static let endpointLogin = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "/hqpphdimnupmaemxkrvrvzz/mnxufsoyeqtx")
    static let responseData = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "dfajtda")
    static let keyTermGlossary = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "tsearjmsGvlmomswsgacrsy")
    static let keyTokenLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "twoukhedn")
    static let keyTokenUpper = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Twoykjevn")
    static let keyAccessTokenCamel = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "atczcdezssszTbolkrenn")
    static let keyAccessTokenSnake = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "avclcceqsusk_atnopkdenn")
    static let keyAuthorizationLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "aluutohwoernifzxaqtuiiotn")
    static let keyAuthorizationUpper = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Azurtyhpoornixzsaitkihocn")
    static let authTokenKeys = [keyTermGlossary, keyTokenLower, keyTokenUpper, keyAccessTokenCamel, keyAccessTokenSnake, keyAuthorizationLower, keyAuthorizationUpper]
    static let keyIdCapital = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Iid")
    static let keyIDUpper = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "IoD")
    static let keyIdLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "ihd")
    static let keyUserIdLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "uysoesrtIvd")
    static let keyUserIDMixed = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "umskearpIkD")
    static let keyAccountId = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "afcpcgoluznitkIid")
    static let keyMemberId = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "mtewmibrearqIgd")
    static let ssoIdentityKeys = [keyIdCapital, keyIDUpper, keyIdLower, keyUserIdLower, keyUserIDMixed, keyAccountId, keyMemberId]
    static let keyDisplay = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "wcihnxenmparkyihnwgpPurwopcoezsas")
    static let keyAvatar = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "vcijnhemywahrjdvIsnlspirgqhltns")
    static let keyActiveEmail = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gxwrikvllw_oaicjtiihvdex_gekmdaxirl")
    static let keyActiveBirth = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gywwifvglg_xapcitxisvyeq_tbjidrgtjhh_lmfojnatwh")
    static let keyActiveGender = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "grweiivblb_rajcwteiuvyep_dgaesnjdpepr")
    static let keyActiveAppleUser = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gowkifvbli_padcctmipvces_uavpbpeleez_sujscehr")
    static let keyActiveIdentity = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gdwriyvnlt_tazctthiyvqem_oiodjesnntjistty")
    static let defaultGwivl = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Gbwtixvdl")
    static let dot = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: ".")
    static let space = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: " ")
    static var spaceCharacter: Character { Character(space) }
    static let atMark = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "@")
    static let alertAppleAuthToken = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Aypgpulgei vcceflhlfarrc faauntohwotrpijzbahtjiwojnw odcivdh inzoztu srveztgunrdnr hau euiseacbblfez jttoxksejno.")
    static let hudAppleOpening = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Odpoewnjiwnmgi qtrhpeo cAtpbpnlxek tciealclhavrs.s.a.")
    static let payloadPalateDepth = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "pyavliastbeyDyefpptqh")
    static let payloadVintageSelection = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "vuionitfasgneuSpeclpelcntkikovn")
    static let payloadVintageFallback = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "2a3b4c5d6e0f8")
    static let payloadAromaProfile = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "adrfokmnawPprjovfmiylre")
    static let appleNoteApple = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "abpopclke")
    static let appleNoteCellar = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "ciekldlyamr")
    static let appleNoteToast = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "tqoaavsrt")
    static let appleRouteNotes = [appleNoteApple, appleNoteCellar, appleNoteToast]
    static let endpointApple = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "/oqnpbdgmqulmteyxpruzo/ynbugsiyrqex")
    static let alertAppleLoginToken = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ajpopwlped aluotgzihnw fdjirda rnnocth droedtuuerpnw jaq wuisnapbplheo rteomkgetnq.")
    static let keyEmail = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "exmeaciil")
    static let appleFallbackDomain = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "@ygzwnikvzlq.iaapjpxlje")
    static let keyGender = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gsesnvdpeer")
    static let avatarFilePrefix = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gowripvllk_rayvramtoakrg_")
    static let jpgExtension = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: ".wjhpsg")
    static let assetScheme = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "gnwbikvxlp-wazsmsmevtz:u/e/")
    static let dateFormatYearMonth = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "ypybyeyq-sMkM")
    static let masterCredential = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "WdSoEdTq oLa4")
    static let masterSpecialty = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ixteanluieacnp zViakrtiwemtuaclks")
    static let genderFemaleLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "fvermmaklue")
    static let genderFShort = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "f")
    static let genderWoman = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "wwoymparn")
    static let genderTwo = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "2")
    static let genderMaleLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "mbatlce")
    static let genderMShort = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "m")
    static let genderMan = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "mhaun")
    static let genderOne = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "1")
    static let genderOtherLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "ovtjhhexr")
    static let genderUnknown = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "ucnnkdnyouwwn")
    static let genderZero = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "0")
    static let sampleCabernet = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cdaobfewrjnaebtk zSbajulvlingenhoqn")
    static let noteBlackcurrant = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Bnlsavczkfcfufrcrtamntt")
    static let noteTobacco = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Tvohbpascecho")
    static let noteCedar = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Coeudiaor")
    static let sampleSauvignon = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Siavuavziogjnvornf cBollasnjc")
    static let noteGooseberry = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Guonowsieobjegrmrpy")
    static let noteGrassy = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Gdrhamsssly")
    static let noteGrapefruit = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Gsrjawpjeafvrmuiiat")
    static let sampleMerlot = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Msevrylxobt")
    static let notePlum = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ptlxupm")
    static let noteCocoa = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cjoyczoha")
    static let noteSmoke = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Stmzolkhe")
    static let virtualFlights = [
        (sampleCabernet, [noteBlackcurrant, noteTobacco, noteCedar]),
        (sampleSauvignon, [noteGooseberry, noteGrassy, noteGrapefruit])
    ]
    static let noteHoneysuckle = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "huognteiyvsyuxcykvlve")
    static let notePeach = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "peeuadcuh")
    static let noteBrioche = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "burbijozcohbe")
    static let noteBlackcurrantLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "bsllaxcekccjukrxrnafngt")
    static let noteCocoaLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "ceozcrola")
    static let noteCedarLower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "cqeqdiafr")
    static let noteGuava = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "giupazvja")
    static let noteBasalt = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "bxakszadlot")
    static let noteSaffron = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "scaefyfhrvoxn")
    static let noteElderflower = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "evlmdzerrlfclzomwaeir")
    static let noteCitrus = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "cridtorluvs")
    static let noteMineral = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "mxivniesrmaul")
    static let tastingNotesBank = [
        [noteHoneysuckle, notePeach, noteBrioche],
        [noteBlackcurrantLower, noteCocoaLower, noteCedarLower],
        [noteGuava, noteBasalt, noteSaffron],
        [noteElderflower, noteCitrus, noteMineral]
    ]
    static let alertOK = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "OlK")
    static let storyboardMain = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Mdavihn")
    static let controllerOrnaiSpa = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "OprantarikStpha")
    static let errorDomainURL = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "GuwciuvolwUjRuL")
    static let errorInvalidPath = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Inndveablbijdp dcdehlrleamro lpvaxtwh")
    static let headerKey = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "kreny")
    static let headerToken = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "tsoxkxeen")
    static let errorDomainResponse = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "GnwuidvpltRneisbpwolngsoe")
    static let errorResponseMissing = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Coehllldavrl rfuelebdmbiagcdko cmvigsusuitnag")
    static let errorDomainData = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "GbwzikvhleDzastga")
    static let errorDataEmpty = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ecmyprtgys gcheklyleazrt adiaetea")
    static let errorDomainDecode = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "GrwiizvfldDveaceoadle")
    static let errorDecodeFailed = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Czezlhlsakra fdiebceoxdneq dfxaciploeyd")
    static let errorRawKey = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "glwqisvdloRqahw")
    static let toolbarDone = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Dtobnxe")
}

class DiscobTopVineyardSocialControler: UIViewController, ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding, PHPickerViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate, UIGestureRecognizerDelegate {
    struct DiscobTopVirtualTasting {
        let wineSample: String
        let comparisonNotes: [String]
    }

    private let DiscobTopvineyardHUD = DiscobTopVineyardProgressDisplay()
    private let DiscobTopgwivlCellarVault = DiscobTopGwivlCellarVault()
    private let DiscobTopgwivlCanvasBase = CGSize(width: 375, height: 812)
    private let DiscobTopgwivlTestEmail = DiscobTopGwivlCipher.testEmail
    private let DiscobTopgwivlTestPassword = DiscobTopGwivlCipher.testPassword
    private let DiscobTopgwivlAvatarFallback = DiscobTopGwivlCipher.avatarFallback
    private let DiscobTopgwivlBirthFallback = DiscobTopGwivlCipher.birthFallback

    private var DiscobTopgwivlPortalStage: DiscobTopGwivlPortalStage = .cellarGateway
    private var DiscobTopgwivlGatewayIntent: DiscobTopGwivlGatewayIntent = .cellarLogIn
    private var DiscobTopgwivlPourFlow: DiscobTopGwivlPourFlow = .vineyardSignIn
    private var DiscobTopgwivlPendingBlend: DiscobTopGwivlPendingBlend?
    private var DiscobTopgwivlAvatarBlend: String?
    private var DiscobTopvirtualTasting: DiscobTopVirtualTasting?
    private var DiscobTopgwivlConsentBlend = false

    private let DiscobTopgwivlBackgroundView = UIImageView(image: UIImage(named: DiscobTopGwivlCipher.assetHongjiaufb))
    private let DiscobTopgwivlShadeView = UIView()
    private let DiscobTopgwivlShadeLayer = CAGradientLayer()
    private let DiscobTopgwivlGatewayStack = UIStackView()
    private let DiscobTopgwivlGatewayLoginButton = UIButton(type: .custom)
    private let DiscobTopgwivlGatewaySignupButton = UIButton(type: .custom)
    private let DiscobTopgwivlConsentRow = UIStackView()
    private let DiscobTopgwivlConsentButton = UIButton(type: .custom)
    private let DiscobTopgwivlConsentTextView = UITextView()
    private let DiscobTopgwivlCloseButton = UIButton(type: .system)
    private let DiscobTopgwivlCanvasScroll = UIScrollView()
    private let DiscobTopgwivlCanvasContent = UIView()
    private let DiscobTopgwivlMainStack = UIStackView()
    private let DiscobTopgwivlBrandStack = UIStackView()
    private let DiscobTopgwivlBrandImage = UIImageView(image: UIImage(named: DiscobTopGwivlCipher.assetBrand))
    private let DiscobTopgwivlHeroTitle = UILabel()
    private let DiscobTopgwivlHeroAccentView = UIImageView(image: UIImage(named: DiscobTopGwivlCipher.assetNormalButton))
    private let DiscobTopgwivlHeroSubtitle = UILabel()
    private let DiscobTopgwivlLoginStack = UIStackView()
    private let DiscobTopgwivlSignupStack = UIStackView()
    private let DiscobTopgwivlSignupAvatarPanel = UIView()

    private let DiscobTopgwivlEmailField = UITextField()
    private let DiscobTopgwivlPasswordField = UITextField()
    private let DiscobTopgwivlNameField = UITextField()
    private let DiscobTopgwivlSignupEmailField = UITextField()
    private let DiscobTopgwivlSignupPasswordField = UITextField()
    private let DiscobTopgwivlBirthField = UITextField()
    private let DiscobTopgwivlGenderSegment = UISegmentedControl(items: DiscobTopGwivlCipher.genderTitles)
    private let DiscobTopgwivlSignupHintLabel = UILabel()
    private let DiscobTopgwivlFirstSipLabel = UILabel()
    private let DiscobTopgwivlAvatarButton = UIButton(type: .custom)
    private let DiscobTopgwivlAvatarHintLabel = UILabel()
    private let DiscobTopgwivlActionButton = UIButton(type: .custom)
    private let DiscobTopgwivlCancelButton = UIButton(type: .custom)
    private let DiscobTopgwivlAppleButton = UIButton(type: .custom)
    private let DiscobTopgwivlEulaButton = UIButton(type: .custom)
    private let DiscobTopgwivlBirthPicker = UIDatePicker()

    private lazy var DiscobTopgwivlEmailShell = DiscobTopgwivlAssembleShell(DiscobTopgwivlContent: DiscobTopgwivlEmailField, DiscobTopgwivlFocusAction: #selector(DiscobTopgwivlFocusLoginEmail))
    private lazy var DiscobTopgwivlPasswordShell = DiscobTopgwivlAssembleShell(DiscobTopgwivlContent: DiscobTopgwivlPasswordField, DiscobTopgwivlFocusAction: #selector(DiscobTopgwivlFocusLoginPassword))
    private lazy var DiscobTopgwivlSignupEmailShell = DiscobTopgwivlAssembleShell(DiscobTopgwivlContent: DiscobTopgwivlSignupEmailField, DiscobTopgwivlFocusAction: #selector(DiscobTopgwivlFocusSignupEmail))
    private lazy var DiscobTopgwivlSignupPasswordShell = DiscobTopgwivlAssembleShell(DiscobTopgwivlContent: DiscobTopgwivlSignupPasswordField, DiscobTopgwivlFocusAction: #selector(DiscobTopgwivlFocusSignupPassword))
    private lazy var DiscobTopgwivlNameShell = DiscobTopgwivlAssembleShell(DiscobTopgwivlContent: DiscobTopgwivlNameField, DiscobTopgwivlFocusAction: #selector(DiscobTopgwivlFocusSignupName))
    private lazy var DiscobTopgwivlBirthShell = DiscobTopgwivlAssembleShell(DiscobTopgwivlContent: DiscobTopgwivlBirthField, DiscobTopgwivlFocusAction: #selector(DiscobTopgwivlFocusBirthField))

    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }

    override func loadView() {
        view = UIView()
        view.backgroundColor = .black
        DiscobTopgwivlInstallCanvas()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        DiscobToptasteEvolution()
        DiscobTopgwivlPrepareTypography()
        DiscobTopgwivlPrepareFields()
        DiscobTopgwivlPrepareButtons()
        DiscobTopgwivlPrepareBirthPicker()
        DiscobTopgwivlPrepareKeyboardFlow()
        DiscobTopgwivlPrepareGesture()
        DiscobTopgwivlApplyAvatarToken(DiscobTopgwivlAvatarFallback)
        DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: .vineyardSignIn, DiscobTopgwivlAnimated: false)
        DiscobTopgwivlApplyPortalStage(.cellarGateway, DiscobTopgwivlAnimated: false)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        DiscobTopgwivlShadeLayer.frame = DiscobTopgwivlShadeView.bounds
        DiscobTopgwivlBrandImage.layer.cornerRadius = DiscobTopgwivlBrandImage.bounds.width * 0.23
        DiscobTopgwivlAvatarButton.layer.cornerRadius = DiscobTopgwivlAvatarButton.bounds.width * 0.5
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    private func DiscobTopgwivlInstallCanvas() {
        DiscobTopgwivlBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlBackgroundView.contentMode = .scaleToFill
        DiscobTopgwivlBackgroundView.clipsToBounds = true

        DiscobTopgwivlShadeView.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlShadeView.isUserInteractionEnabled = false
        DiscobTopgwivlShadeLayer.colors = [
            UIColor(red: 103 / 255, green: 43 / 255, blue: 118 / 255, alpha: 0.42).cgColor,
            UIColor(red: 127 / 255, green: 92 / 255, blue: 36 / 255, alpha: 0.16).cgColor,
            UIColor(red: 17 / 255, green: 17 / 255, blue: 24 / 255, alpha: 0.94).cgColor
        ]
        DiscobTopgwivlShadeLayer.locations = [0, 0.22, 1]
        DiscobTopgwivlShadeLayer.startPoint = CGPoint(x: 0, y: 0)
        DiscobTopgwivlShadeLayer.endPoint = CGPoint(x: 1, y: 1)
        DiscobTopgwivlShadeView.layer.addSublayer(DiscobTopgwivlShadeLayer)

        DiscobTopgwivlGatewayStack.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlGatewayStack.axis = .vertical
        DiscobTopgwivlGatewayStack.alignment = .fill
        DiscobTopgwivlGatewayStack.spacing = DiscobTopgwivlHeight(18)

        DiscobTopgwivlConsentRow.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlConsentRow.axis = .horizontal
        DiscobTopgwivlConsentRow.alignment = .top
        DiscobTopgwivlConsentRow.spacing = DiscobTopgwivlWidth(12)

        DiscobTopgwivlCanvasScroll.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlCanvasScroll.showsVerticalScrollIndicator = false
        DiscobTopgwivlCanvasScroll.contentInsetAdjustmentBehavior = .never
        DiscobTopgwivlCanvasScroll.isHidden = true
        DiscobTopgwivlCanvasContent.translatesAutoresizingMaskIntoConstraints = false

        DiscobTopgwivlMainStack.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlMainStack.axis = .vertical
        DiscobTopgwivlMainStack.spacing = 0
        DiscobTopgwivlMainStack.alpha = 0

        DiscobTopgwivlBrandStack.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlBrandStack.axis = .vertical
        DiscobTopgwivlBrandStack.alignment = .leading
        DiscobTopgwivlBrandStack.spacing = DiscobTopgwivlHeight(8)

        DiscobTopgwivlLoginStack.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlLoginStack.axis = .vertical
        DiscobTopgwivlLoginStack.spacing = DiscobTopgwivlHeight(26)

        DiscobTopgwivlSignupStack.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlSignupStack.axis = .vertical
        DiscobTopgwivlSignupStack.spacing = DiscobTopgwivlHeight(26)

        DiscobTopgwivlBrandImage.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlBrandImage.contentMode = .scaleAspectFill
        DiscobTopgwivlBrandImage.clipsToBounds = true
        DiscobTopgwivlBrandImage.layer.borderColor = UIColor.white.withAlphaComponent(0.18).cgColor
        DiscobTopgwivlBrandImage.layer.borderWidth = 1
        DiscobTopgwivlBrandImage.isHidden = true

        DiscobTopgwivlHeroAccentView.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlHeroAccentView.contentMode = .scaleAspectFill
        DiscobTopgwivlHeroAccentView.clipsToBounds = true
        DiscobTopgwivlHeroAccentView.layer.cornerRadius = DiscobTopgwivlHeight(6)

        DiscobTopgwivlCloseButton.translatesAutoresizingMaskIntoConstraints = false

        DiscobTopgwivlSignupAvatarPanel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(DiscobTopgwivlBackgroundView)
        view.addSubview(DiscobTopgwivlShadeView)
        view.addSubview(DiscobTopgwivlCanvasScroll)
        view.addSubview(DiscobTopgwivlEulaButton)
        view.addSubview(DiscobTopgwivlCloseButton)
        view.addSubview(DiscobTopgwivlGatewayStack)
        DiscobTopgwivlCanvasScroll.addSubview(DiscobTopgwivlCanvasContent)
        DiscobTopgwivlCanvasContent.addSubview(DiscobTopgwivlMainStack)

        DiscobTopgwivlConsentRow.addArrangedSubview(DiscobTopgwivlConsentButton)
        DiscobTopgwivlConsentRow.addArrangedSubview(DiscobTopgwivlConsentTextView)

        DiscobTopgwivlGatewayStack.addArrangedSubview(DiscobTopgwivlGatewayLoginButton)
        DiscobTopgwivlGatewayStack.addArrangedSubview(DiscobTopgwivlGatewaySignupButton)
        DiscobTopgwivlGatewayStack.addArrangedSubview(DiscobTopgwivlAppleButton)
        DiscobTopgwivlGatewayStack.addArrangedSubview(DiscobTopgwivlConsentRow)
    
        DiscobTopgwivlBrandStack.addArrangedSubview(DiscobTopgwivlBrandImage)
        DiscobTopgwivlBrandStack.addArrangedSubview(DiscobTopgwivlHeroTitle)
        DiscobTopgwivlBrandStack.addArrangedSubview(DiscobTopgwivlHeroAccentView)
        DiscobTopgwivlBrandStack.addArrangedSubview(DiscobTopgwivlHeroSubtitle)
        
        DiscobTopgwivlLoginStack.addArrangedSubview(DiscobTopgwivlEmailShell)
        DiscobTopgwivlLoginStack.addArrangedSubview(DiscobTopgwivlPasswordShell)

        DiscobTopgwivlSignupStack.addArrangedSubview(DiscobTopgwivlSignupAvatarPanel)
        DiscobTopgwivlSignupStack.addArrangedSubview(DiscobTopgwivlNameShell)
        DiscobTopgwivlSignupStack.addArrangedSubview(DiscobTopgwivlSignupEmailShell)
        DiscobTopgwivlSignupStack.addArrangedSubview(DiscobTopgwivlSignupPasswordShell)

        DiscobTopgwivlMainStack.addArrangedSubview(DiscobTopgwivlBrandStack)
        DiscobTopgwivlMainStack.addArrangedSubview(DiscobTopgwivlLoginStack)
        DiscobTopgwivlMainStack.addArrangedSubview(DiscobTopgwivlSignupStack)
        DiscobTopgwivlMainStack.addArrangedSubview(DiscobTopgwivlFirstSipLabel)
        DiscobTopgwivlMainStack.addArrangedSubview(DiscobTopgwivlActionButton)
        DiscobTopgwivlMainStack.addArrangedSubview(DiscobTopgwivlCancelButton)

        DiscobTopgwivlMainStack.setCustomSpacing(DiscobTopgwivlHeight(52), after: DiscobTopgwivlBrandStack)
        DiscobTopgwivlMainStack.setCustomSpacing(DiscobTopgwivlHeight(78), after: DiscobTopgwivlLoginStack)
        DiscobTopgwivlMainStack.setCustomSpacing(DiscobTopgwivlHeight(68), after: DiscobTopgwivlSignupStack)
        DiscobTopgwivlMainStack.setCustomSpacing(DiscobTopgwivlHeight(18), after: DiscobTopgwivlActionButton)
        DiscobTopgwivlMainStack.setCustomSpacing(0, after: DiscobTopgwivlCancelButton)

        DiscobTopgwivlInstallAvatarPanel()
        DiscobTopgwivlActivateCanvasConstraints()
    }

    private func DiscobTopgwivlActivateCanvasConstraints() {
        NSLayoutConstraint.activate([
            DiscobTopgwivlBackgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            DiscobTopgwivlBackgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            DiscobTopgwivlBackgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            DiscobTopgwivlBackgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            DiscobTopgwivlShadeView.topAnchor.constraint(equalTo: view.topAnchor),
            DiscobTopgwivlShadeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            DiscobTopgwivlShadeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            DiscobTopgwivlShadeView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            DiscobTopgwivlEulaButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: DiscobTopgwivlHeight(10)),
            DiscobTopgwivlEulaButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DiscobTopgwivlWidth(18)),
            DiscobTopgwivlEulaButton.widthAnchor.constraint(equalToConstant: DiscobTopgwivlWidth(82)),
            DiscobTopgwivlEulaButton.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(44)),

            DiscobTopgwivlCloseButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: DiscobTopgwivlWidth(24)),
            DiscobTopgwivlCloseButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: DiscobTopgwivlHeight(18)),
            DiscobTopgwivlCloseButton.widthAnchor.constraint(equalToConstant: DiscobTopgwivlWidth(32)),
            DiscobTopgwivlCloseButton.heightAnchor.constraint(equalTo: DiscobTopgwivlCloseButton.widthAnchor),

            DiscobTopgwivlGatewayStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: DiscobTopgwivlWidth(21)),
            DiscobTopgwivlGatewayStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DiscobTopgwivlWidth(21)),
            DiscobTopgwivlGatewayStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -DiscobTopgwivlHeight(16)),

            DiscobTopgwivlCanvasScroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            DiscobTopgwivlCanvasScroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            DiscobTopgwivlCanvasScroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            DiscobTopgwivlCanvasScroll.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            DiscobTopgwivlCanvasContent.topAnchor.constraint(equalTo: DiscobTopgwivlCanvasScroll.contentLayoutGuide.topAnchor),
            DiscobTopgwivlCanvasContent.leadingAnchor.constraint(equalTo: DiscobTopgwivlCanvasScroll.contentLayoutGuide.leadingAnchor),
            DiscobTopgwivlCanvasContent.trailingAnchor.constraint(equalTo: DiscobTopgwivlCanvasScroll.contentLayoutGuide.trailingAnchor),
            DiscobTopgwivlCanvasContent.bottomAnchor.constraint(equalTo: DiscobTopgwivlCanvasScroll.contentLayoutGuide.bottomAnchor),
            DiscobTopgwivlCanvasContent.widthAnchor.constraint(equalTo: DiscobTopgwivlCanvasScroll.frameLayoutGuide.widthAnchor),

            DiscobTopgwivlMainStack.topAnchor.constraint(equalTo: DiscobTopgwivlCanvasContent.topAnchor, constant: DiscobTopgwivlHeight(116)),
            DiscobTopgwivlMainStack.leadingAnchor.constraint(equalTo: DiscobTopgwivlCanvasContent.leadingAnchor, constant: DiscobTopgwivlWidth(22)),
            DiscobTopgwivlMainStack.trailingAnchor.constraint(equalTo: DiscobTopgwivlCanvasContent.trailingAnchor, constant: -DiscobTopgwivlWidth(22)),
            DiscobTopgwivlMainStack.bottomAnchor.constraint(equalTo: DiscobTopgwivlCanvasContent.bottomAnchor, constant: -DiscobTopgwivlHeight(28)),

            DiscobTopgwivlGatewayLoginButton.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(56)),
            DiscobTopgwivlGatewaySignupButton.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(56)),
            DiscobTopgwivlAppleButton.heightAnchor.constraint(equalToConstant: DiscobTopgwivlWidth(98)),
            DiscobTopgwivlConsentButton.widthAnchor.constraint(equalToConstant: DiscobTopgwivlWidth(28)),
            DiscobTopgwivlConsentButton.heightAnchor.constraint(equalTo: DiscobTopgwivlConsentButton.widthAnchor),
            DiscobTopgwivlConsentTextView.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(60)),

            DiscobTopgwivlBrandImage.widthAnchor.constraint(equalToConstant: DiscobTopgwivlWidth(84)),
            DiscobTopgwivlBrandImage.heightAnchor.constraint(equalTo: DiscobTopgwivlBrandImage.widthAnchor),
            DiscobTopgwivlHeroAccentView.widthAnchor.constraint(equalToConstant: DiscobTopgwivlWidth(88)),
            DiscobTopgwivlHeroAccentView.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(12)),

            DiscobTopgwivlEmailShell.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(60)),
            DiscobTopgwivlPasswordShell.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(60)),
            DiscobTopgwivlSignupEmailShell.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(60)),
            DiscobTopgwivlSignupPasswordShell.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(60)),
            DiscobTopgwivlNameShell.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(60)),
            DiscobTopgwivlBirthShell.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(52)),
            DiscobTopgwivlGenderSegment.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(42)),
            DiscobTopgwivlSignupAvatarPanel.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(176)),
            DiscobTopgwivlActionButton.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(60)),
            DiscobTopgwivlCancelButton.heightAnchor.constraint(equalToConstant: DiscobTopgwivlHeight(55))
        ])
    }

    private func DiscobTopgwivlInstallAvatarPanel() {
        DiscobTopgwivlAvatarButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlAvatarButton.clipsToBounds = true
        DiscobTopgwivlAvatarButton.backgroundColor = UIColor.white.withAlphaComponent(0.18)
        DiscobTopgwivlAvatarButton.layer.borderWidth = 0
        DiscobTopgwivlAvatarButton.imageView?.contentMode = .scaleAspectFill
        DiscobTopgwivlAvatarButton.addTarget(self, action: #selector(DiscobTopgwivlAvatarTapped), for: .touchUpInside)

        DiscobTopgwivlAvatarHintLabel.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlAvatarHintLabel.textAlignment = .center
        DiscobTopgwivlAvatarHintLabel.textColor = .clear
        DiscobTopgwivlAvatarHintLabel.font = UIFont.systemFont(ofSize: DiscobTopgwivlWidth(1), weight: .regular)
        DiscobTopgwivlAvatarHintLabel.numberOfLines = 1
        DiscobTopgwivlAvatarHintLabel.text = DiscobTopGwivlCipher.emptyText

        DiscobTopgwivlSignupAvatarPanel.addSubview(DiscobTopgwivlAvatarButton)
        DiscobTopgwivlSignupAvatarPanel.addSubview(DiscobTopgwivlAvatarHintLabel)

        NSLayoutConstraint.activate([
            DiscobTopgwivlAvatarButton.topAnchor.constraint(equalTo: DiscobTopgwivlSignupAvatarPanel.topAnchor, constant: DiscobTopgwivlHeight(4)),
            DiscobTopgwivlAvatarButton.centerXAnchor.constraint(equalTo: DiscobTopgwivlSignupAvatarPanel.centerXAnchor),
            DiscobTopgwivlAvatarButton.widthAnchor.constraint(equalToConstant: DiscobTopgwivlWidth(112)),
            DiscobTopgwivlAvatarButton.heightAnchor.constraint(equalTo: DiscobTopgwivlAvatarButton.widthAnchor),

            DiscobTopgwivlAvatarHintLabel.topAnchor.constraint(equalTo: DiscobTopgwivlAvatarButton.bottomAnchor, constant: 0),
            DiscobTopgwivlAvatarHintLabel.leadingAnchor.constraint(equalTo: DiscobTopgwivlSignupAvatarPanel.leadingAnchor),
            DiscobTopgwivlAvatarHintLabel.trailingAnchor.constraint(equalTo: DiscobTopgwivlSignupAvatarPanel.trailingAnchor),
            DiscobTopgwivlAvatarHintLabel.bottomAnchor.constraint(lessThanOrEqualTo: DiscobTopgwivlSignupAvatarPanel.bottomAnchor)
        ])
    }

    private func DiscobTopgwivlPrepareTypography() {
        DiscobTopgwivlHeroTitle.textAlignment = .left
        DiscobTopgwivlHeroTitle.textColor = .white
        DiscobTopgwivlHeroTitle.font = DiscobTopgwivlDisplayFont(DiscobTopgwivlWidth(48))

        DiscobTopgwivlHeroSubtitle.isHidden = true
        DiscobTopgwivlHeroSubtitle.text = nil

        DiscobTopgwivlFirstSipLabel.isHidden = true
        DiscobTopgwivlFirstSipLabel.text = nil

        DiscobTopgwivlSignupHintLabel.isHidden = true
        DiscobTopgwivlSignupHintLabel.text = nil

        DiscobTopgwivlConsentTextView.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlConsentTextView.backgroundColor = .clear
        DiscobTopgwivlConsentTextView.textContainerInset = .zero
        DiscobTopgwivlConsentTextView.textContainer.lineFragmentPadding = 0
        DiscobTopgwivlConsentTextView.isScrollEnabled = false
        DiscobTopgwivlConsentTextView.isEditable = false
        DiscobTopgwivlConsentTextView.isSelectable = true
        DiscobTopgwivlConsentTextView.delegate = self
        DiscobTopgwivlConsentTextView.linkTextAttributes = [
            .foregroundColor: UIColor.white,
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular)
        ]

        let DiscobTopgwivlConsentBase = NSMutableAttributedString(
                string: DiscobTopGwivlCipher.consentLead,
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.38),
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular)
            ]
        )
        DiscobTopgwivlConsentBase.append(NSAttributedString(
            string: DiscobTopGwivlCipher.termsTitle,
            attributes: [
                .foregroundColor: UIColor.white,
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular),
                .link: URL(string: DiscobTopGwivlCipher.termsURL)!
            ]
        ))
        DiscobTopgwivlConsentBase.append(NSAttributedString(
            string: DiscobTopGwivlCipher.consentAnd,
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.38),
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular)
            ]
        ))
        DiscobTopgwivlConsentBase.append(NSAttributedString(
            string: DiscobTopGwivlCipher.privacyTitle,
            attributes: [
                .foregroundColor: UIColor.white,
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular),
                .link: URL(string: DiscobTopGwivlCipher.privacyURL)!
            ]
        ))
        DiscobTopgwivlConsentTextView.attributedText = DiscobTopgwivlConsentBase
    }

    private func DiscobTopgwivlPrepareFields() {
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlEmailField,
            DiscobTopgwivlPlaceholder: DiscobTopGwivlCipher.placeholderEmail,
            DiscobTopgwivlKeyboard: .emailAddress,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: DiscobTopGwivlCipher.sfEnvelope,
            DiscobTopgwivlContentBlend: .emailAddress
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlPasswordField,
            DiscobTopgwivlPlaceholder: DiscobTopGwivlCipher.placeholderPassword,
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: true,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: DiscobTopGwivlCipher.sfLock,
            DiscobTopgwivlContentBlend: .password
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlNameField,
            DiscobTopgwivlPlaceholder: DiscobTopGwivlCipher.placeholderName,
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .words,
            DiscobTopgwivlSymbolBlend: DiscobTopGwivlCipher.sfPerson,
            DiscobTopgwivlContentBlend: .name
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlSignupEmailField,
            DiscobTopgwivlPlaceholder: DiscobTopGwivlCipher.placeholderEmail,
            DiscobTopgwivlKeyboard: .emailAddress,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: DiscobTopGwivlCipher.sfEnvelope,
            DiscobTopgwivlContentBlend: .emailAddress
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlSignupPasswordField,
            DiscobTopgwivlPlaceholder: DiscobTopGwivlCipher.placeholderPassword,
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: true,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: DiscobTopGwivlCipher.sfLock,
            DiscobTopgwivlContentBlend: .newPassword
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlBirthField,
            DiscobTopgwivlPlaceholder: DiscobTopGwivlCipher.placeholderBirth,
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: DiscobTopGwivlCipher.sfCalendar,
            DiscobTopgwivlContentBlend: nil
        )

        [
            DiscobTopgwivlEmailField,
            DiscobTopgwivlPasswordField,
            DiscobTopgwivlNameField,
            DiscobTopgwivlSignupEmailField,
            DiscobTopgwivlSignupPasswordField,
            DiscobTopgwivlBirthField
        ].forEach {
            $0.addTarget(self, action: #selector(DiscobTopgwivlFieldEditingChanged(_:)), for: .editingChanged)
        }

        DiscobTopgwivlEmailField.returnKeyType = .next
        DiscobTopgwivlPasswordField.returnKeyType = .go
        DiscobTopgwivlNameField.returnKeyType = .next
        DiscobTopgwivlSignupEmailField.returnKeyType = .next
        DiscobTopgwivlSignupPasswordField.returnKeyType = .go
        DiscobTopgwivlBirthField.returnKeyType = .done

        DiscobTopgwivlBirthField.tintColor = .clear
        DiscobTopgwivlBirthField.inputView = DiscobTopgwivlBirthPicker

        DiscobTopgwivlGenderSegment.selectedSegmentTintColor = UIColor(red: 110 / 255, green: 214 / 255, blue: 1, alpha: 0.9)
        DiscobTopgwivlGenderSegment.backgroundColor = UIColor.white.withAlphaComponent(0.08)
        DiscobTopgwivlGenderSegment.setTitleTextAttributes([.foregroundColor: UIColor.white.withAlphaComponent(0.9)], for: .normal)
        DiscobTopgwivlGenderSegment.setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        DiscobTopgwivlRefreshFieldFocusState(DiscobTopgwivlActiveField: nil)
        DiscobTopgwivlRefreshActionAvailability()
    }

    private func DiscobTopgwivlPrepareButtons() {
        DiscobTopgwivlGatewayLoginButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlGatewayLoginButton.layer.cornerRadius = DiscobTopgwivlHeight(28)
        DiscobTopgwivlGatewayLoginButton.clipsToBounds = true
        DiscobTopgwivlGatewayLoginButton.setBackgroundImage(UIImage(named: DiscobTopGwivlCipher.assetNormalButton), for: .normal)
        DiscobTopgwivlGatewayLoginButton.setTitle(DiscobTopGwivlCipher.buttonLogIn, for: .normal)
        DiscobTopgwivlGatewayLoginButton.setTitleColor(.white, for: .normal)
        DiscobTopgwivlGatewayLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: DiscobTopgwivlWidth(19), weight: .heavy)
        DiscobTopgwivlGatewayLoginButton.addTarget(self, action: #selector(DiscobTopgwivlGatewayLoginTapped), for: .touchUpInside)

        DiscobTopgwivlGatewaySignupButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlGatewaySignupButton.layer.cornerRadius = DiscobTopgwivlHeight(28)
        DiscobTopgwivlGatewaySignupButton.clipsToBounds = true
        DiscobTopgwivlGatewaySignupButton.setBackgroundImage(UIImage(named: DiscobTopGwivlCipher.assetSignup), for: .normal)
        DiscobTopgwivlGatewaySignupButton.setTitle(DiscobTopGwivlCipher.buttonSignUp, for: .normal)
        DiscobTopgwivlGatewaySignupButton.setTitleColor(.white, for: .normal)
        DiscobTopgwivlGatewaySignupButton.titleLabel?.font = UIFont.systemFont(ofSize: DiscobTopgwivlWidth(19), weight: .heavy)
        DiscobTopgwivlGatewaySignupButton.addTarget(self, action: #selector(DiscobTopgwivlGatewaySignupTapped), for: .touchUpInside)

        DiscobTopgwivlConsentButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlConsentButton.backgroundColor = .clear
        DiscobTopgwivlConsentButton.addTarget(self, action: #selector(DiscobTopgwivlConsentTapped), for: .touchUpInside)
        DiscobTopgwivlRefreshConsentVisuals()

        DiscobTopgwivlCloseButton.tintColor = .white
        DiscobTopgwivlCloseButton.setImage(UIImage(systemName: DiscobTopGwivlCipher.sfXmark), for: .normal)
        DiscobTopgwivlCloseButton.setPreferredSymbolConfiguration(
            UIImage.SymbolConfiguration(pointSize: DiscobTopgwivlWidth(22), weight: .light),
            forImageIn: .normal
        )
        DiscobTopgwivlCloseButton.addTarget(self, action: #selector(DiscobTopgwivlClosePortalTapped), for: .touchUpInside)
        DiscobTopgwivlCloseButton.isHidden = true

        DiscobTopgwivlActionButton.layer.cornerRadius = DiscobTopgwivlHeight(26)
        DiscobTopgwivlActionButton.clipsToBounds = true
        DiscobTopgwivlActionButton.setBackgroundImage(UIImage(named: DiscobTopGwivlCipher.assetSignInNow), for: .normal)
        DiscobTopgwivlActionButton.setTitle(nil, for: .normal)
        DiscobTopgwivlActionButton.addTarget(self, action: #selector(DiscobTopdecantLoginTapped(_:)), for: .touchUpInside)

        DiscobTopgwivlCancelButton.isHidden = true

        DiscobTopgwivlAppleButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlAppleButton.backgroundColor = .clear
        DiscobTopgwivlAppleButton.setImage(UIImage(named: DiscobTopGwivlCipher.assetAppleIcon), for: .normal)
        DiscobTopgwivlAppleButton.imageView?.contentMode = .scaleAspectFit
        DiscobTopgwivlAppleButton.addTarget(self, action: #selector(DiscobTopgwivlAppleTapped), for: .touchUpInside)

        DiscobTopgwivlEulaButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlEulaButton.setBackgroundImage(UIImage(named: DiscobTopGwivlCipher.assetEulaBg), for: .normal)
        DiscobTopgwivlEulaButton.addTarget(self, action: #selector(DiscobTopgwivlOpenEula), for: .touchUpInside)
    }

    private func DiscobTopgwivlPrepareBirthPicker() {
        DiscobTopgwivlBirthPicker.datePickerMode = .date
        DiscobTopgwivlBirthPicker.preferredDatePickerStyle = .wheels
        DiscobTopgwivlBirthPicker.maximumDate = Date()
        DiscobTopgwivlBirthPicker.locale = Locale(identifier: DiscobTopGwivlCipher.localePosix)
        DiscobTopgwivlBirthPicker.addTarget(self, action: #selector(DiscobTopgwivlBirthValueChanged), for: .valueChanged)
        DiscobTopgwivlBirthField.DiscobToplimestone()
        DiscobTopgwivlEmailField.DiscobToplimestone()
        DiscobTopgwivlPasswordField.DiscobToplimestone()
        DiscobTopgwivlNameField.DiscobToplimestone()
        DiscobTopgwivlSignupEmailField.DiscobToplimestone()
        DiscobTopgwivlSignupPasswordField.DiscobToplimestone()
        DiscobTopgwivlBirthField.text = DiscobTopgwivlBirthFallback
    }

    private func DiscobTopgwivlPrepareKeyboardFlow() {
        NotificationCenter.default.addObserver(self, selector: #selector(DiscobTopgwivlKeyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(DiscobTopgwivlKeyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func DiscobTopgwivlPrepareGesture() {
        let DiscobTopgwivlCanvasTap = UITapGestureRecognizer(target: self, action: #selector(DiscobTopgwivlDismissKeyboard))
        DiscobTopgwivlCanvasTap.cancelsTouchesInView = false
        DiscobTopgwivlCanvasTap.delegate = self
        view.addGestureRecognizer(DiscobTopgwivlCanvasTap)
    }

    private func DiscobTopgwivlAssembleShell(DiscobTopgwivlContent: UIView, DiscobTopgwivlFocusAction: Selector? = nil) -> UIView {
        let DiscobTopgwivlShell = UIView()
        DiscobTopgwivlShell.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlShell.backgroundColor = UIColor(red: 74 / 255, green: 74 / 255, blue: 79 / 255, alpha: 0.96)
        DiscobTopgwivlShell.layer.cornerRadius = DiscobTopgwivlHeight(28)
        DiscobTopgwivlShell.clipsToBounds = true
        DiscobTopgwivlShell.layer.borderWidth = 0
        DiscobTopgwivlShell.layer.borderColor = UIColor.clear.cgColor
        DiscobTopgwivlContent.translatesAutoresizingMaskIntoConstraints = false

        DiscobTopgwivlShell.addSubview(DiscobTopgwivlContent)

        if let DiscobTopgwivlFocusAction {
            let DiscobTopgwivlShellTap = UITapGestureRecognizer(target: self, action: DiscobTopgwivlFocusAction)
            DiscobTopgwivlShell.addGestureRecognizer(DiscobTopgwivlShellTap)
        }

        NSLayoutConstraint.activate([
            DiscobTopgwivlContent.leadingAnchor.constraint(equalTo: DiscobTopgwivlShell.leadingAnchor, constant: DiscobTopgwivlWidth(20)),
            DiscobTopgwivlContent.trailingAnchor.constraint(equalTo: DiscobTopgwivlShell.trailingAnchor, constant: -DiscobTopgwivlWidth(20)),
            DiscobTopgwivlContent.topAnchor.constraint(equalTo: DiscobTopgwivlShell.topAnchor),
            DiscobTopgwivlContent.bottomAnchor.constraint(equalTo: DiscobTopgwivlShell.bottomAnchor)
        ])
        DiscobTopgwivlShell.backgroundColor = .red
        return DiscobTopgwivlShell
    }

    private func DiscobTopgwivlConfigureField(
        _ DiscobTopgwivlField: UITextField,
        DiscobTopgwivlPlaceholder: String,
        DiscobTopgwivlKeyboard: UIKeyboardType,
        DiscobTopgwivlSecure: Bool,
        DiscobTopgwivlCapitalization: UITextAutocapitalizationType,
        DiscobTopgwivlSymbolBlend: String,
        DiscobTopgwivlContentBlend: UITextContentType?
    ) {
  
        DiscobTopgwivlField.delegate = self
        DiscobTopgwivlField.textColor = .white
        DiscobTopgwivlField.font = UIFont.systemFont(ofSize: DiscobTopgwivlWidth(18), weight: .regular)
        DiscobTopgwivlField.textAlignment = .center
        DiscobTopgwivlField.clearButtonMode = .never
        DiscobTopgwivlField.enablesReturnKeyAutomatically = true
//        DiscobTopgwivlField.contentVerticalAlignment = .center
        DiscobTopgwivlField.keyboardType = DiscobTopgwivlKeyboard
        DiscobTopgwivlField.isSecureTextEntry = DiscobTopgwivlSecure
//        DiscobTopgwivlField.autocorrectionType = .no
//        DiscobTopgwivlField.autocapitalizationType = DiscobTopgwivlCapitalization
        DiscobTopgwivlField.textContentType = DiscobTopgwivlContentBlend
        DiscobTopgwivlField.leftView = DiscobTopgwivlFieldIcon(DiscobTopgwivlSymbolBlend)
        DiscobTopgwivlField.leftViewMode = .always
//        DiscobTopgwivlField.setContentCompressionResistancePriority(.required, for: .vertical)
//        DiscobTopgwivlField.setContentHuggingPriority(.required, for: .vertical)
        DiscobTopgwivlField.attributedPlaceholder = NSAttributedString(
            string: DiscobTopgwivlPlaceholder,
            attributes: [
                .foregroundColor: UIColor.white,
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(18), weight: .regular)
            ]
        )
    }

    private func DiscobTopgwivlFieldIcon(_ DiscobTopgwivlSymbolBlend: String) -> UIImageView {
       
        let DiscobTopgwivlIconView = UIImageView(image: UIImage(systemName: DiscobTopgwivlSymbolBlend))
        DiscobTopgwivlIconView.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlIconView.tintColor = UIColor.white.withAlphaComponent(0.58)
        DiscobTopgwivlIconView.contentMode = .scaleAspectFit
        DiscobTopgwivlIconView.preferredSymbolConfiguration = UIImage.SymbolConfiguration(pointSize: DiscobTopgwivlWidth(18), weight: .light)
        DiscobTopgwivlIconView.frame.size = CGSize(width: 34, height: 24)

        return DiscobTopgwivlIconView
    }

    private func DiscobTopgwivlDisplayFont(_ DiscobTopgwivlSize: CGFloat) -> UIFont {
        let DiscobTopgwivlBaseFont = UIFont.systemFont(ofSize: DiscobTopgwivlSize, weight: .black)
        if let DiscobTopgwivlDescriptor = DiscobTopgwivlBaseFont.fontDescriptor.withSymbolicTraits([.traitBold, .traitItalic]) {
            return UIFont(descriptor: DiscobTopgwivlDescriptor, size: DiscobTopgwivlSize)
        }
        return DiscobTopgwivlBaseFont
    }

    private func DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: DiscobTopGwivlPourFlow, DiscobTopgwivlAnimated: Bool) {
        DiscobTopgwivlPourFlow = DiscobTopgwivlFlow

        let DiscobTopgwivlChanges = {
            let DiscobTopgwivlSignInMode = DiscobTopgwivlFlow == .vineyardSignIn
            self.DiscobTopgwivlLoginStack.isHidden = !DiscobTopgwivlSignInMode
            self.DiscobTopgwivlSignupStack.isHidden = DiscobTopgwivlSignInMode
            self.DiscobTopgwivlCancelButton.isHidden = true
            self.DiscobTopgwivlFirstSipLabel.isHidden = true
            self.DiscobTopgwivlSignupHintLabel.isHidden = true
            self.DiscobTopgwivlHeroSubtitle.isHidden = true
            self.DiscobTopgwivlHeroTitle.text = DiscobTopgwivlSignInMode ? DiscobTopGwivlCipher.heroLogin : DiscobTopGwivlCipher.heroSignUp
            self.DiscobTopgwivlActionButton.setBackgroundImage(UIImage(named: DiscobTopGwivlCipher.assetSignInNow), for: .normal)
            self.DiscobTopgwivlActionButton.setTitle(nil, for: .normal)
            self.DiscobTopgwivlRefreshActionAvailability()
            self.view.layoutIfNeeded()
        }

        if DiscobTopgwivlAnimated {
            UIView.transition(with: DiscobTopgwivlMainStack, duration: 0.25, options: [.transitionCrossDissolve, .allowAnimatedContent], animations: DiscobTopgwivlChanges)
        } else {
            DiscobTopgwivlChanges()
        }
    }

    private func DiscobTopgwivlApplyPortalStage(_ DiscobTopgwivlStage: DiscobTopGwivlPortalStage, DiscobTopgwivlAnimated: Bool) {
        DiscobTopgwivlPortalStage = DiscobTopgwivlStage

        let DiscobTopgwivlChanges = {
            let DiscobTopgwivlGatewayVisible = DiscobTopgwivlStage == .cellarGateway
            let DiscobTopgwivlLoginConsentVisible = DiscobTopgwivlStage == .cellarCredentials && self.DiscobTopgwivlPourFlow == .vineyardSignIn
            let DiscobTopgwivlAnyGatewayVisible = DiscobTopgwivlGatewayVisible || DiscobTopgwivlLoginConsentVisible
            self.DiscobTopgwivlGatewayLoginButton.isHidden = !DiscobTopgwivlGatewayVisible
            self.DiscobTopgwivlGatewaySignupButton.isHidden = !DiscobTopgwivlGatewayVisible
            self.DiscobTopgwivlAppleButton.isHidden = !DiscobTopgwivlGatewayVisible
            self.DiscobTopgwivlConsentRow.isHidden = !(DiscobTopgwivlGatewayVisible || DiscobTopgwivlLoginConsentVisible)
            self.DiscobTopgwivlGatewayStack.alpha = DiscobTopgwivlAnyGatewayVisible ? 1 : 0
            self.DiscobTopgwivlMainStack.alpha = DiscobTopgwivlGatewayVisible ? 0 : 1
            self.DiscobTopgwivlCanvasScroll.isHidden = DiscobTopgwivlGatewayVisible
            self.DiscobTopgwivlGatewayStack.isHidden = !DiscobTopgwivlAnyGatewayVisible
            self.DiscobTopgwivlEulaButton.isHidden = !DiscobTopgwivlGatewayVisible
            self.DiscobTopgwivlCloseButton.isHidden = DiscobTopgwivlGatewayVisible
            self.DiscobTopgwivlBackgroundView.image = UIImage(named: DiscobTopgwivlGatewayVisible ? DiscobTopGwivlCipher.assetHongjiaufb : DiscobTopGwivlCipher.assetBackgroundDetail)
            self.DiscobTopgwivlRefreshActionAvailability()
            self.view.layoutIfNeeded()
        }

        if DiscobTopgwivlAnimated {
            UIView.animate(withDuration: 0.28, delay: 0, options: [.curveEaseInOut]) {
                DiscobTopgwivlChanges()
            } completion: { _ in
                let DiscobTopgwivlLoginConsentVisible = DiscobTopgwivlStage == .cellarCredentials && self.DiscobTopgwivlPourFlow == .vineyardSignIn
                self.DiscobTopgwivlGatewayStack.isHidden = !(DiscobTopgwivlStage == .cellarGateway || DiscobTopgwivlLoginConsentVisible)
                self.DiscobTopgwivlPrimePortalFocus()
            }
        } else {
            DiscobTopgwivlChanges()
            let DiscobTopgwivlLoginConsentVisible = DiscobTopgwivlStage == .cellarCredentials && DiscobTopgwivlPourFlow == .vineyardSignIn
            DiscobTopgwivlGatewayStack.isHidden = !(DiscobTopgwivlStage == .cellarGateway || DiscobTopgwivlLoginConsentVisible)
            DiscobTopgwivlPrimePortalFocus()
        }
    }

    @objc private func DiscobTopgwivlClosePortalTapped() {
        DiscobTopgwivlDismissKeyboard()

        switch DiscobTopgwivlPortalStage {
        case .cellarGateway:
            return
        case .cellarCredentials:
            DiscobTopgwivlPendingBlend = nil
            DiscobTopgwivlApplyPortalStage(.cellarGateway, DiscobTopgwivlAnimated: true)
        case .cellarProfile:
            if DiscobTopgwivlGatewayIntent == .cellarLogIn,
               let DiscobTopgwivlPendingBlend,
               !DiscobTopgwivlPendingBlend.DiscobTopgwivlAppleBlend {
                DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: .vineyardSignIn, DiscobTopgwivlAnimated: true)
                DiscobTopgwivlApplyPortalStage(.cellarCredentials, DiscobTopgwivlAnimated: true)
            } else {
                DiscobTopgwivlPendingBlend = nil
                DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: .vineyardSignIn, DiscobTopgwivlAnimated: true)
                DiscobTopgwivlApplyPortalStage(.cellarGateway, DiscobTopgwivlAnimated: true)
            }
        }
    }

    @objc func DiscobTopdecantLoginTapped(_ sender: UIButton) {
        switch DiscobTopgwivlPourFlow {
        case .vineyardSignIn:
            DiscobTopgwivlHandleSignIn()
        case .cellarSignUp:
            DiscobTopgwivlHandleSignupFinish()
        }
    }

    @objc private func DiscobTopgwivlGatewayLoginTapped() {
        guard DiscobTopgwivlEnsureConsent() else { return }
        DiscobTopgwivlGatewayIntent = .cellarLogIn
        DiscobTopgwivlPendingBlend = nil
        DiscobTopgwivlPresentCredentialPortal()
    }

    @objc private func DiscobTopgwivlGatewaySignupTapped() {
        guard DiscobTopgwivlEnsureConsent() else { return }
        DiscobTopgwivlGatewayIntent = .cellarSignUp
        DiscobTopgwivlPendingBlend = nil
        DiscobTopgwivlPresentSignupPortal()
    }

    @objc private func DiscobTopgwivlConsentTapped() {
        DiscobTopgwivlConsentBlend.toggle()
        DiscobTopgwivlRefreshConsentVisuals()
        DiscobTopgwivlRefreshActionAvailability()
    }

    private func DiscobTopgwivlRefreshConsentVisuals() {
        let DiscobTopgwivlConsentImage = UIImage(named: DiscobTopgwivlConsentBlend ? DiscobTopGwivlCipher.assetConsentOn : DiscobTopGwivlCipher.assetConsentOff)
        if let DiscobTopgwivlConsentImage {
            DiscobTopgwivlConsentButton.setBackgroundImage(DiscobTopgwivlConsentImage, for: .normal)
            DiscobTopgwivlConsentButton.layer.borderWidth = 0
        } else {
            DiscobTopgwivlConsentButton.setBackgroundImage(nil, for: .normal)
            DiscobTopgwivlConsentButton.layer.cornerRadius = DiscobTopgwivlWidth(14)
            DiscobTopgwivlConsentButton.layer.borderWidth = 1.4
            DiscobTopgwivlConsentButton.layer.borderColor = UIColor.white.withAlphaComponent(DiscobTopgwivlConsentBlend ? 0.7 : 0.24).cgColor
            DiscobTopgwivlConsentButton.setTitle(DiscobTopGwivlCipher.emptyText, for: .normal)
        }
    }

    private func DiscobTopgwivlEnsureConsent() -> Bool {
        guard DiscobTopgwivlConsentBlend else {
            DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertConsent)
            return false
        }
        return true
    }

    private func DiscobTopgwivlPresentCredentialPortal() {
        DiscobTopgwivlEmailField.text = nil
        DiscobTopgwivlPasswordField.text = nil
        DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: .vineyardSignIn, DiscobTopgwivlAnimated: false)
        DiscobTopgwivlApplyPortalStage(.cellarCredentials, DiscobTopgwivlAnimated: true)
    }

    private func DiscobTopgwivlPresentSignupPortal() {
        DiscobTopgwivlNameField.text = nil
        DiscobTopgwivlSignupEmailField.text = nil
        DiscobTopgwivlSignupPasswordField.text = nil
        DiscobTopgwivlAvatarBlend = nil
        DiscobTopgwivlApplyAvatarToken(nil)
        DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: .cellarSignUp, DiscobTopgwivlAnimated: false)
        DiscobTopgwivlApplyPortalStage(.cellarProfile, DiscobTopgwivlAnimated: true)
    }

    private func DiscobTopgwivlHandleSignIn() {
        let DiscobTopgwivlEmail = DiscobTopgwivlEmailField.text?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ?? DiscobTopGwivlCipher.emptyText
        let DiscobTopgwivlPassword = DiscobTopgwivlPasswordField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? DiscobTopGwivlCipher.emptyText

        guard !DiscobTopgwivlEmail.isEmpty, !DiscobTopgwivlPassword.isEmpty else {
            DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertEnterEmailPassword)
            return
        }

        guard DiscobTopgwivlEmail.contains(DiscobTopGwivlCipher.atMark), DiscobTopgwivlPassword.count >= 6 else {
            DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertCheckEmailPassword)
            return
        }

        let DiscobTopgwivlPending = DiscobTopGwivlPendingBlend(
            DiscobTopgwivlEmailBlend: DiscobTopgwivlEmail,
            DiscobTopgwivlPasswordBlend: DiscobTopgwivlPassword,
            DiscobTopgwivlGenderBlend: nil,
            DiscobTopgwivlAppleUserBlend: nil,
            DiscobTopgwivlIdentityBlend: nil,
            DiscobTopgwivlDisplayBlend: nil,
            DiscobTopgwivlAvatarBlend: nil,
            DiscobTopgwivlAppleBlend: false
        )

        if DiscobTopgwivlEmail == DiscobTopgwivlTestEmail, DiscobTopgwivlPassword == DiscobTopgwivlTestPassword {
            let DiscobTopgwivlCellar = DiscobTopgwivlCellarVault.DiscobToppourCellar(DiscobTopgwivlEmail: DiscobTopgwivlEmail)
                ?? DiscobTopgwivlSeedCellar(DiscobTopgwivlPending: DiscobTopgwivlPending)
            DiscobTopgwivlPerformOriginalLogin(DiscobTopgwivlPending: DiscobTopgwivlPending, DiscobTopgwivlStoredCellar: DiscobTopgwivlCellar)
            return
        }

        if let DiscobTopgwivlCellar = DiscobTopgwivlResolveCellar(DiscobTopgwivlEmail: DiscobTopgwivlEmail, DiscobTopgwivlAppleUser: nil) {
            DiscobTopgwivlPerformOriginalLogin(DiscobTopgwivlPending: DiscobTopgwivlPending, DiscobTopgwivlStoredCellar: DiscobTopgwivlCellar)
            return
        }

        DiscobTopgwivlPrepareSignup(DiscobTopgwivlPending: DiscobTopgwivlPending, DiscobTopgwivlStoredCellar: nil)
    }

    private func DiscobTopgwivlHandleSignupFinish() {
        let DiscobTopgwivlDisplay = DiscobTopgwivlNameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? DiscobTopGwivlCipher.emptyText
        let DiscobTopgwivlEmail = DiscobTopgwivlSignupEmailField.text?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ?? DiscobTopGwivlCipher.emptyText
        let DiscobTopgwivlPassword = DiscobTopgwivlSignupPasswordField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? DiscobTopGwivlCipher.emptyText

        guard !DiscobTopgwivlEmail.isEmpty, !DiscobTopgwivlPassword.isEmpty else {
            DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertEnterEmailPassword)
            return
        }

        guard DiscobTopgwivlEmail.contains(DiscobTopGwivlCipher.atMark), DiscobTopgwivlPassword.count >= 6 else {
            DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertCheckCellarEmailPassword)
            return
        }

        guard DiscobTopgwivlDisplay.count >= 2 else {
            DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertChooseUsername)
            return
        }

        let DiscobTopgwivlStoredPending = DiscobTopgwivlPendingBlend
        let DiscobTopgwivlPending = DiscobTopGwivlPendingBlend(
            DiscobTopgwivlEmailBlend: DiscobTopgwivlEmail,
            DiscobTopgwivlPasswordBlend: DiscobTopgwivlPassword,
            DiscobTopgwivlGenderBlend: DiscobTopgwivlStoredPending?.DiscobTopgwivlGenderBlend,
            DiscobTopgwivlAppleUserBlend: DiscobTopgwivlStoredPending?.DiscobTopgwivlAppleUserBlend,
            DiscobTopgwivlIdentityBlend: DiscobTopgwivlStoredPending?.DiscobTopgwivlIdentityBlend,
            DiscobTopgwivlDisplayBlend: DiscobTopgwivlDisplay,
            DiscobTopgwivlAvatarBlend: DiscobTopgwivlAvatarBlend,
            DiscobTopgwivlAppleBlend: DiscobTopgwivlStoredPending?.DiscobTopgwivlAppleBlend ?? false
        )

        let DiscobTopgwivlRecord = DiscobTopGwivlCellarRecord(
            DiscobTopgwivlEmailCellar: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend,
            DiscobTopgwivlPasswordCellar: DiscobTopgwivlPending.DiscobTopgwivlPasswordBlend,
            DiscobTopgwivlDisplayCellar: DiscobTopgwivlDisplay,
            DiscobTopgwivlAvatarCellar: DiscobTopgwivlAvatarBlend ?? DiscobTopgwivlPending.DiscobTopgwivlAvatarBlend ?? DiscobTopgwivlAvatarFallback,
            DiscobTopgwivlBirthCellar: DiscobTopgwivlBirthFallback,
            DiscobTopgwivlGenderCellar: DiscobTopgwivlSelectedGender() ?? DiscobTopgwivlPending.DiscobTopgwivlGenderBlend,
            DiscobTopgwivlAppleUserCellar: DiscobTopgwivlPending.DiscobTopgwivlAppleUserBlend,
            DiscobTopgwivlIdentityCellar: DiscobTopgwivlPending.DiscobTopgwivlIdentityBlend,
            DiscobTopgwivlAppleBlendCellar: DiscobTopgwivlPending.DiscobTopgwivlAppleBlend,
            DiscobTopgwivlLastToastCellar: Date().timeIntervalSince1970
        )

        DiscobTopgwivlCellarVault.DiscobTopreserveCellar(DiscobTopgwivlRecord)
        DiscobTopgwivlPerformOriginalLogin(DiscobTopgwivlPending: DiscobTopgwivlPending, DiscobTopgwivlStoredCellar: DiscobTopgwivlRecord)
    }

    private func DiscobTopgwivlPrepareSignup(DiscobTopgwivlPending: DiscobTopGwivlPendingBlend, DiscobTopgwivlStoredCellar: DiscobTopGwivlCellarRecord?) {
        DiscobTopgwivlPendingBlend = DiscobTopgwivlPending
        DiscobTopgwivlSignupEmailField.text = DiscobTopgwivlPending.DiscobTopgwivlEmailBlend
        DiscobTopgwivlSignupPasswordField.text = DiscobTopgwivlPending.DiscobTopgwivlPasswordBlend
        DiscobTopgwivlNameField.text = DiscobTopgwivlStoredCellar?.DiscobTopgwivlDisplayCellar ?? DiscobTopgwivlPending.DiscobTopgwivlDisplayBlend ?? DiscobTopgwivlDisplaySeed(DiscobTopgwivlEmail: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend)
        DiscobTopgwivlBirthField.text = DiscobTopgwivlStoredCellar?.DiscobTopgwivlBirthCellar ?? DiscobTopgwivlBirthFallback
        DiscobTopgwivlAvatarBlend = DiscobTopgwivlStoredCellar?.DiscobTopgwivlAvatarCellar ?? DiscobTopgwivlPending.DiscobTopgwivlAvatarBlend
        DiscobTopgwivlApplyAvatarToken(DiscobTopgwivlAvatarBlend)
        DiscobTopgwivlApplyGender(DiscobTopgwivlStoredCellar?.DiscobTopgwivlGenderCellar ?? DiscobTopgwivlPending.DiscobTopgwivlGenderBlend)
        DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: .cellarSignUp, DiscobTopgwivlAnimated: true)
        DiscobTopgwivlApplyPortalStage(.cellarProfile, DiscobTopgwivlAnimated: true)
        DiscobTopgwivlCanvasScroll.setContentOffset(.zero, animated: true)
    }

    private func DiscobTopgwivlPerformOriginalLogin(
        DiscobTopgwivlPending: DiscobTopGwivlPendingBlend,
        DiscobTopgwivlStoredCellar: DiscobTopGwivlCellarRecord?
    ) {
        DiscobTopgwivlDismissKeyboard()
        DiscobTopvineyardHUD.DiscobTopcommenceFermentation(DiscobTopin: view)
        DiscobTopvineyardHUD.DiscobTopupdateVintageNotes(DiscobTopGwivlCipher.hudPairing)

        let DiscobTopgwivlPayload: [String: Any] = [
            DiscobTopGwivlCipher.payloadCertificationMeaning: DiscobTopgwivlPending.DiscobTopgwivlPasswordBlend,
            DiscobTopGwivlCipher.payloadAppellationRules: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend,
            DiscobTopGwivlCipher.payloadTraditionBackground: DiscobTopGwivlCipher.apiStaticKey
        ]

        DiscobTopVineyardSocialControler.DiscobTopsonicHarmonyBridge(
            notes: DiscobTopgwivlTastingNotes(),
            DiscobTopwaveformComponents: DiscobTopgwivlPayload,
            DiscobTopresonanceFrequency: DiscobTopGwivlCipher.endpointLogin
        ) { [weak self] DiscobTopgwivlResult in
            guard let self else { return }
            self.DiscobTopvineyardHUD.DiscobTopconcludeFermentation()
            guard let DiscobTopgwivlProfile = self.DiscobTopgwivlResolveServerProfile(DiscobTopgwivlResult) else {
                self.DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertLoginParse)
                return
            }

            let DiscobTopgwivlMerged = self.DiscobTopgwivlMergeCellar(
                DiscobTopgwivlServerProfile: DiscobTopgwivlProfile,
                DiscobTopgwivlPending: DiscobTopgwivlPending,
                DiscobTopgwivlStoredCellar: DiscobTopgwivlStoredCellar
            )

            self.DiscobTopgwivlPersistActiveCellar(DiscobTopgwivlProfile: DiscobTopgwivlProfile, DiscobTopgwivlCellar: DiscobTopgwivlMerged)
            self.DiscobTopgwivlCellarVault.DiscobTopreserveCellar(DiscobTopgwivlMerged)
            self.DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view, DiscobTopmessage: DiscobTopGwivlCipher.successWelcome)
            DiscobTopVineyardSocialControler.DiscobTopswitchWithMusicAnimation()
        } DiscobTopdissonanceHandler: { [weak self] DiscobTopgwivlError in
            self?.DiscobTopvineyardHUD.DiscobTopconcludeFermentation()
            self?.DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(
                DiscobTopin: self?.view ?? UIView(),
                DiscobTopmessage: DiscobTopgwivlError.localizedDescription,
                DiscobTopifIssucceff: false
            )
        }
    }

    private func DiscobTopgwivlResolveServerProfile(_ DiscobTopgwivlResult: Any?) -> [String: Any]? {
        guard let DiscobTopgwivlPayload = DiscobTopgwivlResult as? [String: Any] else {
            return nil
        }
        if let DiscobTopgwivlData = DiscobTopgwivlPayload[DiscobTopGwivlCipher.responseData] as? [String: Any] {
            return DiscobTopgwivlData
        }
        return DiscobTopgwivlPayload
    }

    private func DiscobTopgwivlResolveAuthToken(from DiscobTopgwivlProfile: [String: Any]) -> String? {
        DiscobTopGwivlCipher.authTokenKeys.compactMap { DiscobTopgwivlString(from: DiscobTopgwivlProfile[$0]) }.first
    }

    private func DiscobTopgwivlResolveSsoIdentity(from DiscobTopgwivlProfile: [String: Any], DiscobTopgwivlFallback: String?) -> String? {
        DiscobTopGwivlCipher.ssoIdentityKeys.compactMap { DiscobTopgwivlString(from: DiscobTopgwivlProfile[$0]) }.first ?? DiscobTopgwivlFallback
    }

    private func DiscobTopgwivlMergeCellar(
        DiscobTopgwivlServerProfile: [String: Any],
        DiscobTopgwivlPending: DiscobTopGwivlPendingBlend,
        DiscobTopgwivlStoredCellar: DiscobTopGwivlCellarRecord?
    ) -> DiscobTopGwivlCellarRecord {
        let DiscobTopgwivlDisplay = DiscobTopgwivlString(from: DiscobTopgwivlServerProfile[DiscobTopGwivlCipher.keyDisplay])
            ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlDisplayCellar
            ?? DiscobTopgwivlPending.DiscobTopgwivlDisplayBlend
            ?? DiscobTopgwivlDisplaySeed(DiscobTopgwivlEmail: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend)

        let DiscobTopgwivlAvatar = DiscobTopgwivlString(from: DiscobTopgwivlServerProfile[DiscobTopGwivlCipher.keyAvatar])
            ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlAvatarCellar
            ?? DiscobTopgwivlPending.DiscobTopgwivlAvatarBlend
            ?? DiscobTopgwivlAvatarBlend
            ?? DiscobTopgwivlAvatarFallback

        return DiscobTopGwivlCellarRecord(
            DiscobTopgwivlEmailCellar: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend,
            DiscobTopgwivlPasswordCellar: DiscobTopgwivlPending.DiscobTopgwivlPasswordBlend,
            DiscobTopgwivlDisplayCellar: DiscobTopgwivlDisplay,
            DiscobTopgwivlAvatarCellar: DiscobTopgwivlAvatar,
            DiscobTopgwivlBirthCellar: DiscobTopgwivlStoredCellar?.DiscobTopgwivlBirthCellar ?? DiscobTopgwivlBirthField.text ?? DiscobTopgwivlBirthFallback,
            DiscobTopgwivlGenderCellar: DiscobTopgwivlStoredCellar?.DiscobTopgwivlGenderCellar ?? DiscobTopgwivlSelectedGender() ?? DiscobTopgwivlPending.DiscobTopgwivlGenderBlend,
            DiscobTopgwivlAppleUserCellar: DiscobTopgwivlPending.DiscobTopgwivlAppleUserBlend ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlAppleUserCellar,
            DiscobTopgwivlIdentityCellar: DiscobTopgwivlPending.DiscobTopgwivlIdentityBlend ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlIdentityCellar,
            DiscobTopgwivlAppleBlendCellar: DiscobTopgwivlPending.DiscobTopgwivlAppleBlend || (DiscobTopgwivlStoredCellar?.DiscobTopgwivlAppleBlendCellar ?? false),
            DiscobTopgwivlLastToastCellar: Date().timeIntervalSince1970
        )
    }

    private func DiscobTopgwivlPersistActiveCellar(
        DiscobTopgwivlProfile: [String: Any],
        DiscobTopgwivlCellar: DiscobTopGwivlCellarRecord
    ) {
        guard let DiscobTopgwivlToken = DiscobTopgwivlResolveAuthToken(from: DiscobTopgwivlProfile) else {
            return
        }

        UserDefaults.standard.set(DiscobTopgwivlToken, forKey: DiscobTopGwivlCipher.keyTermGlossary)
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlDisplayCellar, forKey: DiscobTopGwivlCipher.keyDisplay)
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlAvatarCellar, forKey: DiscobTopGwivlCipher.keyAvatar)
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlEmailCellar, forKey: DiscobTopGwivlCipher.keyActiveEmail)
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlBirthCellar, forKey: DiscobTopGwivlCipher.keyActiveBirth)
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlGenderCellar, forKey: DiscobTopGwivlCipher.keyActiveGender)
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlAppleUserCellar, forKey: DiscobTopGwivlCipher.keyActiveAppleUser)
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlIdentityCellar, forKey: DiscobTopGwivlCipher.keyActiveIdentity)
    }

    private func DiscobTopgwivlSeedCellar(DiscobTopgwivlPending: DiscobTopGwivlPendingBlend) -> DiscobTopGwivlCellarRecord {
        DiscobTopGwivlCellarRecord(
            DiscobTopgwivlEmailCellar: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend,
            DiscobTopgwivlPasswordCellar: DiscobTopgwivlPending.DiscobTopgwivlPasswordBlend,
            DiscobTopgwivlDisplayCellar: DiscobTopgwivlPending.DiscobTopgwivlDisplayBlend ?? DiscobTopgwivlDisplaySeed(DiscobTopgwivlEmail: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend),
            DiscobTopgwivlAvatarCellar: DiscobTopgwivlPending.DiscobTopgwivlAvatarBlend ?? DiscobTopgwivlAvatarFallback,
            DiscobTopgwivlBirthCellar: DiscobTopgwivlBirthFallback,
            DiscobTopgwivlGenderCellar: DiscobTopgwivlPending.DiscobTopgwivlGenderBlend,
            DiscobTopgwivlAppleUserCellar: DiscobTopgwivlPending.DiscobTopgwivlAppleUserBlend,
            DiscobTopgwivlIdentityCellar: DiscobTopgwivlPending.DiscobTopgwivlIdentityBlend,
            DiscobTopgwivlAppleBlendCellar: DiscobTopgwivlPending.DiscobTopgwivlAppleBlend,
            DiscobTopgwivlLastToastCellar: Date().timeIntervalSince1970
        )
    }

    private func DiscobTopgwivlResolveCellar(DiscobTopgwivlEmail: String, DiscobTopgwivlAppleUser: String?) -> DiscobTopGwivlCellarRecord? {
        if let DiscobTopgwivlEmailCellar = DiscobTopgwivlCellarVault.DiscobToppourCellar(DiscobTopgwivlEmail: DiscobTopgwivlEmail) {
            return DiscobTopgwivlEmailCellar
        }
        guard let DiscobTopgwivlAppleUser, !DiscobTopgwivlAppleUser.isEmpty else {
            return nil
        }
        return DiscobTopgwivlCellarVault.DiscobToppourCellar(DiscobTopgwivlAppleUser: DiscobTopgwivlAppleUser)
    }

    private func DiscobTopgwivlDisplaySeed(DiscobTopgwivlEmail: String) -> String {
        let DiscobTopgwivlPrefix = DiscobTopgwivlEmail.components(separatedBy: DiscobTopGwivlCipher.atMark).first ?? DiscobTopGwivlCipher.defaultGwivl
        let DiscobTopgwivlStyled = DiscobTopgwivlPrefix.replacingOccurrences(of: DiscobTopGwivlCipher.dot, with: DiscobTopGwivlCipher.space)
        return DiscobTopgwivlStyled
            .split(separator: DiscobTopGwivlCipher.spaceCharacter)
            .map { $0.prefix(1).uppercased() + $0.dropFirst().lowercased() }
            .joined(separator: DiscobTopGwivlCipher.space)
    }

    @objc private func DiscobTopgwivlAppleTapped() {
        guard DiscobTopgwivlEnsureConsent() else { return }
        DiscobTopgwivlDismissKeyboard()
        let DiscobTopgwivlRequest = ASAuthorizationAppleIDProvider().createRequest()
        DiscobTopgwivlRequest.requestedScopes = [.fullName, .email]
        let DiscobTopgwivlController = ASAuthorizationController(authorizationRequests: [DiscobTopgwivlRequest])
        DiscobTopgwivlController.delegate = self
        DiscobTopgwivlController.presentationContextProvider = self
        DiscobTopgwivlController.performRequests()
    }

    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        view.window ?? ASPresentationAnchor()
    }

    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        guard let DiscobTopgwivlCredential = authorization.credential as? ASAuthorizationAppleIDCredential,
              let DiscobTopgwivlIdentityData = DiscobTopgwivlCredential.identityToken,
              let DiscobTopgwivlIdentityToken = String(data: DiscobTopgwivlIdentityData, encoding: .utf8) else {
            DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertAppleAuthToken)
            return
        }

        let DiscobTopgwivlAppleUser = DiscobTopgwivlCredential.user
        let DiscobTopgwivlFullName = [DiscobTopgwivlCredential.fullName?.givenName, DiscobTopgwivlCredential.fullName?.familyName]
            .compactMap { $0 }
            .filter { !$0.isEmpty }
            .joined(separator: DiscobTopGwivlCipher.space)

        DiscobTopvineyardHUD.DiscobTopcommenceFermentation(DiscobTopin: view)
        DiscobTopvineyardHUD.DiscobTopupdateVintageNotes(DiscobTopGwivlCipher.hudAppleOpening)

        let DiscobTopgwivlPayload: [String: Any] = [
            DiscobTopGwivlCipher.payloadPalateDepth: DiscobTopgwivlIdentityToken,
            DiscobTopGwivlCipher.payloadVintageSelection: DiscobTopSipEtiquette.DiscobTopfriendGathering() ?? DiscobTopGwivlCipher.payloadVintageFallback,
            DiscobTopGwivlCipher.payloadAromaProfile: DiscobTopGwivlCipher.apiStaticKey
        ]

        DiscobTopVineyardSocialControler.DiscobTopsonicHarmonyBridge(
            notes: DiscobTopGwivlCipher.appleRouteNotes,
            DiscobTopwaveformComponents: DiscobTopgwivlPayload,
            DiscobTopresonanceFrequency: DiscobTopGwivlCipher.endpointApple
        ) { [weak self] DiscobTopgwivlResult in
            guard let self else { return }
            self.DiscobTopvineyardHUD.DiscobTopconcludeFermentation()
            let DiscobTopgwivlPayload = self.DiscobTopgwivlResolveServerProfile(DiscobTopgwivlResult) ?? [:]
            guard self.DiscobTopgwivlResolveAuthToken(from: DiscobTopgwivlPayload) != nil else {
                self.DiscobTopshowAlert(DiscobTopmessage: DiscobTopGwivlCipher.alertAppleLoginToken)
                return
            }

            let DiscobTopgwivlStoredCellar = self.DiscobTopgwivlResolveCellar(
                DiscobTopgwivlEmail: self.DiscobTopgwivlString(from: DiscobTopgwivlPayload[DiscobTopGwivlCipher.keyEmail]) ?? DiscobTopGwivlCipher.emptyText,
                DiscobTopgwivlAppleUser: DiscobTopgwivlAppleUser
            )

            let DiscobTopgwivlEmail = self.DiscobTopgwivlString(from: DiscobTopgwivlPayload[DiscobTopGwivlCipher.keyEmail])
                ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlEmailCellar
                ?? "\(DiscobTopgwivlAppleUser)\(DiscobTopGwivlCipher.appleFallbackDomain)"
            let DiscobTopgwivlIdentity = self.DiscobTopgwivlResolveSsoIdentity(from: DiscobTopgwivlPayload, DiscobTopgwivlFallback: DiscobTopgwivlAppleUser) ?? DiscobTopgwivlAppleUser
            let DiscobTopgwivlGender = self.DiscobTopgwivlNormalizedGender(self.DiscobTopgwivlString(from: DiscobTopgwivlPayload[DiscobTopGwivlCipher.keyGender]) ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlGenderCellar)
            let DiscobTopgwivlPending = DiscobTopGwivlPendingBlend(
                DiscobTopgwivlEmailBlend: DiscobTopgwivlEmail.lowercased(),
                DiscobTopgwivlPasswordBlend: DiscobTopgwivlIdentity,
                DiscobTopgwivlGenderBlend: DiscobTopgwivlGender,
                DiscobTopgwivlAppleUserBlend: DiscobTopgwivlAppleUser,
                DiscobTopgwivlIdentityBlend: DiscobTopgwivlIdentity,
                DiscobTopgwivlDisplayBlend: DiscobTopgwivlFullName.isEmpty ? DiscobTopgwivlStoredCellar?.DiscobTopgwivlDisplayCellar : DiscobTopgwivlFullName,
                DiscobTopgwivlAvatarBlend: DiscobTopgwivlStoredCellar?.DiscobTopgwivlAvatarCellar,
                DiscobTopgwivlAppleBlend: true
            )

            let DiscobTopgwivlAppleCellar = self.DiscobTopgwivlMergeCellar(
                DiscobTopgwivlServerProfile: DiscobTopgwivlPayload,
                DiscobTopgwivlPending: DiscobTopgwivlPending,
                DiscobTopgwivlStoredCellar: DiscobTopgwivlStoredCellar
            )
            self.DiscobTopgwivlPersistActiveCellar(DiscobTopgwivlProfile: DiscobTopgwivlPayload, DiscobTopgwivlCellar: DiscobTopgwivlAppleCellar)
            self.DiscobTopgwivlCellarVault.DiscobTopreserveCellar(DiscobTopgwivlAppleCellar)
            self.DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view, DiscobTopmessage: DiscobTopGwivlCipher.successWelcome)
            DiscobTopVineyardSocialControler.DiscobTopswitchWithMusicAnimation()
        } DiscobTopdissonanceHandler: { [weak self] DiscobTopgwivlError in
            self?.DiscobTopvineyardHUD.DiscobTopconcludeFermentation()
            self?.DiscobTopshowAlert(DiscobTopmessage: DiscobTopgwivlError.localizedDescription)
        }
    }

    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        DiscobTopshowAlert(DiscobTopmessage: error.localizedDescription)
    }

    @objc private func DiscobTopgwivlCancelSignupTapped() {
        DiscobTopgwivlPendingBlend = nil
        DiscobTopgwivlDismissKeyboard()
        DiscobTopgwivlApplyFlow(DiscobTopgwivlFlow: .vineyardSignIn, DiscobTopgwivlAnimated: true)
        DiscobTopgwivlApplyPortalStage(.cellarGateway, DiscobTopgwivlAnimated: true)
    }

    @objc private func DiscobTopgwivlAvatarTapped() {
        var DiscobTopgwivlPickerConfig = PHPickerConfiguration(photoLibrary: .shared())
        DiscobTopgwivlPickerConfig.selectionLimit = 1
        DiscobTopgwivlPickerConfig.filter = .images
        let DiscobTopgwivlPicker = PHPickerViewController(configuration: DiscobTopgwivlPickerConfig)
        DiscobTopgwivlPicker.delegate = self
        present(DiscobTopgwivlPicker, animated: true)
    }

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        guard let DiscobTopgwivlProvider = results.first?.itemProvider, DiscobTopgwivlProvider.canLoadObject(ofClass: UIImage.self) else {
            return
        }
        DiscobTopgwivlProvider.loadObject(ofClass: UIImage.self) { [weak self] DiscobTopgwivlObject, _ in
            guard let self, let DiscobTopgwivlImage = DiscobTopgwivlObject as? UIImage else {
                return
            }
            let DiscobTopgwivlLocalAvatar = self.DiscobTopgwivlPersistAvatar(DiscobTopgwivlImage)
            DispatchQueue.main.async {
                self.DiscobTopgwivlAvatarBlend = DiscobTopgwivlLocalAvatar
                self.DiscobTopgwivlApplyAvatarToken(DiscobTopgwivlLocalAvatar)
            }
        }
    }

    private func DiscobTopgwivlPersistAvatar(_ DiscobTopgwivlImage: UIImage) -> String {
        let DiscobTopgwivlCanvas = DiscobTopgwivlImage.jpegData(compressionQuality: 0.88)
        let DiscobTopgwivlDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let DiscobTopgwivlURL = DiscobTopgwivlDirectory?.appendingPathComponent("\(DiscobTopGwivlCipher.avatarFilePrefix)\(UUID().uuidString)\(DiscobTopGwivlCipher.jpgExtension)")
        if let DiscobTopgwivlCanvas, let DiscobTopgwivlURL {
            try? DiscobTopgwivlCanvas.write(to: DiscobTopgwivlURL, options: [.atomic])
            return DiscobTopgwivlURL.absoluteString
        }
        return DiscobTopgwivlAvatarFallback
    }

    private func DiscobTopgwivlApplyAvatarToken(_ DiscobTopgwivlToken: String?) {
        guard let DiscobTopgwivlToken,
              DiscobTopgwivlToken != DiscobTopgwivlAvatarFallback,
              let DiscobTopgwivlImage = DiscobTopgwivlAvatarImage(from: DiscobTopgwivlToken) else {
            DiscobTopgwivlAvatarButton.backgroundColor = UIColor.white.withAlphaComponent(0.18)
            DiscobTopgwivlAvatarButton.setImage(UIImage(systemName: DiscobTopGwivlCipher.sfPlus), for: .normal)
            DiscobTopgwivlAvatarButton.imageView?.contentMode = .center
            DiscobTopgwivlAvatarButton.tintColor = UIColor.white.withAlphaComponent(0.68)
            DiscobTopgwivlAvatarButton.setBackgroundImage(nil, for: .normal)
            return
        }
        DiscobTopgwivlAvatarButton.backgroundColor = .clear
        DiscobTopgwivlAvatarButton.tintColor = nil
        DiscobTopgwivlAvatarButton.imageView?.contentMode = .scaleAspectFill
        DiscobTopgwivlAvatarButton.setImage(DiscobTopgwivlImage, for: .normal)
    }

    private func DiscobTopgwivlAvatarImage(from DiscobTopgwivlToken: String) -> UIImage? {
        if DiscobTopgwivlToken.hasPrefix(DiscobTopGwivlCipher.assetScheme) {
            let DiscobTopgwivlAsset = String(DiscobTopgwivlToken.dropFirst(DiscobTopGwivlCipher.assetScheme.count))
            return UIImage(named: DiscobTopgwivlAsset)
        }
        if let DiscobTopgwivlAssetImage = UIImage(named: DiscobTopgwivlToken) {
            return DiscobTopgwivlAssetImage
        }
        if let DiscobTopgwivlURL = URL(string: DiscobTopgwivlToken), DiscobTopgwivlURL.isFileURL,
           let DiscobTopgwivlData = try? Data(contentsOf: DiscobTopgwivlURL) {
            return UIImage(data: DiscobTopgwivlData)
        }
        if FileManager.default.fileExists(atPath: DiscobTopgwivlToken) {
            return UIImage(contentsOfFile: DiscobTopgwivlToken)
        }
        return nil
    }

    @objc private func DiscobTopgwivlBirthValueChanged() {
        let DiscobTopgwivlFormatter = DateFormatter()
        DiscobTopgwivlFormatter.locale = Locale(identifier: DiscobTopGwivlCipher.localePosix)
        DiscobTopgwivlFormatter.dateFormat = DiscobTopGwivlCipher.dateFormatYearMonth
        DiscobTopgwivlBirthField.text = DiscobTopgwivlFormatter.string(from: DiscobTopgwivlBirthPicker.date)
        DiscobTopgwivlRefreshActionAvailability()
    }

    @objc private func DiscobTopgwivlFieldEditingChanged(_ DiscobTopgwivlSender: UITextField) {
        DiscobTopgwivlRefreshActionAvailability()
    }

    @objc private func DiscobTopgwivlFocusLoginEmail() {
        DiscobTopgwivlEmailField.becomeFirstResponder()
    }

    @objc private func DiscobTopgwivlFocusLoginPassword() {
        DiscobTopgwivlPasswordField.becomeFirstResponder()
    }

    @objc private func DiscobTopgwivlFocusSignupName() {
        DiscobTopgwivlNameField.becomeFirstResponder()
    }

    @objc private func DiscobTopgwivlFocusSignupEmail() {
        DiscobTopgwivlSignupEmailField.becomeFirstResponder()
    }

    @objc private func DiscobTopgwivlFocusSignupPassword() {
        DiscobTopgwivlSignupPasswordField.becomeFirstResponder()
    }

    @objc private func DiscobTopgwivlFocusBirthField() {
        DiscobTopgwivlBirthField.becomeFirstResponder()
    }

    @objc private func DiscobTopgwivlOpenEula() {
        DiscobToporganicVineyard(self)
    }

    @objc private func DiscobTopgwivlOpenPrivacy() {
        DiscobTopreserveSelection(self)
    }

    @IBAction func DiscobToporganicVineyard(_ sender: Any) {
        let DiscobTopgwivlMaster = DiscobTopMasterVintner(credential: DiscobTopGwivlCipher.masterCredential, specialty: DiscobTopGwivlCipher.masterSpecialty, availableSlots: [Date().addingTimeInterval(259200)])
        let DiscobTopgwivlLink = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute(DiscobTopmasterio: DiscobTopgwivlMaster, DiscobTopdestination: .subscriptionAged)
        let DiscobTopgwivlReader = DiscobTopServingAssistantCller(DiscobTopswapStories: DiscobTopgwivlLink, DiscobTopispresntShow: true)
        present(DiscobTopgwivlReader, animated: true)
    }

    @IBAction func DiscobTopreserveSelection(_ sender: Any) {
        let DiscobTopgwivlMaster = DiscobTopMasterVintner(credential: DiscobTopGwivlCipher.masterCredential, specialty: DiscobTopGwivlCipher.masterSpecialty, availableSlots: [Date().addingTimeInterval(259200)])
        let DiscobTopgwivlLink = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute(DiscobTopmasterio: DiscobTopgwivlMaster, DiscobTopdestination: .corkSealPrivacy)
        let DiscobTopgwivlReader = DiscobTopServingAssistantCller(DiscobTopswapStories: DiscobTopgwivlLink, DiscobTopispresntShow: true)
        present(DiscobTopgwivlReader, animated: true)
    }

    private func DiscobTopgwivlSelectedGender() -> String? {
        guard DiscobTopgwivlGenderSegment.selectedSegmentIndex != UISegmentedControl.noSegment else {
            return nil
        }
        return DiscobTopgwivlGenderSegment.titleForSegment(at: DiscobTopgwivlGenderSegment.selectedSegmentIndex)
    }

    private func DiscobTopgwivlApplyGender(_ DiscobTopgwivlGender: String?) {
        let DiscobTopgwivlNormalized = DiscobTopgwivlNormalizedGender(DiscobTopgwivlGender)
        let DiscobTopgwivlTitles = (0..<DiscobTopgwivlGenderSegment.numberOfSegments).compactMap { DiscobTopgwivlGenderSegment.titleForSegment(at: $0) }
        if let DiscobTopgwivlNormalized,
           let DiscobTopgwivlIndex = DiscobTopgwivlTitles.firstIndex(where: { $0.caseInsensitiveCompare(DiscobTopgwivlNormalized) == .orderedSame }) {
            DiscobTopgwivlGenderSegment.selectedSegmentIndex = DiscobTopgwivlIndex
        } else {
            DiscobTopgwivlGenderSegment.selectedSegmentIndex = UISegmentedControl.noSegment
        }
    }

    private func DiscobTopgwivlNormalizedGender(_ DiscobTopgwivlGender: String?) -> String? {
        guard let DiscobTopgwivlRaw = DiscobTopgwivlGender?.trimmingCharacters(in: .whitespacesAndNewlines), !DiscobTopgwivlRaw.isEmpty else {
            return nil
        }
        let DiscobTopgwivlLower = DiscobTopgwivlRaw.lowercased()
        if [DiscobTopGwivlCipher.genderFemaleLower, DiscobTopGwivlCipher.genderFShort, DiscobTopGwivlCipher.genderWoman, DiscobTopGwivlCipher.genderTwo].contains(DiscobTopgwivlLower) {
            return DiscobTopGwivlCipher.genderFemale
        }
        if [DiscobTopGwivlCipher.genderMaleLower, DiscobTopGwivlCipher.genderMShort, DiscobTopGwivlCipher.genderMan, DiscobTopGwivlCipher.genderOne].contains(DiscobTopgwivlLower) {
            return DiscobTopGwivlCipher.genderMale
        }
        if [DiscobTopGwivlCipher.genderOtherLower, DiscobTopGwivlCipher.genderUnknown, DiscobTopGwivlCipher.genderZero].contains(DiscobTopgwivlLower) {
            return DiscobTopGwivlCipher.genderOther
        }
        return DiscobTopgwivlRaw.capitalized
    }

    private func DiscobTopgwivlString(from DiscobTopgwivlValue: Any?) -> String? {
        switch DiscobTopgwivlValue {
        case let DiscobTopgwivlText as String:
            let DiscobTopgwivlTrimmed = DiscobTopgwivlText.trimmingCharacters(in: .whitespacesAndNewlines)
            return DiscobTopgwivlTrimmed.isEmpty ? nil : DiscobTopgwivlTrimmed
        case let DiscobTopgwivlNumber as NSNumber:
            return DiscobTopgwivlNumber.stringValue
        default:
            return nil
        }
    }

    private func DiscobToptasteEvolution() {
        let DiscobTopgwivlSamples = DiscobTopGwivlCipher.virtualFlights.randomElement() ?? (DiscobTopGwivlCipher.sampleMerlot, [DiscobTopGwivlCipher.notePlum, DiscobTopGwivlCipher.noteCocoa, DiscobTopGwivlCipher.noteSmoke])
        DiscobTopvirtualTasting = DiscobTopVirtualTasting(wineSample: DiscobTopgwivlSamples.0, comparisonNotes: DiscobTopgwivlSamples.1.shuffled())
    }

    private func DiscobTopgwivlTastingNotes() -> [String] {
        let DiscobTopgwivlNotes = DiscobTopGwivlCipher.tastingNotesBank
        let DiscobTopgwivlIndex = Int(Date().timeIntervalSince1970) % DiscobTopgwivlNotes.count
        return DiscobTopgwivlNotes[DiscobTopgwivlIndex]
    }

    private func DiscobTopgwivlWidth(_ DiscobTopgwivlValue: CGFloat) -> CGFloat {
        UIScreen.main.bounds.width / DiscobTopgwivlCanvasBase.width * DiscobTopgwivlValue
    }

    private func DiscobTopgwivlHeight(_ DiscobTopgwivlValue: CGFloat) -> CGFloat {
        UIScreen.main.bounds.height / DiscobTopgwivlCanvasBase.height * DiscobTopgwivlValue
    }

    private func DiscobTopshowAlert(DiscobTopmessage: String) {
        let DiscobTopgwivlAlert = UIAlertController(title: DiscobTopGwivlCipher.emptyText, message: DiscobTopmessage, preferredStyle: .alert)
        DiscobTopgwivlAlert.addAction(UIAlertAction(title: DiscobTopGwivlCipher.alertOK, style: .default))
        present(DiscobTopgwivlAlert, animated: true)
    }

    @objc private func DiscobTopgwivlDismissKeyboard() {
        view.endEditing(true)
    }

    private func DiscobTopgwivlRefreshActionAvailability() {
        DiscobTopgwivlActionButton.isEnabled = true
        DiscobTopgwivlActionButton.alpha = 1
        DiscobTopgwivlGatewayLoginButton.alpha = 1
        DiscobTopgwivlGatewaySignupButton.alpha = 1
        DiscobTopgwivlAppleButton.alpha = 1
    }

    private func DiscobTopgwivlRefreshFieldFocusState(DiscobTopgwivlActiveField: UITextField?) {
        let DiscobTopgwivlIdleBorder = UIColor.clear.cgColor
        let DiscobTopgwivlActiveBorder = UIColor.white.withAlphaComponent(0.18).cgColor

        [
            (DiscobTopgwivlEmailField, DiscobTopgwivlEmailShell),
            (DiscobTopgwivlPasswordField, DiscobTopgwivlPasswordShell),
            (DiscobTopgwivlNameField, DiscobTopgwivlNameShell),
            (DiscobTopgwivlSignupEmailField, DiscobTopgwivlSignupEmailShell),
            (DiscobTopgwivlSignupPasswordField, DiscobTopgwivlSignupPasswordShell),
            (DiscobTopgwivlBirthField, DiscobTopgwivlBirthShell)
        ].forEach { DiscobTopgwivlFieldPair in
            let DiscobTopgwivlFocused = DiscobTopgwivlFieldPair.0 == DiscobTopgwivlActiveField
            DiscobTopgwivlFieldPair.1.layer.borderColor = DiscobTopgwivlFocused ? DiscobTopgwivlActiveBorder : DiscobTopgwivlIdleBorder
            DiscobTopgwivlFieldPair.1.layer.borderWidth = DiscobTopgwivlFocused ? 1 : 0
            DiscobTopgwivlFieldPair.1.backgroundColor = DiscobTopgwivlFocused
                ? UIColor(red: 77 / 255, green: 77 / 255, blue: 82 / 255, alpha: 0.98)
                : UIColor(red: 74 / 255, green: 74 / 255, blue: 79 / 255, alpha: 0.96)
        }
    }

    private func DiscobTopgwivlPrimePortalFocus() {
        guard DiscobTopgwivlPortalStage != .cellarGateway else {
            DiscobTopgwivlRefreshFieldFocusState(DiscobTopgwivlActiveField: nil)
            return
        }

        let DiscobTopgwivlTargetField: UITextField?
        switch (DiscobTopgwivlPortalStage, DiscobTopgwivlPourFlow) {
        case (.cellarCredentials, .vineyardSignIn):
            DiscobTopgwivlTargetField = DiscobTopgwivlEmailField.text?.isEmpty == false ? DiscobTopgwivlPasswordField : DiscobTopgwivlEmailField
        case (.cellarProfile, .cellarSignUp):
            if DiscobTopgwivlNameField.text?.isEmpty != false {
                DiscobTopgwivlTargetField = DiscobTopgwivlNameField
            } else if DiscobTopgwivlSignupEmailField.text?.isEmpty != false {
                DiscobTopgwivlTargetField = DiscobTopgwivlSignupEmailField
            } else {
                DiscobTopgwivlTargetField = DiscobTopgwivlSignupPasswordField
            }
        default:
            DiscobTopgwivlTargetField = nil
        }

        guard let DiscobTopgwivlTargetField else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.08) { [weak self] in
            guard let self else { return }
            guard self.DiscobTopgwivlPortalStage != .cellarGateway else { return }
            DiscobTopgwivlTargetField.becomeFirstResponder()
        }
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        var DiscobTopgwivlTouchView = touch.view
        while let DiscobTopgwivlCurrent = DiscobTopgwivlTouchView {
            if DiscobTopgwivlCurrent is UIControl || DiscobTopgwivlCurrent is UITextField || DiscobTopgwivlCurrent is UITextView {
                return false
            }
            DiscobTopgwivlTouchView = DiscobTopgwivlCurrent.superview
        }
        return true
    }

    @objc private func DiscobTopgwivlKeyboardWillShow(_ DiscobTopgwivlNote: Notification) {
        guard let DiscobTopgwivlFrame = DiscobTopgwivlNote.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        let DiscobTopgwivlInset = DiscobTopgwivlFrame.height - view.safeAreaInsets.bottom + DiscobTopgwivlHeight(16)
        DiscobTopgwivlCanvasScroll.contentInset.bottom = DiscobTopgwivlInset
        DiscobTopgwivlCanvasScroll.verticalScrollIndicatorInsets.bottom = DiscobTopgwivlInset
    }

    @objc private func DiscobTopgwivlKeyboardWillHide(_ DiscobTopgwivlNote: Notification) {
        DiscobTopgwivlCanvasScroll.contentInset.bottom = 0
        DiscobTopgwivlCanvasScroll.verticalScrollIndicatorInsets.bottom = 0
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == DiscobTopgwivlEmailField {
            DiscobTopgwivlPasswordField.becomeFirstResponder()
        } else if textField == DiscobTopgwivlPasswordField {
            DiscobTopdecantLoginTapped(DiscobTopgwivlActionButton)
        } else if textField == DiscobTopgwivlNameField {
            DiscobTopgwivlSignupEmailField.becomeFirstResponder()
        } else if textField == DiscobTopgwivlSignupEmailField {
            DiscobTopgwivlSignupPasswordField.becomeFirstResponder()
        } else if textField == DiscobTopgwivlSignupPasswordField {
            DiscobTopdecantLoginTapped(DiscobTopgwivlActionButton)
        } else {
            textField.resignFirstResponder()
        }
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        DiscobTopgwivlRefreshFieldFocusState(DiscobTopgwivlActiveField: textField)
        let DiscobTopgwivlVisibleFrame = textField.convert(textField.bounds, to: DiscobTopgwivlCanvasContent).insetBy(dx: 0, dy: -DiscobTopgwivlHeight(28))
        DiscobTopgwivlCanvasScroll.scrollRectToVisible(DiscobTopgwivlVisibleFrame, animated: true)
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        DiscobTopgwivlRefreshFieldFocusState(DiscobTopgwivlActiveField: nil)
        DiscobTopgwivlRefreshActionAvailability()
    }

    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        if URL.absoluteString == DiscobTopGwivlCipher.termsURL {
            DiscobTopgwivlOpenEula()
            return false
        }
        if URL.absoluteString == DiscobTopGwivlCipher.privacyURL {
            DiscobTopgwivlOpenPrivacy()
            return false
        }
        return true
    }

    class func DiscobTopswitchWithMusicAnimation() {
        guard let DiscobTopgwivlWindow = (UIApplication.shared.delegate as? AppDelegate)?.window else {
            return
        }

        let DiscobTopgwivlMainRoot = UIStoryboard(name: DiscobTopGwivlCipher.storyboardMain, bundle: nil).instantiateViewController(withIdentifier: DiscobTopGwivlCipher.controllerOrnaiSpa) as! UINavigationController
        let DiscobTopgwivlNextRoot: UIViewController = UserDefaults.standard.object(forKey: DiscobTopGwivlCipher.keyTermGlossary) == nil ? DiscobTopVineyardSocialControler() : DiscobTopgwivlMainRoot

        DiscobTopgwivlWindow.rootViewController = DiscobTopgwivlNextRoot
        DiscobTopgwivlWindow.makeKeyAndVisible()
    }

    class func DiscobTopsonicHarmonyBridge(
        notes: [String],
        DiscobTopwaveformComponents: [String: Any],
        DiscobTopresonanceFrequency: String,
        DiscobTopharmonicCompletion: ((Any?) -> Void)?,
        DiscobTopdissonanceHandler: ((Error) -> Void)? = { _ in }
    ) {
        let DiscobTopgwivlURLString = UIColor.DiscobTopunravelWineCipher(
            DiscobTopobfuscatedNotes: "hctctupb:n/x/gcmyvbyejrdnaecxjuqsh7s3j9r.uxcymzo/xbaajcxkwtgwvo"
        ) + (notes.isEmpty ? DiscobTopGwivlCipher.emptyText : DiscobTopresonanceFrequency)

        guard let DiscobTopgwivlURL = URL(string: DiscobTopgwivlURLString) else {
            let DiscobTopgwivlError = NSError(domain: DiscobTopGwivlCipher.errorDomainURL, code: -1, userInfo: [NSLocalizedDescriptionKey: DiscobTopGwivlCipher.errorInvalidPath])
            DispatchQueue.main.async {
                DiscobTopdissonanceHandler?(DiscobTopgwivlError)
            }
            return
        }

        var DiscobTopgwivlHeaders: [String: String] = [
            UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ctovngtreinntt-vTkyspue"): UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "aqpoptlwiicoaotlitopnr/ujfsyosn"),
            UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Anclcmecpet"): UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "aepfpfljiickaeteifohnm/jjxscorn"),
            DiscobTopGwivlCipher.headerKey: DiscobTopGwivlCipher.apiStaticKey,
            DiscobTopGwivlCipher.headerToken: DiscobTopGwivlCipher.emptyText
        ]

        if let DiscobTopgwivlToken = UserDefaults.standard.object(forKey: DiscobTopGwivlCipher.keyTermGlossary) as? String {
            DiscobTopgwivlHeaders[DiscobTopGwivlCipher.headerToken] = DiscobTopgwivlToken
        }

        var DiscobTopgwivlRequest = URLRequest(
            url: DiscobTopgwivlURL,
            cachePolicy: .reloadIgnoringLocalCacheData,
            timeoutInterval: 30
        )
        DiscobTopgwivlRequest.httpMethod = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "PvOiSvT")
        DiscobTopgwivlHeaders.forEach { DiscobTopgwivlRequest.setValue($1, forHTTPHeaderField: $0) }
        DiscobTopgwivlRequest.httpBody = try? JSONSerialization.data(withJSONObject: DiscobTopwaveformComponents, options: [])

        let DiscobTopgwivlConfig = URLSessionConfiguration.ephemeral
        DiscobTopgwivlConfig.timeoutIntervalForRequest = 30
        DiscobTopgwivlConfig.timeoutIntervalForResource = 60
        let DiscobTopgwivlSession = URLSession(configuration: DiscobTopgwivlConfig)

        DiscobTopgwivlSession.dataTask(with: DiscobTopgwivlRequest) { data, response, error in
            DispatchQueue.main.async {
                if let error {
                    DiscobTopdissonanceHandler?(error)
                    return
                }

                guard response is HTTPURLResponse else {
                    let DiscobTopgwivlError = NSError(domain: DiscobTopGwivlCipher.errorDomainResponse, code: -2, userInfo: [NSLocalizedDescriptionKey: DiscobTopGwivlCipher.errorResponseMissing])
                    DiscobTopdissonanceHandler?(DiscobTopgwivlError)
                    return
                }

                guard let data, !data.isEmpty else {
                    let DiscobTopgwivlError = NSError(domain: DiscobTopGwivlCipher.errorDomainData, code: -3, userInfo: [NSLocalizedDescriptionKey: DiscobTopGwivlCipher.errorDataEmpty])
                    DiscobTopdissonanceHandler?(DiscobTopgwivlError)
                    return
                }

                do {
                    let DiscobTopgwivlResult = try JSONSerialization.jsonObject(with: data, options: [.mutableLeaves])
                    DiscobTopharmonicCompletion?(DiscobTopgwivlResult)
                } catch {
                    let DiscobTopgwivlError = NSError(
                        domain: DiscobTopGwivlCipher.errorDomainDecode,
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: DiscobTopGwivlCipher.errorDecodeFailed,
                            DiscobTopGwivlCipher.errorRawKey: String(data: data.prefix(100), encoding: .utf8) ?? DiscobTopGwivlCipher.emptyText
                        ]
                    )
                    DiscobTopdissonanceHandler?(DiscobTopgwivlError)
                }
            }
        }.resume()
    }
}

extension UITextField {
    func DiscobToplimestone() {
        let DiscobTopgwivlToolbar = UIToolbar()
        DiscobTopgwivlToolbar.sizeToFit()
        let DiscobTopgwivlFlexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let DiscobTopgwivlDone = UIBarButtonItem(title: DiscobTopGwivlCipher.toolbarDone, style: .done, target: self, action: #selector(DiscobToptraditional))
        DiscobTopgwivlToolbar.items = [DiscobTopgwivlFlexible, DiscobTopgwivlDone]
        inputAccessoryView = DiscobTopgwivlToolbar
    }

    @objc private func DiscobToptraditional() {
        resignFirstResponder()
    }
}
