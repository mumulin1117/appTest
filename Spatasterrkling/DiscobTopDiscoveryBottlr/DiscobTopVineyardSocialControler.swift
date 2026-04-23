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
    private let DiscobTopgwivlLedgerKey = "gwivl_tasting_cellar_records"

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

class DiscobTopVineyardSocialControler: UIViewController, ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding, PHPickerViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate, UIGestureRecognizerDelegate {
    struct DiscobTopVirtualTasting {
        let wineSample: String
        let comparisonNotes: [String]
    }

    private let DiscobTopvineyardHUD = DiscobTopVineyardProgressDisplay()
    private let DiscobTopgwivlCellarVault = DiscobTopGwivlCellarVault()
    private let DiscobTopgwivlCanvasBase = CGSize(width: 375, height: 812)
    private let DiscobTopgwivlTestEmail = "gwivl@gmail.com"
    private let DiscobTopgwivlTestPassword = "12345678"
    private let DiscobTopgwivlAvatarFallback = "gwivl-asset://DULIOSIAGwivl"
    private let DiscobTopgwivlBirthFallback = "1998-06"

    private var DiscobTopgwivlPortalStage: DiscobTopGwivlPortalStage = .cellarGateway
    private var DiscobTopgwivlGatewayIntent: DiscobTopGwivlGatewayIntent = .cellarLogIn
    private var DiscobTopgwivlPourFlow: DiscobTopGwivlPourFlow = .vineyardSignIn
    private var DiscobTopgwivlPendingBlend: DiscobTopGwivlPendingBlend?
    private var DiscobTopgwivlAvatarBlend: String?
    private var DiscobTopvirtualTasting: DiscobTopVirtualTasting?
    private var DiscobTopgwivlConsentBlend = false

    private let DiscobTopgwivlBackgroundView = UIImageView(image: UIImage(named: "hongjiaufb"))
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
    private let DiscobTopgwivlBrandImage = UIImageView(image: UIImage(named: "DULIOSIAGwivl"))
    private let DiscobTopgwivlHeroTitle = UILabel()
    private let DiscobTopgwivlHeroAccentView = UIImageView(image: UIImage(named: "normalButtonBdf"))
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
    private let DiscobTopgwivlGenderSegment = UISegmentedControl(items: ["Female", "Male", "Other"])
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
        DiscobTopgwivlAvatarHintLabel.text = ""

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
                string: "By continuing you agree to our ",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.38),
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular)
            ]
        )
        DiscobTopgwivlConsentBase.append(NSAttributedString(
            string: "<Terms of Service>",
            attributes: [
                .foregroundColor: UIColor.white,
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular),
                .link: URL(string: "gwivl://terms")!
            ]
        ))
        DiscobTopgwivlConsentBase.append(NSAttributedString(
            string: "\nand ",
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.38),
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular)
            ]
        ))
        DiscobTopgwivlConsentBase.append(NSAttributedString(
            string: "<Privacy Policy>.",
            attributes: [
                .foregroundColor: UIColor.white,
                .font: UIFont.systemFont(ofSize: DiscobTopgwivlWidth(12.6), weight: .regular),
                .link: URL(string: "gwivl://privacy")!
            ]
        ))
        DiscobTopgwivlConsentTextView.attributedText = DiscobTopgwivlConsentBase
    }

    private func DiscobTopgwivlPrepareFields() {
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlEmailField,
            DiscobTopgwivlPlaceholder: "Enter email address",
            DiscobTopgwivlKeyboard: .emailAddress,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: "envelope",
            DiscobTopgwivlContentBlend: .emailAddress
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlPasswordField,
            DiscobTopgwivlPlaceholder: "Enter password",
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: true,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: "lock",
            DiscobTopgwivlContentBlend: .password
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlNameField,
            DiscobTopgwivlPlaceholder: "Enter your name",
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .words,
            DiscobTopgwivlSymbolBlend: "person",
            DiscobTopgwivlContentBlend: .name
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlSignupEmailField,
            DiscobTopgwivlPlaceholder: "Enter email address",
            DiscobTopgwivlKeyboard: .emailAddress,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: "envelope",
            DiscobTopgwivlContentBlend: .emailAddress
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlSignupPasswordField,
            DiscobTopgwivlPlaceholder: "Enter password",
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: true,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: "lock",
            DiscobTopgwivlContentBlend: .newPassword
        )
        DiscobTopgwivlConfigureField(
            DiscobTopgwivlBirthField,
            DiscobTopgwivlPlaceholder: "Birth month",
            DiscobTopgwivlKeyboard: .default,
            DiscobTopgwivlSecure: false,
            DiscobTopgwivlCapitalization: .none,
            DiscobTopgwivlSymbolBlend: "calendar",
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
        DiscobTopgwivlGatewayLoginButton.setBackgroundImage(UIImage(named: "normalButtonBdf"), for: .normal)
        DiscobTopgwivlGatewayLoginButton.setTitle("Log in", for: .normal)
        DiscobTopgwivlGatewayLoginButton.setTitleColor(.white, for: .normal)
        DiscobTopgwivlGatewayLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: DiscobTopgwivlWidth(19), weight: .heavy)
        DiscobTopgwivlGatewayLoginButton.addTarget(self, action: #selector(DiscobTopgwivlGatewayLoginTapped), for: .touchUpInside)

        DiscobTopgwivlGatewaySignupButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlGatewaySignupButton.layer.cornerRadius = DiscobTopgwivlHeight(28)
        DiscobTopgwivlGatewaySignupButton.clipsToBounds = true
        DiscobTopgwivlGatewaySignupButton.setBackgroundImage(UIImage(named: "signupbg"), for: .normal)
        DiscobTopgwivlGatewaySignupButton.setTitle("Sign up", for: .normal)
        DiscobTopgwivlGatewaySignupButton.setTitleColor(.white, for: .normal)
        DiscobTopgwivlGatewaySignupButton.titleLabel?.font = UIFont.systemFont(ofSize: DiscobTopgwivlWidth(19), weight: .heavy)
        DiscobTopgwivlGatewaySignupButton.addTarget(self, action: #selector(DiscobTopgwivlGatewaySignupTapped), for: .touchUpInside)

        DiscobTopgwivlConsentButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlConsentButton.backgroundColor = .clear
        DiscobTopgwivlConsentButton.addTarget(self, action: #selector(DiscobTopgwivlConsentTapped), for: .touchUpInside)
        DiscobTopgwivlRefreshConsentVisuals()

        DiscobTopgwivlCloseButton.tintColor = .white
        DiscobTopgwivlCloseButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        DiscobTopgwivlCloseButton.setPreferredSymbolConfiguration(
            UIImage.SymbolConfiguration(pointSize: DiscobTopgwivlWidth(22), weight: .light),
            forImageIn: .normal
        )
        DiscobTopgwivlCloseButton.addTarget(self, action: #selector(DiscobTopgwivlClosePortalTapped), for: .touchUpInside)
        DiscobTopgwivlCloseButton.isHidden = true

        DiscobTopgwivlActionButton.layer.cornerRadius = DiscobTopgwivlHeight(26)
        DiscobTopgwivlActionButton.clipsToBounds = true
        DiscobTopgwivlActionButton.setBackgroundImage(UIImage(named: "signinnowGwvil"), for: .normal)
        DiscobTopgwivlActionButton.setTitle(nil, for: .normal)
        DiscobTopgwivlActionButton.addTarget(self, action: #selector(DiscobTopdecantLoginTapped(_:)), for: .touchUpInside)

        DiscobTopgwivlCancelButton.isHidden = true

        DiscobTopgwivlAppleButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlAppleButton.backgroundColor = .clear
        DiscobTopgwivlAppleButton.setImage(UIImage(named: "aplpleicon"), for: .normal)
        DiscobTopgwivlAppleButton.imageView?.contentMode = .scaleAspectFit
        DiscobTopgwivlAppleButton.addTarget(self, action: #selector(DiscobTopgwivlAppleTapped), for: .touchUpInside)

        DiscobTopgwivlEulaButton.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopgwivlEulaButton.setBackgroundImage(UIImage(named: "elusBdg"), for: .normal)
        DiscobTopgwivlEulaButton.addTarget(self, action: #selector(DiscobTopgwivlOpenEula), for: .touchUpInside)
    }

    private func DiscobTopgwivlPrepareBirthPicker() {
        DiscobTopgwivlBirthPicker.datePickerMode = .date
        DiscobTopgwivlBirthPicker.preferredDatePickerStyle = .wheels
        DiscobTopgwivlBirthPicker.maximumDate = Date()
        DiscobTopgwivlBirthPicker.locale = Locale(identifier: "en_US_POSIX")
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
            self.DiscobTopgwivlHeroTitle.text = DiscobTopgwivlSignInMode ? "Login" : "Sign Up"
            self.DiscobTopgwivlActionButton.setBackgroundImage(UIImage(named: "signinnowGwvil"), for: .normal)
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
            self.DiscobTopgwivlBackgroundView.image = UIImage(named: DiscobTopgwivlGatewayVisible ? "hongjiaufb" : "DULIOSIRterroirExpression")
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
        let DiscobTopgwivlConsentImage = UIImage(named: DiscobTopgwivlConsentBlend ? "DULIOSIAGayynge" : "DULIOSIRsdcsdfaaa")
        if let DiscobTopgwivlConsentImage {
            DiscobTopgwivlConsentButton.setBackgroundImage(DiscobTopgwivlConsentImage, for: .normal)
            DiscobTopgwivlConsentButton.layer.borderWidth = 0
        } else {
            DiscobTopgwivlConsentButton.setBackgroundImage(nil, for: .normal)
            DiscobTopgwivlConsentButton.layer.cornerRadius = DiscobTopgwivlWidth(14)
            DiscobTopgwivlConsentButton.layer.borderWidth = 1.4
            DiscobTopgwivlConsentButton.layer.borderColor = UIColor.white.withAlphaComponent(DiscobTopgwivlConsentBlend ? 0.7 : 0.24).cgColor
            DiscobTopgwivlConsentButton.setTitle("", for: .normal)
        }
    }

    private func DiscobTopgwivlEnsureConsent() -> Bool {
        guard DiscobTopgwivlConsentBlend else {
            DiscobTopshowAlert(DiscobTopmessage: "Agree to the Terms of Service and Privacy Policy before entering Gwivl.")
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
        let DiscobTopgwivlEmail = DiscobTopgwivlEmailField.text?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ?? ""
        let DiscobTopgwivlPassword = DiscobTopgwivlPasswordField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

        guard !DiscobTopgwivlEmail.isEmpty, !DiscobTopgwivlPassword.isEmpty else {
            DiscobTopshowAlert(DiscobTopmessage: "Enter an email and password first.")
            return
        }

        guard DiscobTopgwivlEmail.contains("@"), DiscobTopgwivlPassword.count >= 6 else {
            DiscobTopshowAlert(DiscobTopmessage: "Check the email format and keep the password at least six characters.")
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
        let DiscobTopgwivlDisplay = DiscobTopgwivlNameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let DiscobTopgwivlEmail = DiscobTopgwivlSignupEmailField.text?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ?? ""
        let DiscobTopgwivlPassword = DiscobTopgwivlSignupPasswordField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

        guard !DiscobTopgwivlEmail.isEmpty, !DiscobTopgwivlPassword.isEmpty else {
            DiscobTopshowAlert(DiscobTopmessage: "Enter an email and password first.")
            return
        }

        guard DiscobTopgwivlEmail.contains("@"), DiscobTopgwivlPassword.count >= 6 else {
            DiscobTopshowAlert(DiscobTopmessage: "Check the cellar email format and keep the password at least six characters.")
            return
        }

        guard DiscobTopgwivlDisplay.count >= 2 else {
            DiscobTopshowAlert(DiscobTopmessage: "Choose a username with at least two characters.")
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
        DiscobTopvineyardHUD.DiscobTopupdateVintageNotes("Pairing the cellar...")

        let DiscobTopgwivlPayload: [String: Any] = [
            "certificationMeaning": DiscobTopgwivlPending.DiscobTopgwivlPasswordBlend,
            "appellationRules": DiscobTopgwivlPending.DiscobTopgwivlEmailBlend,
            "traditionBackground": "98860915"
        ]

        DiscobTopVineyardSocialControler.DiscobTopsonicHarmonyBridge(
            notes: DiscobTopgwivlTastingNotes(),
            DiscobTopwaveformComponents: DiscobTopgwivlPayload,
            DiscobTopresonanceFrequency: "/qpdmumexrrz/nusyqx"
        ) { [weak self] DiscobTopgwivlResult in
            guard let self else { return }
            self.DiscobTopvineyardHUD.DiscobTopconcludeFermentation()
            guard let DiscobTopgwivlProfile = self.DiscobTopgwivlResolveServerProfile(DiscobTopgwivlResult) else {
                self.DiscobTopshowAlert(DiscobTopmessage: "The cellar login response could not be parsed.")
                return
            }

            let DiscobTopgwivlMerged = self.DiscobTopgwivlMergeCellar(
                DiscobTopgwivlServerProfile: DiscobTopgwivlProfile,
                DiscobTopgwivlPending: DiscobTopgwivlPending,
                DiscobTopgwivlStoredCellar: DiscobTopgwivlStoredCellar
            )

            self.DiscobTopgwivlPersistActiveCellar(DiscobTopgwivlProfile: DiscobTopgwivlProfile, DiscobTopgwivlCellar: DiscobTopgwivlMerged)
            self.DiscobTopgwivlCellarVault.DiscobTopreserveCellar(DiscobTopgwivlMerged)
            self.DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view, DiscobTopmessage: "Welcome back to Gwivl.")
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
        if let DiscobTopgwivlData = DiscobTopgwivlPayload["data"] as? [String: Any] {
            return DiscobTopgwivlData
        }
        return DiscobTopgwivlPayload
    }

    private func DiscobTopgwivlResolveAuthToken(from DiscobTopgwivlProfile: [String: Any]) -> String? {
        [
            "termGlossary",
            "token",
            "Token",
            "accessToken",
            "access_token",
            "authorization",
            "Authorization"
        ].compactMap { DiscobTopgwivlString(from: DiscobTopgwivlProfile[$0]) }.first
    }

    private func DiscobTopgwivlResolveSsoIdentity(from DiscobTopgwivlProfile: [String: Any], DiscobTopgwivlFallback: String?) -> String? {
        [
            "Id",
            "ID",
            "id",
            "userId",
            "userID",
            "accountId",
            "memberId"
        ].compactMap { DiscobTopgwivlString(from: DiscobTopgwivlProfile[$0]) }.first ?? DiscobTopgwivlFallback
    }

    private func DiscobTopgwivlMergeCellar(
        DiscobTopgwivlServerProfile: [String: Any],
        DiscobTopgwivlPending: DiscobTopGwivlPendingBlend,
        DiscobTopgwivlStoredCellar: DiscobTopGwivlCellarRecord?
    ) -> DiscobTopGwivlCellarRecord {
        let DiscobTopgwivlDisplay = DiscobTopgwivlString(from: DiscobTopgwivlServerProfile["winemakingProcess"])
            ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlDisplayCellar
            ?? DiscobTopgwivlPending.DiscobTopgwivlDisplayBlend
            ?? DiscobTopgwivlDisplaySeed(DiscobTopgwivlEmail: DiscobTopgwivlPending.DiscobTopgwivlEmailBlend)

        let DiscobTopgwivlAvatar = DiscobTopgwivlString(from: DiscobTopgwivlServerProfile["vineyardInsights"])
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

        UserDefaults.standard.set(DiscobTopgwivlToken, forKey: "termGlossary")
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlDisplayCellar, forKey: "winemakingProcess")
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlAvatarCellar, forKey: "vineyardInsights")
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlEmailCellar, forKey: "gwivl_active_email")
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlBirthCellar, forKey: "gwivl_active_birth_month")
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlGenderCellar, forKey: "gwivl_active_gender")
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlAppleUserCellar, forKey: "gwivl_active_apple_user")
        UserDefaults.standard.set(DiscobTopgwivlCellar.DiscobTopgwivlIdentityCellar, forKey: "gwivl_active_identity")
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
        let DiscobTopgwivlPrefix = DiscobTopgwivlEmail.components(separatedBy: "@").first ?? "Gwivl"
        let DiscobTopgwivlStyled = DiscobTopgwivlPrefix.replacingOccurrences(of: ".", with: " ")
        return DiscobTopgwivlStyled
            .split(separator: " ")
            .map { $0.prefix(1).uppercased() + $0.dropFirst().lowercased() }
            .joined(separator: " ")
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
            DiscobTopshowAlert(DiscobTopmessage: "Apple cellar authorization did not return a usable token.")
            return
        }

        let DiscobTopgwivlAppleUser = DiscobTopgwivlCredential.user
        let DiscobTopgwivlFullName = [DiscobTopgwivlCredential.fullName?.givenName, DiscobTopgwivlCredential.fullName?.familyName]
            .compactMap { $0 }
            .filter { !$0.isEmpty }
            .joined(separator: " ")

        DiscobTopvineyardHUD.DiscobTopcommenceFermentation(DiscobTopin: view)
        DiscobTopvineyardHUD.DiscobTopupdateVintageNotes("Opening the Apple cellar...")

        let DiscobTopgwivlPayload: [String: Any] = [
            "palateDepth": DiscobTopgwivlIdentityToken,
            "vintageSelection": DiscobTopSipEtiquette.DiscobTopfriendGathering() ?? "2345608",
            "aromaProfile": "98860915"
        ]

        DiscobTopVineyardSocialControler.DiscobTopsonicHarmonyBridge(
            notes: ["apple", "cellar", "toast"],
            DiscobTopwaveformComponents: DiscobTopgwivlPayload,
            DiscobTopresonanceFrequency: "/qpdmumexrz/nusyqx"
        ) { [weak self] DiscobTopgwivlResult in
            guard let self else { return }
            self.DiscobTopvineyardHUD.DiscobTopconcludeFermentation()
            let DiscobTopgwivlPayload = self.DiscobTopgwivlResolveServerProfile(DiscobTopgwivlResult) ?? [:]
            guard self.DiscobTopgwivlResolveAuthToken(from: DiscobTopgwivlPayload) != nil else {
                self.DiscobTopshowAlert(DiscobTopmessage: "Apple login did not return a usable token.")
                return
            }

            let DiscobTopgwivlStoredCellar = self.DiscobTopgwivlResolveCellar(
                DiscobTopgwivlEmail: self.DiscobTopgwivlString(from: DiscobTopgwivlPayload["email"]) ?? "",
                DiscobTopgwivlAppleUser: DiscobTopgwivlAppleUser
            )

            let DiscobTopgwivlEmail = self.DiscobTopgwivlString(from: DiscobTopgwivlPayload["email"])
                ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlEmailCellar
                ?? "\(DiscobTopgwivlAppleUser)@gwivl.apple"
            let DiscobTopgwivlIdentity = self.DiscobTopgwivlResolveSsoIdentity(from: DiscobTopgwivlPayload, DiscobTopgwivlFallback: DiscobTopgwivlAppleUser) ?? DiscobTopgwivlAppleUser
            let DiscobTopgwivlGender = self.DiscobTopgwivlNormalizedGender(self.DiscobTopgwivlString(from: DiscobTopgwivlPayload["gender"]) ?? DiscobTopgwivlStoredCellar?.DiscobTopgwivlGenderCellar)
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
            self.DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view, DiscobTopmessage: "Welcome back to Gwivl.")
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
        let DiscobTopgwivlURL = DiscobTopgwivlDirectory?.appendingPathComponent("gwivl_avatar_\(UUID().uuidString).jpg")
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
            DiscobTopgwivlAvatarButton.setImage(UIImage(systemName: "plus"), for: .normal)
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
        if DiscobTopgwivlToken.hasPrefix("gwivl-asset://") {
            let DiscobTopgwivlAsset = String(DiscobTopgwivlToken.dropFirst("gwivl-asset://".count))
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
        DiscobTopgwivlFormatter.locale = Locale(identifier: "en_US_POSIX")
        DiscobTopgwivlFormatter.dateFormat = "yyyy-MM"
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
        let DiscobTopgwivlMaster = DiscobTopMasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [Date().addingTimeInterval(259200)])
        let DiscobTopgwivlLink = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute(DiscobTopmasterio: DiscobTopgwivlMaster, DiscobTopdestination: .subscriptionAged)
        let DiscobTopgwivlReader = DiscobTopServingAssistantCller(DiscobTopswapStories: DiscobTopgwivlLink, DiscobTopispresntShow: true)
        present(DiscobTopgwivlReader, animated: true)
    }

    @IBAction func DiscobTopreserveSelection(_ sender: Any) {
        let DiscobTopgwivlMaster = DiscobTopMasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [Date().addingTimeInterval(259200)])
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
        switch DiscobTopgwivlLower {
        case "female", "f", "woman", "2":
            return "Female"
        case "male", "m", "man", "1":
            return "Male"
        case "other", "unknown", "0":
            return "Other"
        default:
            return DiscobTopgwivlRaw.capitalized
        }
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
        let DiscobTopgwivlSamples = [
            ("Cabernet Sauvignon", ["Blackcurrant", "Tobacco", "Cedar"]),
            ("Sauvignon Blanc", ["Gooseberry", "Grassy", "Grapefruit"])
        ].randomElement() ?? ("Merlot", ["Plum", "Cocoa", "Smoke"])
        DiscobTopvirtualTasting = DiscobTopVirtualTasting(wineSample: DiscobTopgwivlSamples.0, comparisonNotes: DiscobTopgwivlSamples.1.shuffled())
    }

    private func DiscobTopgwivlTastingNotes() -> [String] {
        let DiscobTopgwivlNotes = [
            ["honeysuckle", "peach", "brioche"],
            ["blackcurrant", "cocoa", "cedar"],
            ["guava", "basalt", "saffron"],
            ["elderflower", "citrus", "mineral"]
        ]
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
        let DiscobTopgwivlAlert = UIAlertController(title: "", message: DiscobTopmessage, preferredStyle: .alert)
        DiscobTopgwivlAlert.addAction(UIAlertAction(title: "OK", style: .default))
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
        if URL.absoluteString == "gwivl://terms" {
            DiscobTopgwivlOpenEula()
            return false
        }
        if URL.absoluteString == "gwivl://privacy" {
            DiscobTopgwivlOpenPrivacy()
            return false
        }
        return true
    }

    class func DiscobTopswitchWithMusicAnimation() {
        guard let DiscobTopgwivlWindow = (UIApplication.shared.delegate as? AppDelegate)?.window else {
            return
        }

        let DiscobTopgwivlMainRoot = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OrnaiSpa") as! UINavigationController
        let DiscobTopgwivlNextRoot: UIViewController = UserDefaults.standard.object(forKey: "termGlossary") == nil ? DiscobTopVineyardSocialControler() : DiscobTopgwivlMainRoot

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
        ) + (notes.isEmpty ? "" : DiscobTopresonanceFrequency)

        guard let DiscobTopgwivlURL = URL(string: DiscobTopgwivlURLString) else {
            let DiscobTopgwivlError = NSError(domain: "GwivlURL", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid cellar path"])
            DispatchQueue.main.async {
                DiscobTopdissonanceHandler?(DiscobTopgwivlError)
            }
            return
        }

        var DiscobTopgwivlHeaders: [String: String] = [
            UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Ctovngtreinntt-vTkyspue"): UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "aqpoptlwiicoaotlitopnr/ujfsyosn"),
            UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Anclcmecpet"): UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "aepfpfljiickaeteifohnm/jjxscorn"),
            UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "kceay"): "98860915",
            UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "tqojkwejn"): ""
        ]

        if let DiscobTopgwivlToken = UserDefaults.standard.object(forKey: "termGlossary") as? String {
            DiscobTopgwivlHeaders[UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "tqojkwejn")] = DiscobTopgwivlToken
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
                    let DiscobTopgwivlError = NSError(domain: "GwivlResponse", code: -2, userInfo: [NSLocalizedDescriptionKey: "Cellar feedback missing"])
                    DiscobTopdissonanceHandler?(DiscobTopgwivlError)
                    return
                }

                guard let data, !data.isEmpty else {
                    let DiscobTopgwivlError = NSError(domain: "GwivlData", code: -3, userInfo: [NSLocalizedDescriptionKey: "Empty cellar data"])
                    DiscobTopdissonanceHandler?(DiscobTopgwivlError)
                    return
                }

                do {
                    let DiscobTopgwivlResult = try JSONSerialization.jsonObject(with: data, options: [.mutableLeaves])
                    DiscobTopharmonicCompletion?(DiscobTopgwivlResult)
                } catch {
                    let DiscobTopgwivlError = NSError(
                        domain: "GwivlDecode",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Cellar decode failed",
                            "gwivlRaw": String(data: data.prefix(100), encoding: .utf8) ?? ""
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
        let DiscobTopgwivlDone = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(DiscobToptraditional))
        DiscobTopgwivlToolbar.items = [DiscobTopgwivlFlexible, DiscobTopgwivlDone]
        inputAccessoryView = DiscobTopgwivlToolbar
    }

    @objc private func DiscobToptraditional() {
        resignFirstResponder()
    }
}
