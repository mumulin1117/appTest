import UIKit
import Toast_Swift
import PhotosUI

private enum RackHubOrbitStage {
    case rackHubLoginOrbit
    case rackHubProfileOrbit
    case rackHubDiscoveryOrbit
}

private enum RackHubOrbitSheet {
    case rackHubGenderOrbit
    case rackHubBirthOrbit
}

private enum RackHubOrbitGender: String, CaseIterable, Codable {
    case rackHubMenOrbit = "Men"
    case rackHubWomenOrbit = "Women"
}

private struct RackHubOrbitArchive: Codable {
    var rackHubEmailOrbit: String
    var rackHubPasswordOrbit: String
    var rackHubNameOrbit: String
    var rackHubBirthTimeOrbit: TimeInterval?
    var rackHubAvatarDataOrbit: Data?
    var rackHubGenderOrbit: RackHubOrbitGender
    var rackHubAgeLowerOrbit: Int
    var rackHubAgeUpperOrbit: Int
    var rackHubCompletedOrbit: Bool
    var rackHubLoggedOrbit: Bool
    var rackHubRefreshTimeOrbit: TimeInterval
}

private enum RackHubOrbitVault {
    private static let rackHubArchiveKeyOrbit = "rackHubOrbitArchiveVault"
    private static let rackHubCurrentEmailKeyOrbit = "rackHubOrbitCurrentEmail"
    private static let rackHubCurrentNameKeyOrbit = "rackHubOrbitCurrentName"
    private static let rackHubCurrentBirthKeyOrbit = "rackHubOrbitCurrentBirthTime"
    private static let rackHubCurrentGenderKeyOrbit = "rackHubOrbitCurrentGender"
    private static let rackHubCurrentLowerAgeKeyOrbit = "rackHubOrbitCurrentLowerAge"
    private static let rackHubCurrentUpperAgeKeyOrbit = "rackHubOrbitCurrentUpperAge"
    private static let rackHubCurrentAvatarKeyOrbit = "rackHubOrbitCurrentAvatar"
    private static let rackHubCurrentLoginFlagKeyOrbit = "rackHubOrbitCurrentLoginFlag"

    static func rackHubFetchArchiveMapOrbit() -> [String: RackHubOrbitArchive] {
        guard let rackHubArchiveDataOrbit = UserDefaults.standard.data(forKey: rackHubArchiveKeyOrbit) else {
            return [:]
        }
        let rackHubDecoderOrbit = JSONDecoder()
        return (try? rackHubDecoderOrbit.decode([String: RackHubOrbitArchive].self, from: rackHubArchiveDataOrbit)) ?? [:]
    }

    static func rackHubSaveArchiveMapOrbit(_ rackHubArchiveMapOrbit: [String: RackHubOrbitArchive]) {
        let rackHubEncoderOrbit = JSONEncoder()
        guard let rackHubArchiveDataOrbit = try? rackHubEncoderOrbit.encode(rackHubArchiveMapOrbit) else {
            return
        }
        UserDefaults.standard.set(rackHubArchiveDataOrbit, forKey: rackHubArchiveKeyOrbit)
    }

    static func rackHubSyncCurrentOrbit(_ rackHubArchiveOrbit: RackHubOrbitArchive) {
        UserDefaults.standard.set(rackHubArchiveOrbit.rackHubEmailOrbit, forKey: rackHubCurrentEmailKeyOrbit)
        UserDefaults.standard.set(rackHubArchiveOrbit.rackHubNameOrbit, forKey: rackHubCurrentNameKeyOrbit)
        UserDefaults.standard.set(rackHubArchiveOrbit.rackHubBirthTimeOrbit, forKey: rackHubCurrentBirthKeyOrbit)
        UserDefaults.standard.set(rackHubArchiveOrbit.rackHubGenderOrbit.rawValue, forKey: rackHubCurrentGenderKeyOrbit)
        UserDefaults.standard.set(rackHubArchiveOrbit.rackHubAgeLowerOrbit, forKey: rackHubCurrentLowerAgeKeyOrbit)
        UserDefaults.standard.set(rackHubArchiveOrbit.rackHubAgeUpperOrbit, forKey: rackHubCurrentUpperAgeKeyOrbit)
        UserDefaults.standard.set(rackHubArchiveOrbit.rackHubLoggedOrbit, forKey: rackHubCurrentLoginFlagKeyOrbit)
        if let rackHubAvatarDataOrbit = rackHubArchiveOrbit.rackHubAvatarDataOrbit {
            UserDefaults.standard.set(rackHubAvatarDataOrbit, forKey: rackHubCurrentAvatarKeyOrbit)
        } else {
            UserDefaults.standard.removeObject(forKey: rackHubCurrentAvatarKeyOrbit)
        }
    }
}

private final class RackHubOrbitGradientButton: UIButton {
//    private let rackHubGradientLayerOrbit = CAGradientLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setBackgroundImage(UIImage.init(named: "CUEBOSHTasnzju"), for: .normal)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    override func layoutSubviews() {
//        super.layoutSubviews()
//        rackHubGradientLayerOrbit.frame = bounds
//        layer.cornerRadius = bounds.height * 0.5
//    }

    func rackHubSetEnabledOrbit(_ rackHubEnabledOrbit: Bool) {
        isEnabled = rackHubEnabledOrbit
        alpha = rackHubEnabledOrbit ? 1.0 : 0.45
    }
}

private final class RackHubOrbitAgeRangeSlider: UIControl {
    private let rackHubTrackOrbit = UIView()
    private let rackHubActiveTrackOrbit = UIView()
    private let rackHubLowerThumbOrbit = UIView()
    private let rackHubUpperThumbOrbit = UIView()
    private let rackHubLowerBadgeOrbit = UILabel()
    private let rackHubUpperBadgeOrbit = UILabel()
    private let rackHubThumbSizeOrbit: CGFloat = 22

    var rackHubMinimumOrbit = 18
    var rackHubMaximumOrbit = 60
    var rackHubLowerValueOrbit = 22 {
        didSet {
            rackHubLowerValueOrbit = min(max(rackHubLowerValueOrbit, rackHubMinimumOrbit), rackHubUpperValueOrbit - 1)
            rackHubRefreshThumbOrbit()
        }
    }
    var rackHubUpperValueOrbit = 34 {
        didSet {
            rackHubUpperValueOrbit = max(min(rackHubUpperValueOrbit, rackHubMaximumOrbit), rackHubLowerValueOrbit + 1)
            rackHubRefreshThumbOrbit()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        rackHubTrackOrbit.backgroundColor = UIColor.white.withAlphaComponent(0.28)
        rackHubTrackOrbit.layer.cornerRadius = 1.5
        rackHubActiveTrackOrbit.backgroundColor = UIColor(red: 0.84, green: 0.23, blue: 0.95, alpha: 1)
        rackHubActiveTrackOrbit.layer.cornerRadius = 1.5
        [rackHubLowerThumbOrbit, rackHubUpperThumbOrbit].forEach { rackHubThumbOrbit in
            rackHubThumbOrbit.backgroundColor = UIColor(red: 0.71, green: 0.27, blue: 0.96, alpha: 1)
            rackHubThumbOrbit.layer.cornerRadius = rackHubThumbSizeOrbit * 0.5
            rackHubThumbOrbit.layer.borderWidth = 3
            rackHubThumbOrbit.layer.borderColor = UIColor.white.withAlphaComponent(0.16).cgColor
            addSubview(rackHubThumbOrbit)
        }
        [rackHubLowerBadgeOrbit, rackHubUpperBadgeOrbit].forEach { rackHubBadgeOrbit in
            rackHubBadgeOrbit.font = UIFont.systemFont(ofSize: 11, weight: .medium)
            rackHubBadgeOrbit.textColor = UIColor.white.withAlphaComponent(0.68)
            rackHubBadgeOrbit.textAlignment = .center
            addSubview(rackHubBadgeOrbit)
        }
        addSubview(rackHubTrackOrbit)
        addSubview(rackHubActiveTrackOrbit)
        let rackHubLowerPanOrbit = UIPanGestureRecognizer(target: self, action: #selector(rackHubHandleLowerOrbit(_:)))
        let rackHubUpperPanOrbit = UIPanGestureRecognizer(target: self, action: #selector(rackHubHandleUpperOrbit(_:)))
        rackHubLowerThumbOrbit.addGestureRecognizer(rackHubLowerPanOrbit)
        rackHubUpperThumbOrbit.addGestureRecognizer(rackHubUpperPanOrbit)
        rackHubLowerThumbOrbit.isUserInteractionEnabled = true
        rackHubUpperThumbOrbit.isUserInteractionEnabled = true
        rackHubRefreshThumbOrbit()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let rackHubTrackYOrbit = bounds.height - 18
        let rackHubInsetOrbit = rackHubThumbSizeOrbit * 0.5
        rackHubTrackOrbit.frame = CGRect(x: rackHubInsetOrbit, y: rackHubTrackYOrbit, width: bounds.width - rackHubThumbSizeOrbit, height: 3)
        rackHubRefreshThumbOrbit()
    }

    @objc private func rackHubHandleLowerOrbit(_ rackHubPanOrbit: UIPanGestureRecognizer) {
        let rackHubLocationOrbit = rackHubPanOrbit.location(in: self)
        let rackHubMappedOrbit = rackHubValueOrbit(for: rackHubLocationOrbit.x)
        rackHubLowerValueOrbit = min(rackHubMappedOrbit, rackHubUpperValueOrbit - 1)
        sendActions(for: .valueChanged)
    }

    @objc private func rackHubHandleUpperOrbit(_ rackHubPanOrbit: UIPanGestureRecognizer) {
        let rackHubLocationOrbit = rackHubPanOrbit.location(in: self)
        let rackHubMappedOrbit = rackHubValueOrbit(for: rackHubLocationOrbit.x)
        rackHubUpperValueOrbit = max(rackHubMappedOrbit, rackHubLowerValueOrbit + 1)
        sendActions(for: .valueChanged)
    }

    private func rackHubValueOrbit(for rackHubLocationXOrbit: CGFloat) -> Int {
        let rackHubInsetOrbit = rackHubThumbSizeOrbit * 0.5
        let rackHubSpanOrbit = max(bounds.width - rackHubThumbSizeOrbit, 1)
        let rackHubProgressOrbit = min(max((rackHubLocationXOrbit - rackHubInsetOrbit) / rackHubSpanOrbit, 0), 1)
        let rackHubRangeOrbit = rackHubMaximumOrbit - rackHubMinimumOrbit
        return Int(round(CGFloat(rackHubMinimumOrbit) + CGFloat(rackHubRangeOrbit) * rackHubProgressOrbit))
    }

    private func rackHubXOrbit(for rackHubValueOrbit: Int) -> CGFloat {
        let rackHubInsetOrbit = rackHubThumbSizeOrbit * 0.5
        let rackHubSpanOrbit = max(bounds.width - rackHubThumbSizeOrbit, 1)
        let rackHubProgressOrbit = CGFloat(rackHubValueOrbit - rackHubMinimumOrbit) / CGFloat(max(rackHubMaximumOrbit - rackHubMinimumOrbit, 1))
        return rackHubInsetOrbit + rackHubSpanOrbit * rackHubProgressOrbit
    }

    private func rackHubRefreshThumbOrbit() {
        guard bounds.width > 0 else { return }
        let rackHubLowerXOrbit = rackHubXOrbit(for: rackHubLowerValueOrbit)
        let rackHubUpperXOrbit = rackHubXOrbit(for: rackHubUpperValueOrbit)
        let rackHubTrackYOrbit = bounds.height - 18
        rackHubActiveTrackOrbit.frame = CGRect(x: rackHubLowerXOrbit, y: rackHubTrackYOrbit, width: max(rackHubUpperXOrbit - rackHubLowerXOrbit, 3), height: 3)
        rackHubLowerThumbOrbit.frame = CGRect(x: rackHubLowerXOrbit - rackHubThumbSizeOrbit * 0.5, y: rackHubTrackYOrbit - 9.5, width: rackHubThumbSizeOrbit, height: rackHubThumbSizeOrbit)
        rackHubUpperThumbOrbit.frame = CGRect(x: rackHubUpperXOrbit - rackHubThumbSizeOrbit * 0.5, y: rackHubTrackYOrbit - 9.5, width: rackHubThumbSizeOrbit, height: rackHubThumbSizeOrbit)
        rackHubLowerBadgeOrbit.frame = CGRect(x: rackHubLowerXOrbit - 18, y: rackHubTrackYOrbit - 28, width: 36, height: 14)
        rackHubUpperBadgeOrbit.frame = CGRect(x: rackHubUpperXOrbit - 18, y: rackHubTrackYOrbit - 28, width: 36, height: 14)
        rackHubLowerBadgeOrbit.text = "\(rackHubLowerValueOrbit)"
        rackHubUpperBadgeOrbit.text = "\(rackHubUpperValueOrbit)"
    }
}

class CUEBOSHTWBreakMastersController: ZhuNaBE, UITextFieldDelegate, UITextViewDelegate, PHPickerViewControllerDelegate {
    private let rackHubReferenceWidthOrbit: CGFloat = 375
    private let rackHubReferenceHeightOrbit: CGFloat = 812
    private let rackHubBackdropGradientOrbit = CAGradientLayer()
    private var rackHubStageOrbit: RackHubOrbitStage = .rackHubLoginOrbit
    private var rackHubArchiveMapOrbit = RackHubOrbitVault.rackHubFetchArchiveMapOrbit()
    private var rackHubDraftOrbit = RackHubOrbitArchive(
        rackHubEmailOrbit: "",
        rackHubPasswordOrbit: "",
        rackHubNameOrbit: "",
        rackHubBirthTimeOrbit: nil,
        rackHubAvatarDataOrbit: nil,
        rackHubGenderOrbit: .rackHubMenOrbit,
        rackHubAgeLowerOrbit: 22,
        rackHubAgeUpperOrbit: 34,
        rackHubCompletedOrbit: false,
        rackHubLoggedOrbit: false,
        rackHubRefreshTimeOrbit: Date().timeIntervalSince1970
    )
    private var rackHubAgreementOrbit = false
    private var rackHubEyeOpenOrbit = false

    private let rackHubLoginCanvasOrbit = UIView()
    private let rackHubHeroImageOrbit = UIImageView()
    private let rackHubHeroShadeOrbit = CAGradientLayer()
    private let rackHubLoginCardOrbit = UIView()
    private let rackHubWelcomeLabelOrbit = UILabel()
    private let rackHubSubtitleLabelOrbit = UILabel()
    private let rackHubEmailShellOrbit = UIView()
    private let rackHubEmailFieldOrbit = UITextField()
    private let rackHubPasswordShellOrbit = UIView()
    private let rackHubPasswordFieldOrbit = UITextField()
    private let rackHubPasswordToggleOrbit = UIButton()
    private let rackHubLoginButtonOrbit = RackHubOrbitGradientButton()
    private let rackHubAgreementButtonOrbit = UIButton()
    private let rackHubAgreementTextOrbit = UITextView()

    private let rackHubProfileCanvasOrbit = UIView()
    private let rackHubProfileBackOrbit = UIButton(type: .system)
    private let rackHubProfileTitleOrbit = UILabel()
    private let rackHubAvatarRingOrbit = UIView()
    private let rackHubAvatarImageOrbit = UIImageView()
    private let rackHubAvatarFallbackOrbit = UIImageView()
    private let rackHubAvatarButtonOrbit = UIButton(type: .system)
    private let rackHubNameCardOrbit = UIView()
    private let rackHubNameCaptionOrbit = UILabel()
    private let rackHubNameFieldOrbit = UITextField()
    private let rackHubBirthCardOrbit = UIControl()
    private let rackHubBirthCaptionOrbit = UILabel()
    private let rackHubBirthValueOrbit = UILabel()
    private let rackHubProfileButtonOrbit = RackHubOrbitGradientButton()

    private let rackHubDiscoveryCanvasOrbit = UIView()
    private let rackHubDiscoveryBackOrbit = UIButton(type: .system)
    private let rackHubDiscoveryTitleOrbit = UILabel()
    private let rackHubDiscoveryCardOrbit = UIView()
    private let rackHubShowMeCaptionOrbit = UILabel()
    private let rackHubShowMeValueOrbit = UILabel()
    private let rackHubAgeCaptionOrbit = UILabel()
    private let rackHubAgeValueOrbit = UILabel()
    private let rackHubAgeSliderOrbit = RackHubOrbitAgeRangeSlider()
    private let rackHubDiscoveryButtonOrbit = RackHubOrbitGradientButton()

    private let rackHubSheetShadeOrbit = UIView()
    private let rackHubSheetCardOrbit = UIView()
    private let rackHubSheetTitleOrbit = UILabel()
    private let rackHubGenderMenOrbit = UIButton(type: .system)
    private let rackHubGenderWomenOrbit = UIButton(type: .system)
    private let rackHubBirthPickerOrbit = UIDatePicker()
    private let rackHubBirthConfirmOrbit = RackHubOrbitGradientButton()
    private var rackHubSheetBottomOrbit: NSLayoutConstraint?

    override func loadView() {
        view = UIView(frame: UIScreen.main.bounds)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        rackHubAssembleOrbit()
        rackHubRefreshDraftOrbit()
        rackHubRefreshStageOrbit(animated: false)
        rackHubRefreshButtonOrbit()
        NotificationCenter.default.addObserver(self, selector: #selector(processornoekey(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(dismianoeleky), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func processornoekey(_ notification: Notification) {
            let processor: (Notification) -> CGFloat = { note in
                guard let info = note.userInfo,
                      let rect = info[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return 0 }
                return rect.height
            }
            
            let offset = processor(notification)
            if offset > 0 {
                let layoutAction = { (v: UIView, distance: CGFloat) in
                    v.frame.origin.y = -(distance / 2.0)
                    let _ = v.layer.shadowOpacity
                }
                layoutAction(self.view, offset)
            }
        }

        @objc func dismianoeleky() {
            let resetBridge = { [weak self] in
                guard let self = self else { return }
                let currentPos = self.view.frame.origin.y
                if currentPos != 0 {
                    self.view.frame.origin.y = CGFloat.zero
                }
            }
            resetBridge()
        }

        deinit {
            let center = NotificationCenter.default
            let proxy = center
            proxy.removeObserver(self)
        }


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        rackHubBackdropGradientOrbit.frame = view.bounds
        rackHubHeroShadeOrbit.frame = rackHubHeroImageOrbit.bounds
    }

    private func rackHubAssembleOrbit() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = UIColor(red: 0.11, green: 0.01, blue: 0.08, alpha: 1)
        rackHubBackdropGradientOrbit.colors = [
            UIColor(red: 0.11, green: 0.01, blue: 0.08, alpha: 1).cgColor,
            UIColor(red: 0.21, green: 0.02, blue: 0.16, alpha: 1).cgColor,
            UIColor(red: 0.08, green: 0.01, blue: 0.08, alpha: 1).cgColor
        ]
        rackHubBackdropGradientOrbit.startPoint = CGPoint(x: 0.5, y: 0)
        rackHubBackdropGradientOrbit.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(rackHubBackdropGradientOrbit, at: 0)
        rackHubBuildLoginOrbit()
        rackHubBuildProfileOrbit()
        rackHubBuildDiscoveryOrbit()
        rackHubBuildSheetOrbit()
    }

    private func rackHubBuildLoginOrbit() {
        rackHubLoginCanvasOrbit.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rackHubLoginCanvasOrbit)
        NSLayoutConstraint.activate([
            rackHubLoginCanvasOrbit.topAnchor.constraint(equalTo: view.topAnchor),
            rackHubLoginCanvasOrbit.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rackHubLoginCanvasOrbit.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rackHubLoginCanvasOrbit.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        rackHubHeroImageOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubHeroImageOrbit.image = UIImage(named: "CUEBOSHdrawShot")
        rackHubHeroImageOrbit.contentMode = .scaleAspectFill
        rackHubHeroImageOrbit.clipsToBounds = true
        rackHubLoginCanvasOrbit.addSubview(rackHubHeroImageOrbit)
        rackHubHeroShadeOrbit.colors = [
            UIColor.clear.cgColor,
            UIColor(red: 0.14, green: 0.01, blue: 0.1, alpha: 0.45).cgColor,
            UIColor(red: 0.18, green: 0.02, blue: 0.13, alpha: 1).cgColor
        ]
        rackHubHeroShadeOrbit.startPoint = CGPoint(x: 0.5, y: 0)
        rackHubHeroShadeOrbit.endPoint = CGPoint(x: 0.5, y: 1)
        rackHubHeroImageOrbit.layer.addSublayer(rackHubHeroShadeOrbit)

        rackHubLoginCardOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubLoginCardOrbit.backgroundColor = UIColor(red: 0.2, green: 0.02, blue: 0.15, alpha: 0.98)
        rackHubLoginCardOrbit.layer.cornerRadius = rackHubWidthOrbit(34)
        rackHubLoginCardOrbit.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        rackHubLoginCanvasOrbit.addSubview(rackHubLoginCardOrbit)

        NSLayoutConstraint.activate([
            rackHubHeroImageOrbit.topAnchor.constraint(equalTo: rackHubLoginCanvasOrbit.topAnchor),
            rackHubHeroImageOrbit.leadingAnchor.constraint(equalTo: rackHubLoginCanvasOrbit.leadingAnchor),
            rackHubHeroImageOrbit.trailingAnchor.constraint(equalTo: rackHubLoginCanvasOrbit.trailingAnchor),
            rackHubHeroImageOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(356)),

            rackHubLoginCardOrbit.topAnchor.constraint(equalTo: rackHubLoginCanvasOrbit.topAnchor, constant: rackHubHeightOrbit(286)),
            rackHubLoginCardOrbit.leadingAnchor.constraint(equalTo: rackHubLoginCanvasOrbit.leadingAnchor),
            rackHubLoginCardOrbit.trailingAnchor.constraint(equalTo: rackHubLoginCanvasOrbit.trailingAnchor),
            rackHubLoginCardOrbit.bottomAnchor.constraint(equalTo: rackHubLoginCanvasOrbit.bottomAnchor)
        ])

        let tipsLabel = UILabel()
        tipsLabel.translatesAutoresizingMaskIntoConstraints = false
        tipsLabel.text = "Infs vtwhmeg uaicnclouuinati ydpoyegsv tnjodtp weyxyixsqtj,w xwnel bwoiblfln setndtnenrf ltnhiew xrfeognissftzrqastwidopnw gporporcmershs".CUEBOSHTWenglishSpin()
        tipsLabel.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(11), weight: .regular)
        tipsLabel.textColor = .white
        tipsLabel.textAlignment = .center
        tipsLabel.numberOfLines = 0
        rackHubWelcomeLabelOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubWelcomeLabelOrbit.text = "Welcome To RackHub"
        rackHubWelcomeLabelOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(17), weight: .heavy)
        rackHubWelcomeLabelOrbit.textColor = .white
        rackHubWelcomeLabelOrbit.textAlignment = .center

        rackHubSubtitleLabelOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubSubtitleLabelOrbit.text = "Slikgunh miqnd kwuiotfhs denmwaxiul".CUEBOSHTWenglishSpin()
        rackHubSubtitleLabelOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(11), weight: .semibold)
        rackHubSubtitleLabelOrbit.textColor = UIColor.white.withAlphaComponent(0.92)
        rackHubSubtitleLabelOrbit.textAlignment = .center

        rackHubEmailShellOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubPasswordShellOrbit.translatesAutoresizingMaskIntoConstraints = false
        [rackHubEmailShellOrbit, rackHubPasswordShellOrbit].forEach { rackHubShellOrbit in
            rackHubShellOrbit.backgroundColor = .white
            rackHubShellOrbit.layer.cornerRadius = rackHubWidthOrbit(18)
            rackHubLoginCardOrbit.addSubview(rackHubShellOrbit)
        }

        let rackHubEmailIconOrbit = rackHubIconOrbit("envelopeRacks")
        let rackHubPasswordIconOrbit = rackHubIconOrbit("lockRacks")
        rackHubEmailShellOrbit.addSubview(rackHubEmailIconOrbit)
        rackHubPasswordShellOrbit.addSubview(rackHubPasswordIconOrbit)

        rackHubEmailFieldOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubEmailFieldOrbit.placeholder = "Ekmiakikl".CUEBOSHTWenglishSpin()
        rackHubEmailFieldOrbit.textColor = UIColor(red: 0.3, green: 0.21, blue: 0.32, alpha: 1)
        rackHubEmailFieldOrbit.autocapitalizationType = .none
        rackHubEmailFieldOrbit.keyboardType = .emailAddress
        rackHubEmailFieldOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(14), weight: .medium)
        rackHubEmailFieldOrbit.clearButtonMode = .whileEditing
        rackHubEmailFieldOrbit.delegate = self
        rackHubEmailFieldOrbit.CUEBOSHTWDcomKeyboard()
        rackHubEmailFieldOrbit.addTarget(self, action: #selector(rackHubFieldChangedOrbit), for: .editingChanged)

        rackHubPasswordFieldOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubPasswordFieldOrbit.placeholder = "Piaosnsdwzotrzd".CUEBOSHTWenglishSpin()
        rackHubPasswordFieldOrbit.textColor = UIColor(red: 0.3, green: 0.21, blue: 0.32, alpha: 1)
        rackHubPasswordFieldOrbit.autocapitalizationType = .none
        rackHubPasswordFieldOrbit.isSecureTextEntry = true
        rackHubPasswordFieldOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(14), weight: .medium)
        rackHubPasswordFieldOrbit.delegate = self
        rackHubPasswordFieldOrbit.CUEBOSHTWDcomKeyboard()
        rackHubPasswordFieldOrbit.addTarget(self, action: #selector(rackHubFieldChangedOrbit), for: .editingChanged)

        rackHubPasswordToggleOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubPasswordToggleOrbit.tintColor = UIColor(red: 0.76, green: 0.68, blue: 0.77, alpha: 1)
        rackHubPasswordToggleOrbit.setImage(UIImage(named: "eyeracks"), for: .normal)
        rackHubPasswordToggleOrbit.addTarget(self, action: #selector(rackHubTogglePasswordOrbit), for: .touchUpInside)

        rackHubEmailShellOrbit.addSubview(rackHubEmailFieldOrbit)
        rackHubPasswordShellOrbit.addSubview(rackHubPasswordFieldOrbit)
        rackHubPasswordShellOrbit.addSubview(rackHubPasswordToggleOrbit)

        rackHubLoginButtonOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubLoginButtonOrbit.setTitle("Sgiqgjnu yiln".CUEBOSHTWenglishSpin(), for: .normal)
        rackHubLoginButtonOrbit.addTarget(self, action: #selector(rackHubHandleLoginOrbit), for: .touchUpInside)

        rackHubAgreementButtonOrbit.translatesAutoresizingMaskIntoConstraints = false
  
        rackHubAgreementButtonOrbit.setImage(UIImage(named: "CUEBOSHfollowShot"), for: .normal)
        rackHubAgreementButtonOrbit.addTarget(self, action: #selector(rackHubToggleAgreementOrbit), for: .touchUpInside)

        rackHubAgreementTextOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubAgreementTextOrbit.backgroundColor = .clear
        rackHubAgreementTextOrbit.textAlignment = .left
        rackHubAgreementTextOrbit.isEditable = false
        rackHubAgreementTextOrbit.isScrollEnabled = false
        rackHubAgreementTextOrbit.delegate = self
        rackHubAgreementTextOrbit.textContainerInset = .zero
        rackHubAgreementTextOrbit.textContainer.lineFragmentPadding = 0
        rackHubAgreementTextOrbit.linkTextAttributes = [
            .foregroundColor: UIColor(red: 0.36, green: 0.78, blue: 1.0, alpha: 1),
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        rackHubAgreementTextOrbit.attributedText = rackHubAgreementTextValueOrbit()

        [rackHubWelcomeLabelOrbit, rackHubSubtitleLabelOrbit, rackHubLoginButtonOrbit,tipsLabel, rackHubAgreementButtonOrbit, rackHubAgreementTextOrbit].forEach {
            rackHubLoginCardOrbit.addSubview($0)
        }

        NSLayoutConstraint.activate([
            rackHubWelcomeLabelOrbit.topAnchor.constraint(equalTo: rackHubLoginCardOrbit.topAnchor, constant: rackHubHeightOrbit(46)),
            rackHubWelcomeLabelOrbit.leadingAnchor.constraint(equalTo: rackHubLoginCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(32)),
            rackHubWelcomeLabelOrbit.trailingAnchor.constraint(equalTo: rackHubLoginCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(32)),

            rackHubSubtitleLabelOrbit.topAnchor.constraint(equalTo: rackHubWelcomeLabelOrbit.bottomAnchor, constant: rackHubHeightOrbit(8)),
            rackHubSubtitleLabelOrbit.centerXAnchor.constraint(equalTo: rackHubLoginCardOrbit.centerXAnchor),

            rackHubEmailShellOrbit.topAnchor.constraint(equalTo: rackHubSubtitleLabelOrbit.bottomAnchor, constant: rackHubHeightOrbit(30)),
            rackHubEmailShellOrbit.leadingAnchor.constraint(equalTo: rackHubLoginCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(22)),
            rackHubEmailShellOrbit.trailingAnchor.constraint(equalTo: rackHubLoginCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(22)),
            rackHubEmailShellOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(52)),

            rackHubPasswordShellOrbit.topAnchor.constraint(equalTo: rackHubEmailShellOrbit.bottomAnchor, constant: rackHubHeightOrbit(16)),
            rackHubPasswordShellOrbit.leadingAnchor.constraint(equalTo: rackHubEmailShellOrbit.leadingAnchor),
            rackHubPasswordShellOrbit.trailingAnchor.constraint(equalTo: rackHubEmailShellOrbit.trailingAnchor),
            rackHubPasswordShellOrbit.heightAnchor.constraint(equalTo: rackHubEmailShellOrbit.heightAnchor),

            rackHubEmailIconOrbit.leadingAnchor.constraint(equalTo: rackHubEmailShellOrbit.leadingAnchor, constant: rackHubWidthOrbit(18)),
            rackHubEmailIconOrbit.centerYAnchor.constraint(equalTo: rackHubEmailShellOrbit.centerYAnchor),
            rackHubEmailIconOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(18)),
            rackHubEmailIconOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(18)),

            rackHubEmailFieldOrbit.leadingAnchor.constraint(equalTo: rackHubEmailIconOrbit.trailingAnchor, constant: rackHubWidthOrbit(12)),
            rackHubEmailFieldOrbit.trailingAnchor.constraint(equalTo: rackHubEmailShellOrbit.trailingAnchor, constant: -rackHubWidthOrbit(18)),
            rackHubEmailFieldOrbit.topAnchor.constraint(equalTo: rackHubEmailShellOrbit.topAnchor),
            rackHubEmailFieldOrbit.bottomAnchor.constraint(equalTo: rackHubEmailShellOrbit.bottomAnchor),

            rackHubPasswordIconOrbit.leadingAnchor.constraint(equalTo: rackHubPasswordShellOrbit.leadingAnchor, constant: rackHubWidthOrbit(18)),
            rackHubPasswordIconOrbit.centerYAnchor.constraint(equalTo: rackHubPasswordShellOrbit.centerYAnchor),
            rackHubPasswordIconOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(18)),
            rackHubPasswordIconOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(18)),

            rackHubPasswordToggleOrbit.trailingAnchor.constraint(equalTo: rackHubPasswordShellOrbit.trailingAnchor, constant: -rackHubWidthOrbit(14)),
            rackHubPasswordToggleOrbit.centerYAnchor.constraint(equalTo: rackHubPasswordShellOrbit.centerYAnchor),
            rackHubPasswordToggleOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(22)),
            rackHubPasswordToggleOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(22)),

            rackHubPasswordFieldOrbit.leadingAnchor.constraint(equalTo: rackHubPasswordIconOrbit.trailingAnchor, constant: rackHubWidthOrbit(12)),
            rackHubPasswordFieldOrbit.trailingAnchor.constraint(equalTo: rackHubPasswordToggleOrbit.leadingAnchor, constant: -rackHubWidthOrbit(10)),
            rackHubPasswordFieldOrbit.topAnchor.constraint(equalTo: rackHubPasswordShellOrbit.topAnchor),
            rackHubPasswordFieldOrbit.bottomAnchor.constraint(equalTo: rackHubPasswordShellOrbit.bottomAnchor),

            rackHubLoginButtonOrbit.topAnchor.constraint(equalTo: rackHubPasswordShellOrbit.bottomAnchor, constant: rackHubHeightOrbit(36)),
            rackHubLoginButtonOrbit.leadingAnchor.constraint(equalTo: rackHubEmailShellOrbit.leadingAnchor),
            rackHubLoginButtonOrbit.trailingAnchor.constraint(equalTo: rackHubEmailShellOrbit.trailingAnchor),
            rackHubLoginButtonOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(54)),

            tipsLabel.topAnchor.constraint(equalTo: rackHubLoginButtonOrbit.bottomAnchor, constant: 3),
            tipsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            tipsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            
            
            rackHubAgreementButtonOrbit.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: rackHubHeightOrbit(-30)),
            rackHubAgreementButtonOrbit.leadingAnchor.constraint(equalTo: rackHubLoginButtonOrbit.leadingAnchor),
            rackHubAgreementButtonOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(22)),
            rackHubAgreementButtonOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(22)),

            rackHubAgreementTextOrbit.leadingAnchor.constraint(equalTo: rackHubAgreementButtonOrbit.trailingAnchor, constant: rackHubWidthOrbit(10)),
            rackHubAgreementTextOrbit.trailingAnchor.constraint(equalTo: rackHubLoginButtonOrbit.trailingAnchor),
            rackHubAgreementTextOrbit.centerYAnchor.constraint(equalTo: rackHubAgreementButtonOrbit.centerYAnchor),
            rackHubAgreementTextOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(38))
        ])
    }

    private func rackHubBuildProfileOrbit() {
        rackHubProfileCanvasOrbit.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rackHubProfileCanvasOrbit)
        NSLayoutConstraint.activate([
            rackHubProfileCanvasOrbit.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rackHubProfileCanvasOrbit.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rackHubProfileCanvasOrbit.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rackHubProfileCanvasOrbit.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        rackHubProfileBackOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubProfileBackOrbit.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        rackHubProfileBackOrbit.tintColor = .white
        rackHubProfileBackOrbit.addTarget(self, action: #selector(rackHubBackFromProfileOrbit), for: .touchUpInside)

        rackHubProfileTitleOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubProfileTitleOrbit.text = "Agcgccoxufnptc hSdemtytsigndgqs".CUEBOSHTWenglishSpin()
        rackHubProfileTitleOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(18), weight: .heavy)
        rackHubProfileTitleOrbit.textColor = .white

        rackHubAvatarRingOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubAvatarRingOrbit.layer.cornerRadius = rackHubWidthOrbit(54)
        rackHubAvatarRingOrbit.layer.borderWidth = 1.5
        rackHubAvatarRingOrbit.layer.borderColor = UIColor(red: 0.79, green: 0.17, blue: 0.88, alpha: 1).cgColor
        rackHubAvatarRingOrbit.backgroundColor = UIColor(red: 0.25, green: 0.08, blue: 0.25, alpha: 1)

        rackHubAvatarImageOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubAvatarImageOrbit.contentMode = .scaleAspectFill
        rackHubAvatarImageOrbit.clipsToBounds = true
        rackHubAvatarImageOrbit.layer.cornerRadius = rackHubWidthOrbit(48)

        rackHubAvatarFallbackOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubAvatarFallbackOrbit.contentMode = .scaleAspectFit
        rackHubAvatarFallbackOrbit.tintColor = UIColor(red: 0.69, green: 0.32, blue: 0.94, alpha: 1)
        rackHubAvatarFallbackOrbit.image = UIImage(systemName: "person.fill")

        rackHubAvatarButtonOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubAvatarButtonOrbit.backgroundColor = UIColor(red: 0.96, green: 0.1, blue: 0.73, alpha: 1)
        rackHubAvatarButtonOrbit.tintColor = .white
        rackHubAvatarButtonOrbit.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        rackHubAvatarButtonOrbit.layer.cornerRadius = rackHubWidthOrbit(16)
        rackHubAvatarButtonOrbit.addTarget(self, action: #selector(rackHubPickAvatarOrbit), for: .touchUpInside)

        rackHubAvatarRingOrbit.addSubview(rackHubAvatarImageOrbit)
        rackHubAvatarRingOrbit.addSubview(rackHubAvatarFallbackOrbit)

        rackHubNameCardOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubBirthCardOrbit.translatesAutoresizingMaskIntoConstraints = false
        [rackHubNameCardOrbit, rackHubBirthCardOrbit].forEach { rackHubCardOrbit in
            rackHubCardOrbit.backgroundColor = UIColor.white.withAlphaComponent(0.04)
            rackHubCardOrbit.layer.cornerRadius = rackHubWidthOrbit(10)
            rackHubCardOrbit.layer.borderWidth = 1
            rackHubCardOrbit.layer.borderColor = UIColor.white.withAlphaComponent(0.75).cgColor
            rackHubProfileCanvasOrbit.addSubview(rackHubCardOrbit)
        }

        rackHubNameCaptionOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubNameCaptionOrbit.text = "Nhaimte".CUEBOSHTWenglishSpin()
        rackHubNameCaptionOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .medium)
        rackHubNameCaptionOrbit.textColor = .white

        rackHubNameFieldOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubNameFieldOrbit.placeholder = "Ejndtieyrm ynkatmce".CUEBOSHTWenglishSpin()
        rackHubNameFieldOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .medium)
        rackHubNameFieldOrbit.textColor = UIColor(red: 0.88, green: 0.86, blue: 0.9, alpha: 1)
        rackHubNameFieldOrbit.textAlignment = .right
        rackHubNameFieldOrbit.autocorrectionType = .no
        rackHubNameFieldOrbit.CUEBOSHTWDcomKeyboard()
        rackHubNameFieldOrbit.addTarget(self, action: #selector(rackHubFieldChangedOrbit), for: .editingChanged)

        rackHubBirthCaptionOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubBirthCaptionOrbit.text = "Daactoes aorfn ebhierqtnh".CUEBOSHTWenglishSpin()
        rackHubBirthCaptionOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .medium)
        rackHubBirthCaptionOrbit.textColor = .white

        rackHubBirthValueOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubBirthValueOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .semibold)
        rackHubBirthValueOrbit.textColor = UIColor(red: 0.87, green: 0.28, blue: 0.92, alpha: 1)
        rackHubBirthValueOrbit.textAlignment = .right

        let rackHubBirthChevronOrbit = UIImageView(image: UIImage(systemName: "chevron.right"))
        rackHubBirthChevronOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubBirthChevronOrbit.tintColor = UIColor(red: 0.87, green: 0.28, blue: 0.92, alpha: 1)

        rackHubBirthCardOrbit.addTarget(self, action: #selector(rackHubChooseBirthOrbit), for: .touchUpInside)
        rackHubProfileButtonOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubProfileButtonOrbit.setTitle("OK", for: .normal)
        rackHubProfileButtonOrbit.addTarget(self, action: #selector(rackHubContinueProfileOrbit), for: .touchUpInside)

        [rackHubProfileBackOrbit, rackHubProfileTitleOrbit, rackHubAvatarRingOrbit, rackHubAvatarButtonOrbit, rackHubProfileButtonOrbit].forEach {
            rackHubProfileCanvasOrbit.addSubview($0)
        }
        rackHubNameCardOrbit.addSubview(rackHubNameCaptionOrbit)
        rackHubNameCardOrbit.addSubview(rackHubNameFieldOrbit)
        rackHubBirthCardOrbit.addSubview(rackHubBirthCaptionOrbit)
        rackHubBirthCardOrbit.addSubview(rackHubBirthValueOrbit)
        rackHubBirthCardOrbit.addSubview(rackHubBirthChevronOrbit)

        NSLayoutConstraint.activate([
            rackHubProfileBackOrbit.topAnchor.constraint(equalTo: rackHubProfileCanvasOrbit.topAnchor, constant: rackHubHeightOrbit(6)),
            rackHubProfileBackOrbit.leadingAnchor.constraint(equalTo: rackHubProfileCanvasOrbit.leadingAnchor, constant: rackHubWidthOrbit(22)),
            rackHubProfileBackOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(24)),
            rackHubProfileBackOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(24)),

            rackHubProfileTitleOrbit.topAnchor.constraint(equalTo: rackHubProfileBackOrbit.bottomAnchor, constant: rackHubHeightOrbit(28)),
            rackHubProfileTitleOrbit.leadingAnchor.constraint(equalTo: rackHubProfileBackOrbit.leadingAnchor),

            rackHubAvatarRingOrbit.topAnchor.constraint(equalTo: rackHubProfileTitleOrbit.bottomAnchor, constant: rackHubHeightOrbit(26)),
            rackHubAvatarRingOrbit.centerXAnchor.constraint(equalTo: rackHubProfileCanvasOrbit.centerXAnchor),
            rackHubAvatarRingOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(108)),
            rackHubAvatarRingOrbit.heightAnchor.constraint(equalTo: rackHubAvatarRingOrbit.widthAnchor),

            rackHubAvatarImageOrbit.topAnchor.constraint(equalTo: rackHubAvatarRingOrbit.topAnchor, constant: rackHubWidthOrbit(6)),
            rackHubAvatarImageOrbit.leadingAnchor.constraint(equalTo: rackHubAvatarRingOrbit.leadingAnchor, constant: rackHubWidthOrbit(6)),
            rackHubAvatarImageOrbit.trailingAnchor.constraint(equalTo: rackHubAvatarRingOrbit.trailingAnchor, constant: -rackHubWidthOrbit(6)),
            rackHubAvatarImageOrbit.bottomAnchor.constraint(equalTo: rackHubAvatarRingOrbit.bottomAnchor, constant: -rackHubWidthOrbit(6)),

            rackHubAvatarFallbackOrbit.centerXAnchor.constraint(equalTo: rackHubAvatarRingOrbit.centerXAnchor),
            rackHubAvatarFallbackOrbit.centerYAnchor.constraint(equalTo: rackHubAvatarRingOrbit.centerYAnchor),
            rackHubAvatarFallbackOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(34)),
            rackHubAvatarFallbackOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(34)),

            rackHubAvatarButtonOrbit.centerXAnchor.constraint(equalTo: rackHubAvatarRingOrbit.centerXAnchor),
            rackHubAvatarButtonOrbit.centerYAnchor.constraint(equalTo: rackHubAvatarRingOrbit.bottomAnchor),
            rackHubAvatarButtonOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(50)),
            rackHubAvatarButtonOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(32)),

            rackHubNameCardOrbit.topAnchor.constraint(equalTo: rackHubAvatarButtonOrbit.bottomAnchor, constant: rackHubHeightOrbit(24)),
            rackHubNameCardOrbit.leadingAnchor.constraint(equalTo: rackHubProfileCanvasOrbit.leadingAnchor, constant: rackHubWidthOrbit(22)),
            rackHubNameCardOrbit.trailingAnchor.constraint(equalTo: rackHubProfileCanvasOrbit.trailingAnchor, constant: -rackHubWidthOrbit(22)),
            rackHubNameCardOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(48)),

            rackHubBirthCardOrbit.topAnchor.constraint(equalTo: rackHubNameCardOrbit.bottomAnchor, constant: rackHubHeightOrbit(12)),
            rackHubBirthCardOrbit.leadingAnchor.constraint(equalTo: rackHubNameCardOrbit.leadingAnchor),
            rackHubBirthCardOrbit.trailingAnchor.constraint(equalTo: rackHubNameCardOrbit.trailingAnchor),
            rackHubBirthCardOrbit.heightAnchor.constraint(equalTo: rackHubNameCardOrbit.heightAnchor),

            rackHubNameCaptionOrbit.leadingAnchor.constraint(equalTo: rackHubNameCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(12)),
            rackHubNameCaptionOrbit.centerYAnchor.constraint(equalTo: rackHubNameCardOrbit.centerYAnchor),

            rackHubNameFieldOrbit.trailingAnchor.constraint(equalTo: rackHubNameCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(12)),
            rackHubNameFieldOrbit.topAnchor.constraint(equalTo: rackHubNameCardOrbit.topAnchor),
            rackHubNameFieldOrbit.bottomAnchor.constraint(equalTo: rackHubNameCardOrbit.bottomAnchor),
            rackHubNameFieldOrbit.leadingAnchor.constraint(greaterThanOrEqualTo: rackHubNameCaptionOrbit.trailingAnchor, constant: rackHubWidthOrbit(10)),

            rackHubBirthCaptionOrbit.leadingAnchor.constraint(equalTo: rackHubBirthCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(12)),
            rackHubBirthCaptionOrbit.centerYAnchor.constraint(equalTo: rackHubBirthCardOrbit.centerYAnchor),

            rackHubBirthChevronOrbit.trailingAnchor.constraint(equalTo: rackHubBirthCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(10)),
            rackHubBirthChevronOrbit.centerYAnchor.constraint(equalTo: rackHubBirthCardOrbit.centerYAnchor),
            rackHubBirthChevronOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(12)),
            rackHubBirthChevronOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(12)),

            rackHubBirthValueOrbit.centerYAnchor.constraint(equalTo: rackHubBirthCardOrbit.centerYAnchor),
            rackHubBirthValueOrbit.trailingAnchor.constraint(equalTo: rackHubBirthChevronOrbit.leadingAnchor, constant: -rackHubWidthOrbit(8)),
            rackHubBirthValueOrbit.leadingAnchor.constraint(greaterThanOrEqualTo: rackHubBirthCaptionOrbit.trailingAnchor, constant: rackHubWidthOrbit(10)),

            rackHubProfileButtonOrbit.leadingAnchor.constraint(equalTo: rackHubNameCardOrbit.leadingAnchor),
            rackHubProfileButtonOrbit.trailingAnchor.constraint(equalTo: rackHubNameCardOrbit.trailingAnchor),
            rackHubProfileButtonOrbit.bottomAnchor.constraint(equalTo: rackHubProfileCanvasOrbit.bottomAnchor, constant: -rackHubHeightOrbit(26)),
            rackHubProfileButtonOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(54))
        ])
    }

    private func rackHubBuildDiscoveryOrbit() {
        rackHubDiscoveryCanvasOrbit.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rackHubDiscoveryCanvasOrbit)
        NSLayoutConstraint.activate([
            rackHubDiscoveryCanvasOrbit.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rackHubDiscoveryCanvasOrbit.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rackHubDiscoveryCanvasOrbit.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rackHubDiscoveryCanvasOrbit.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        rackHubDiscoveryBackOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubDiscoveryBackOrbit.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        rackHubDiscoveryBackOrbit.tintColor = .white
        rackHubDiscoveryBackOrbit.addTarget(self, action: #selector(rackHubBackFromDiscoveryOrbit), for: .touchUpInside)

        rackHubDiscoveryTitleOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubDiscoveryTitleOrbit.text = "Dciosdchonvvejrgya qSaextstjinnlgfs".CUEBOSHTWenglishSpin()
        rackHubDiscoveryTitleOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(18), weight: .heavy)
        rackHubDiscoveryTitleOrbit.textColor = .white

        rackHubDiscoveryCardOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubDiscoveryCardOrbit.backgroundColor = UIColor.white.withAlphaComponent(0.04)
        rackHubDiscoveryCardOrbit.layer.cornerRadius = rackHubWidthOrbit(10)
        rackHubDiscoveryCardOrbit.layer.borderWidth = 1
        rackHubDiscoveryCardOrbit.layer.borderColor = UIColor.white.withAlphaComponent(0.75).cgColor

        let rackHubShowMeRowOrbit = UIControl()
        rackHubShowMeRowOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubShowMeRowOrbit.addTarget(self, action: #selector(rackHubShowGenderOrbit), for: .touchUpInside)

        rackHubShowMeCaptionOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubShowMeCaptionOrbit.text = "Schgojww fMze".CUEBOSHTWenglishSpin()
        rackHubShowMeCaptionOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .medium)
        rackHubShowMeCaptionOrbit.textColor = .white

        rackHubShowMeValueOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubShowMeValueOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .semibold)
        rackHubShowMeValueOrbit.textColor = UIColor(red: 0.87, green: 0.28, blue: 0.92, alpha: 1)
        rackHubShowMeValueOrbit.textAlignment = .right

        let rackHubShowMeChevronOrbit = UIImageView(image: UIImage(systemName: "chevron.down"))
        rackHubShowMeChevronOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubShowMeChevronOrbit.tintColor = UIColor(red: 0.87, green: 0.28, blue: 0.92, alpha: 1)

        let rackHubDividerOrbit = UIView()
        rackHubDividerOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubDividerOrbit.backgroundColor = UIColor.white.withAlphaComponent(0.12)

        rackHubAgeCaptionOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubAgeCaptionOrbit.text = "Angcek hRkaunjgle".CUEBOSHTWenglishSpin()
        rackHubAgeCaptionOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .medium)
        rackHubAgeCaptionOrbit.textColor = .white

        rackHubAgeValueOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubAgeValueOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(13), weight: .semibold)
        rackHubAgeValueOrbit.textColor = .white
        rackHubAgeValueOrbit.textAlignment = .right

        rackHubAgeSliderOrbit.addTarget(self, action: #selector(rackHubAgeChangedOrbit), for: .valueChanged)

        rackHubDiscoveryButtonOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubDiscoveryButtonOrbit.setTitle("OsK".CUEBOSHTWenglishSpin(), for: .normal)
        rackHubDiscoveryButtonOrbit.addTarget(self, action: #selector(rackHubFinishDiscoveryOrbit), for: .touchUpInside)

        [rackHubDiscoveryBackOrbit, rackHubDiscoveryTitleOrbit, rackHubDiscoveryCardOrbit, rackHubDiscoveryButtonOrbit].forEach {
            rackHubDiscoveryCanvasOrbit.addSubview($0)
        }
        rackHubDiscoveryCardOrbit.addSubview(rackHubShowMeRowOrbit)
        rackHubDiscoveryCardOrbit.addSubview(rackHubDividerOrbit)
        rackHubDiscoveryCardOrbit.addSubview(rackHubAgeCaptionOrbit)
        rackHubDiscoveryCardOrbit.addSubview(rackHubAgeValueOrbit)
        rackHubDiscoveryCardOrbit.addSubview(rackHubAgeSliderOrbit)
        rackHubShowMeRowOrbit.addSubview(rackHubShowMeCaptionOrbit)
        rackHubShowMeRowOrbit.addSubview(rackHubShowMeValueOrbit)
        rackHubShowMeRowOrbit.addSubview(rackHubShowMeChevronOrbit)

        NSLayoutConstraint.activate([
            rackHubDiscoveryBackOrbit.topAnchor.constraint(equalTo: rackHubDiscoveryCanvasOrbit.topAnchor, constant: rackHubHeightOrbit(6)),
            rackHubDiscoveryBackOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryCanvasOrbit.leadingAnchor, constant: rackHubWidthOrbit(22)),
            rackHubDiscoveryBackOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(24)),
            rackHubDiscoveryBackOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(24)),

            rackHubDiscoveryTitleOrbit.topAnchor.constraint(equalTo: rackHubDiscoveryBackOrbit.bottomAnchor, constant: rackHubHeightOrbit(28)),
            rackHubDiscoveryTitleOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryBackOrbit.leadingAnchor),

            rackHubDiscoveryCardOrbit.topAnchor.constraint(equalTo: rackHubDiscoveryTitleOrbit.bottomAnchor, constant: rackHubHeightOrbit(22)),
            rackHubDiscoveryCardOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryCanvasOrbit.leadingAnchor, constant: rackHubWidthOrbit(22)),
            rackHubDiscoveryCardOrbit.trailingAnchor.constraint(equalTo: rackHubDiscoveryCanvasOrbit.trailingAnchor, constant: -rackHubWidthOrbit(22)),

            rackHubShowMeRowOrbit.topAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.topAnchor),
            rackHubShowMeRowOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.leadingAnchor),
            rackHubShowMeRowOrbit.trailingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.trailingAnchor),
            rackHubShowMeRowOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(52)),

            rackHubShowMeCaptionOrbit.leadingAnchor.constraint(equalTo: rackHubShowMeRowOrbit.leadingAnchor, constant: rackHubWidthOrbit(12)),
            rackHubShowMeCaptionOrbit.centerYAnchor.constraint(equalTo: rackHubShowMeRowOrbit.centerYAnchor),

            rackHubShowMeChevronOrbit.trailingAnchor.constraint(equalTo: rackHubShowMeRowOrbit.trailingAnchor, constant: -rackHubWidthOrbit(12)),
            rackHubShowMeChevronOrbit.centerYAnchor.constraint(equalTo: rackHubShowMeRowOrbit.centerYAnchor),
            rackHubShowMeChevronOrbit.widthAnchor.constraint(equalToConstant: rackHubWidthOrbit(12)),
            rackHubShowMeChevronOrbit.heightAnchor.constraint(equalToConstant: rackHubWidthOrbit(12)),

            rackHubShowMeValueOrbit.centerYAnchor.constraint(equalTo: rackHubShowMeRowOrbit.centerYAnchor),
            rackHubShowMeValueOrbit.trailingAnchor.constraint(equalTo: rackHubShowMeChevronOrbit.leadingAnchor, constant: -rackHubWidthOrbit(8)),
            rackHubShowMeValueOrbit.leadingAnchor.constraint(greaterThanOrEqualTo: rackHubShowMeCaptionOrbit.trailingAnchor, constant: rackHubWidthOrbit(10)),

            rackHubDividerOrbit.topAnchor.constraint(equalTo: rackHubShowMeRowOrbit.bottomAnchor),
            rackHubDividerOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(12)),
            rackHubDividerOrbit.trailingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(12)),
            rackHubDividerOrbit.heightAnchor.constraint(equalToConstant: 1),

            rackHubAgeCaptionOrbit.topAnchor.constraint(equalTo: rackHubDividerOrbit.bottomAnchor, constant: rackHubHeightOrbit(16)),
            rackHubAgeCaptionOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(12)),

            rackHubAgeValueOrbit.centerYAnchor.constraint(equalTo: rackHubAgeCaptionOrbit.centerYAnchor),
            rackHubAgeValueOrbit.trailingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(12)),

            rackHubAgeSliderOrbit.topAnchor.constraint(equalTo: rackHubAgeCaptionOrbit.bottomAnchor, constant: rackHubHeightOrbit(18)),
            rackHubAgeSliderOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(14)),
            rackHubAgeSliderOrbit.trailingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(14)),
            rackHubAgeSliderOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(54)),
            rackHubAgeSliderOrbit.bottomAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.bottomAnchor, constant: -rackHubHeightOrbit(16)),

            rackHubDiscoveryButtonOrbit.leadingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.leadingAnchor),
            rackHubDiscoveryButtonOrbit.trailingAnchor.constraint(equalTo: rackHubDiscoveryCardOrbit.trailingAnchor),
            rackHubDiscoveryButtonOrbit.bottomAnchor.constraint(equalTo: rackHubDiscoveryCanvasOrbit.bottomAnchor, constant: -rackHubHeightOrbit(26)),
            rackHubDiscoveryButtonOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(54))
        ])
    }

    private func rackHubBuildSheetOrbit() {
        rackHubSheetShadeOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubSheetShadeOrbit.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        rackHubSheetShadeOrbit.alpha = 0
        rackHubSheetShadeOrbit.isHidden = true
        let rackHubDismissTapOrbit = UITapGestureRecognizer(target: self, action: #selector(rackHubHideSheetOrbit))
        rackHubSheetShadeOrbit.addGestureRecognizer(rackHubDismissTapOrbit)
        view.addSubview(rackHubSheetShadeOrbit)

        rackHubSheetCardOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubSheetCardOrbit.backgroundColor = UIColor(red: 0.23, green: 0.08, blue: 0.19, alpha: 1)
        rackHubSheetCardOrbit.layer.cornerRadius = rackHubWidthOrbit(22)
        rackHubSheetCardOrbit.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        rackHubSheetShadeOrbit.addSubview(rackHubSheetCardOrbit)

        rackHubSheetTitleOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubSheetTitleOrbit.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(16), weight: .bold)
        rackHubSheetTitleOrbit.textColor = .white
        rackHubSheetTitleOrbit.textAlignment = .center

        [rackHubGenderMenOrbit, rackHubGenderWomenOrbit].forEach { rackHubGenderButtonOrbit in
            rackHubGenderButtonOrbit.translatesAutoresizingMaskIntoConstraints = false
            rackHubGenderButtonOrbit.backgroundColor = UIColor.white.withAlphaComponent(0.08)
            rackHubGenderButtonOrbit.setTitleColor(.white, for: .normal)
            rackHubGenderButtonOrbit.titleLabel?.font = UIFont.systemFont(ofSize: rackHubWidthOrbit(17), weight: .semibold)
            rackHubGenderButtonOrbit.layer.cornerRadius = rackHubWidthOrbit(10)
            rackHubSheetCardOrbit.addSubview(rackHubGenderButtonOrbit)
        }
        rackHubGenderMenOrbit.setTitle("Mqenn".CUEBOSHTWenglishSpin(), for: .normal)
        rackHubGenderWomenOrbit.setTitle("Wuoymkejn".CUEBOSHTWenglishSpin(), for: .normal)
        rackHubGenderMenOrbit.addTarget(self, action: #selector(rackHubPickMenOrbit), for: .touchUpInside)
        rackHubGenderWomenOrbit.addTarget(self, action: #selector(rackHubPickWomenOrbit), for: .touchUpInside)

        rackHubBirthPickerOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubBirthPickerOrbit.preferredDatePickerStyle = .wheels
        rackHubBirthPickerOrbit.maximumDate = Date()
        rackHubBirthPickerOrbit.datePickerMode = .date
        rackHubBirthPickerOrbit.tintColor = .white

        rackHubBirthConfirmOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubBirthConfirmOrbit.setTitle("Cwoanmflifrhm".CUEBOSHTWenglishSpin(), for: .normal)
        rackHubBirthConfirmOrbit.addTarget(self, action: #selector(rackHubConfirmBirthOrbit), for: .touchUpInside)

        [rackHubSheetTitleOrbit, rackHubBirthPickerOrbit, rackHubBirthConfirmOrbit].forEach {
            rackHubSheetCardOrbit.addSubview($0)
        }

        rackHubSheetBottomOrbit = rackHubSheetCardOrbit.bottomAnchor.constraint(equalTo: rackHubSheetShadeOrbit.bottomAnchor, constant: rackHubHeightOrbit(330))

        NSLayoutConstraint.activate([
            rackHubSheetShadeOrbit.topAnchor.constraint(equalTo: view.topAnchor),
            rackHubSheetShadeOrbit.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rackHubSheetShadeOrbit.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rackHubSheetShadeOrbit.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            rackHubSheetCardOrbit.leadingAnchor.constraint(equalTo: rackHubSheetShadeOrbit.leadingAnchor),
            rackHubSheetCardOrbit.trailingAnchor.constraint(equalTo: rackHubSheetShadeOrbit.trailingAnchor),
            rackHubSheetBottomOrbit!,

            rackHubSheetTitleOrbit.topAnchor.constraint(equalTo: rackHubSheetCardOrbit.topAnchor, constant: rackHubHeightOrbit(16)),
            rackHubSheetTitleOrbit.centerXAnchor.constraint(equalTo: rackHubSheetCardOrbit.centerXAnchor),

            rackHubGenderMenOrbit.topAnchor.constraint(equalTo: rackHubSheetTitleOrbit.bottomAnchor, constant: rackHubHeightOrbit(18)),
            rackHubGenderMenOrbit.leadingAnchor.constraint(equalTo: rackHubSheetCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(18)),
            rackHubGenderMenOrbit.trailingAnchor.constraint(equalTo: rackHubSheetCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(18)),
            rackHubGenderMenOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(48)),

            rackHubGenderWomenOrbit.topAnchor.constraint(equalTo: rackHubGenderMenOrbit.bottomAnchor, constant: rackHubHeightOrbit(10)),
            rackHubGenderWomenOrbit.leadingAnchor.constraint(equalTo: rackHubGenderMenOrbit.leadingAnchor),
            rackHubGenderWomenOrbit.trailingAnchor.constraint(equalTo: rackHubGenderMenOrbit.trailingAnchor),
            rackHubGenderWomenOrbit.heightAnchor.constraint(equalTo: rackHubGenderMenOrbit.heightAnchor),
            rackHubGenderWomenOrbit.bottomAnchor.constraint(equalTo: rackHubSheetCardOrbit.safeAreaLayoutGuide.bottomAnchor, constant: -rackHubHeightOrbit(24)),

            rackHubBirthPickerOrbit.topAnchor.constraint(equalTo: rackHubSheetTitleOrbit.bottomAnchor, constant: rackHubHeightOrbit(4)),
            rackHubBirthPickerOrbit.leadingAnchor.constraint(equalTo: rackHubSheetCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(12)),
            rackHubBirthPickerOrbit.trailingAnchor.constraint(equalTo: rackHubSheetCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(12)),

            rackHubBirthConfirmOrbit.topAnchor.constraint(equalTo: rackHubBirthPickerOrbit.bottomAnchor, constant: rackHubHeightOrbit(10)),
            rackHubBirthConfirmOrbit.leadingAnchor.constraint(equalTo: rackHubSheetCardOrbit.leadingAnchor, constant: rackHubWidthOrbit(22)),
            rackHubBirthConfirmOrbit.trailingAnchor.constraint(equalTo: rackHubSheetCardOrbit.trailingAnchor, constant: -rackHubWidthOrbit(22)),
            rackHubBirthConfirmOrbit.heightAnchor.constraint(equalToConstant: rackHubHeightOrbit(52)),
            rackHubBirthConfirmOrbit.bottomAnchor.constraint(equalTo: rackHubSheetCardOrbit.safeAreaLayoutGuide.bottomAnchor, constant: -rackHubHeightOrbit(18))
        ])
    }

    private func rackHubRefreshStageOrbit(animated rackHubAnimatedOrbit: Bool) {
        let rackHubLoginVisibleOrbit = rackHubStageOrbit == .rackHubLoginOrbit
        let rackHubProfileVisibleOrbit = rackHubStageOrbit == .rackHubProfileOrbit
        let rackHubDiscoveryVisibleOrbit = rackHubStageOrbit == .rackHubDiscoveryOrbit
        let rackHubApplyOrbit = {
            self.rackHubLoginCanvasOrbit.alpha = rackHubLoginVisibleOrbit ? 1 : 0
            self.rackHubProfileCanvasOrbit.alpha = rackHubProfileVisibleOrbit ? 1 : 0
            self.rackHubDiscoveryCanvasOrbit.alpha = rackHubDiscoveryVisibleOrbit ? 1 : 0
        }
        if rackHubAnimatedOrbit {
            UIView.animate(withDuration: 0.26, delay: 0, options: [.curveEaseInOut]) {
                rackHubApplyOrbit()
            }
        } else {
            rackHubApplyOrbit()
        }
        rackHubLoginCanvasOrbit.isUserInteractionEnabled = rackHubLoginVisibleOrbit
        rackHubProfileCanvasOrbit.isUserInteractionEnabled = rackHubProfileVisibleOrbit
        rackHubDiscoveryCanvasOrbit.isUserInteractionEnabled = rackHubDiscoveryVisibleOrbit
    }

    private func rackHubAgreementTextValueOrbit() -> NSAttributedString {
        let rackHubMutableOrbit = NSMutableAttributedString(
            string: "Bkyy rcpobnhtoiantufilnlgj zygomuk eaegmrheqec atroh rodumrj xTkexrumrsy qojft fSeedrcvriicmek xaknydb dPzriiwviaicxye zPwopltiocyy".CUEBOSHTWenglishSpin(),
            attributes: [
                .foregroundColor: UIColor.white.withAlphaComponent(0.74),
                .font: UIFont.systemFont(ofSize: rackHubWidthOrbit(10.5), weight: .medium)
            ]
        )
        let rackHubTermsRangeOrbit = (rackHubMutableOrbit.string as NSString).range(of: "Ttefrzmesv foefq iSpexrrvbifcve".CUEBOSHTWenglishSpin())
        let rackHubPrivacyRangeOrbit = (rackHubMutableOrbit.string as NSString).range(of: "Pkrkijvsajcbyo sPnojlviicgy".CUEBOSHTWenglishSpin())
        rackHubMutableOrbit.addAttribute(.link, value: "rackhub://terms", range: rackHubTermsRangeOrbit)
        rackHubMutableOrbit.addAttribute(.link, value: "rackhub://privacy", range: rackHubPrivacyRangeOrbit)
        return rackHubMutableOrbit
    }

    private func rackHubIconOrbit(_ rackHubSystemOrbit: String) -> UIImageView {
        let rackHubIconOrbit = UIImageView(image: UIImage(named: rackHubSystemOrbit))
        rackHubIconOrbit.translatesAutoresizingMaskIntoConstraints = false
        rackHubIconOrbit.tintColor = UIColor(red: 0.8, green: 0.56, blue: 0.87, alpha: 1)
        rackHubIconOrbit.contentMode = .scaleAspectFit
        return rackHubIconOrbit
    }

    private func rackHubWidthOrbit(_ rackHubValueOrbit: CGFloat) -> CGFloat {
        UIScreen.main.bounds.width / rackHubReferenceWidthOrbit * rackHubValueOrbit
    }

    private func rackHubHeightOrbit(_ rackHubValueOrbit: CGFloat) -> CGFloat {
        UIScreen.main.bounds.height / rackHubReferenceHeightOrbit * rackHubValueOrbit
    }

    private func rackHubRefreshDraftOrbit() {
        rackHubEmailFieldOrbit.text = rackHubDraftOrbit.rackHubEmailOrbit
        rackHubPasswordFieldOrbit.text = rackHubDraftOrbit.rackHubPasswordOrbit
        rackHubNameFieldOrbit.text = rackHubDraftOrbit.rackHubNameOrbit
        rackHubShowMeValueOrbit.text = rackHubDraftOrbit.rackHubGenderOrbit.rawValue
        rackHubAgeSliderOrbit.rackHubLowerValueOrbit = rackHubDraftOrbit.rackHubAgeLowerOrbit
        rackHubAgeSliderOrbit.rackHubUpperValueOrbit = rackHubDraftOrbit.rackHubAgeUpperOrbit
        rackHubRefreshAgeOrbit()
        rackHubRefreshBirthOrbit()
        rackHubRefreshAvatarOrbit()
        rackHubRefreshAgreementOrbit()
    }

    private func rackHubRefreshAvatarOrbit() {
        if let rackHubAvatarDataOrbit = rackHubDraftOrbit.rackHubAvatarDataOrbit,
           let rackHubAvatarImageOrbit = UIImage(data: rackHubAvatarDataOrbit) {
            self.rackHubAvatarImageOrbit.image = rackHubAvatarImageOrbit
            self.rackHubAvatarImageOrbit.isHidden = false
            self.rackHubAvatarFallbackOrbit.isHidden = true
        } else {
            rackHubAvatarImageOrbit.image = nil
            rackHubAvatarImageOrbit.isHidden = true
            rackHubAvatarFallbackOrbit.isHidden = false
        }
    }

    private func rackHubRefreshBirthOrbit() {
        if let rackHubBirthTimeOrbit = rackHubDraftOrbit.rackHubBirthTimeOrbit {
            let rackHubFormatterOrbit = DateFormatter()
            rackHubFormatterOrbit.dateFormat = "yryzyzyj-cMkMt-bdxd".CUEBOSHTWenglishSpin()
            rackHubBirthValueOrbit.text = rackHubFormatterOrbit.string(from: Date(timeIntervalSince1970: rackHubBirthTimeOrbit))
        } else {
            rackHubBirthValueOrbit.text = "Sceuloeqcot".CUEBOSHTWenglishSpin()
        }
    }

    private func rackHubRefreshAgeOrbit() {
        rackHubDraftOrbit.rackHubAgeLowerOrbit = rackHubAgeSliderOrbit.rackHubLowerValueOrbit
        rackHubDraftOrbit.rackHubAgeUpperOrbit = rackHubAgeSliderOrbit.rackHubUpperValueOrbit
        rackHubAgeValueOrbit.text = "\(rackHubDraftOrbit.rackHubAgeLowerOrbit)-\(rackHubDraftOrbit.rackHubAgeUpperOrbit)"
    }

    private func rackHubRefreshAgreementOrbit() {
        let rackHubSymbolOrbit = rackHubAgreementOrbit ? "CUEBOSHTbankShotk" : "CUEBOSHfollowShot"
        rackHubAgreementButtonOrbit.setImage(UIImage(named: rackHubSymbolOrbit), for: .normal)
       
    }

    private func rackHubRefreshButtonOrbit() {
        let rackHubLoginReadyOrbit = !(rackHubEmailFieldOrbit.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        !(rackHubPasswordFieldOrbit.text ?? "").isEmpty &&
        rackHubAgreementOrbit
        let rackHubProfileReadyOrbit = !(rackHubNameFieldOrbit.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        rackHubDraftOrbit.rackHubBirthTimeOrbit != nil
        rackHubLoginButtonOrbit.rackHubSetEnabledOrbit(rackHubLoginReadyOrbit)
        rackHubProfileButtonOrbit.rackHubSetEnabledOrbit(rackHubProfileReadyOrbit)
        rackHubDiscoveryButtonOrbit.rackHubSetEnabledOrbit(true)
    }

    private func rackHubToastOrbit(_ rackHubMessageOrbit: String) {
        view.makeToast(
            rackHubMessageOrbit,
            duration: 2.0,
            position: .center,
            title: "",
            image: UIImage(named: "CUEBOSHTWaleoif"),
            style: ToastStyle.CUEBOSHTWrackHubAnalysis
        )
    }

    private func rackHubSuccessOrbit(_ rackHubMessageOrbit: String) {
        view.makeToast(
            rackHubMessageOrbit,
            duration: 2.0,
            position: .top,
            title: "",
            image: UIImage(named: "CUEBOSHTbankShotk"),
            style: ToastStyle.CUEBOSHTWrackHubSuccess
        )
    }

    private func rackHubTrimmedOrbit(_ rackHubValueOrbit: String?) -> String {
        rackHubValueOrbit?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
    }

    private func rackHubNormalizedEmailOrbit(_ rackHubEmailOrbit: String) -> String {
        rackHubEmailOrbit.lowercased()
    }

    private func rackHubIsDemoOrbit(_ rackHubEmailOrbit: String, _ rackHubPasswordOrbit: String) -> Bool {
        rackHubNormalizedEmailOrbit(rackHubEmailOrbit) == "rack222@gmail.com" && rackHubPasswordOrbit == "33445566"
    }

    private func rackHubArchiveOrbit(for rackHubEmailOrbit: String) -> RackHubOrbitArchive? {
        rackHubArchiveMapOrbit[rackHubNormalizedEmailOrbit(rackHubEmailOrbit)]
    }

    private func rackHubPersistOrbit(_ rackHubArchiveOrbit: RackHubOrbitArchive) {
        rackHubArchiveMapOrbit[rackHubNormalizedEmailOrbit(rackHubArchiveOrbit.rackHubEmailOrbit)] = rackHubArchiveOrbit
        RackHubOrbitVault.rackHubSaveArchiveMapOrbit(rackHubArchiveMapOrbit)
    }

    private func rackHubSeedOrbit(email rackHubEmailOrbit: String, password rackHubPasswordOrbit: String) -> RackHubOrbitArchive {
        RackHubOrbitArchive(
            rackHubEmailOrbit: rackHubEmailOrbit,
            rackHubPasswordOrbit: rackHubPasswordOrbit,
            rackHubNameOrbit: rackHubEmailOrbit.components(separatedBy: "@").first ?? "RackHub Player",
            rackHubBirthTimeOrbit: nil,
            rackHubAvatarDataOrbit: nil,
            rackHubGenderOrbit: .rackHubMenOrbit,
            rackHubAgeLowerOrbit: 22,
            rackHubAgeUpperOrbit: 34,
            rackHubCompletedOrbit: false,
            rackHubLoggedOrbit: false,
            rackHubRefreshTimeOrbit: Date().timeIntervalSince1970
        )
    }

    private func rackHubDemoArchiveOrbit(email rackHubEmailOrbit: String, password rackHubPasswordOrbit: String) -> RackHubOrbitArchive {
        RackHubOrbitArchive(
            rackHubEmailOrbit: rackHubEmailOrbit,
            rackHubPasswordOrbit: rackHubPasswordOrbit,
            rackHubNameOrbit: "Rack Runner",
            rackHubBirthTimeOrbit: DateComponents(calendar: .current, year: 2000, month: 1, day: 1).date?.timeIntervalSince1970,
            rackHubAvatarDataOrbit: nil,
            rackHubGenderOrbit: .rackHubMenOrbit,
            rackHubAgeLowerOrbit: 22,
            rackHubAgeUpperOrbit: 34,
            rackHubCompletedOrbit: true,
            rackHubLoggedOrbit: false,
            rackHubRefreshTimeOrbit: Date().timeIntervalSince1970
        )
    }

    private func rackHubRouteMainOrbit() {
        let rackHubMainOrbit = UIStoryboard(name: "Mbavirn".CUEBOSHTWenglishSpin(), bundle: nil).instantiateViewController(identifier: "barFevert")
        navigationController?.pushViewController(rackHubMainOrbit, animated: true)
    }

    private func rackHubPerformLoginOrbit() {
        let rackHubEmailOrbit = rackHubDraftOrbit.rackHubEmailOrbit
        let rackHubPasswordOrbit = rackHubDraftOrbit.rackHubPasswordOrbit
        view.endEditing(true)
        view.makeToast("Lloggv himnk.a.o.".CUEBOSHTWenglishSpin(), point: view.center, title: nil, image: nil, completion: nil)
        let rackHubPayloadOrbit: [String: Any] = [
            "straightPool": rackHubEmailOrbit,
            "rotationGame": rackHubPasswordOrbit,
            "onePocket": "96984580"
        ]
        CUEBOSHTWShootingSession.CUEBOSHTWtableSpeed(
            CUEBOSHTWclothFriction: "/gjelshvxoezz/aqnvhop",
            CUEBOSHTWballCleanliness: rackHubPayloadOrbit,
            CUEBOSHTWtableLeveling: { [weak self] rackHubResponseOrbit in
                self?.rackHubHandleLoginResponseOrbit(rackHubResponseOrbit)
            },
            CUEBOSHTWrailHeight: { [weak self] rackHubErrorOrbit in
                self?.view.hideToast()
                self?.rackHubToastOrbit(rackHubErrorOrbit.localizedDescription)
            }
        )
    }

    private func rackHubHandleLoginResponseOrbit(_ rackHubResponseOrbit: Any?) {
        view.hideToast()
        guard let rackHubEnvelopeOrbit = rackHubResponseOrbit as? [String: Any],
              let rackHubPayloadOrbit = rackHubEnvelopeOrbit[dratma()] as? [String: Any] else {
            rackHubToastOrbit("Usnaebxipweccwtfefdd orcersjplounssiei kfzozrimgaatd.".CUEBOSHTWenglishSpin())
            return
        }
        AppDelegate.CUEBOSHTWnineBall = rackHubPayloadOrbit["nineBall"] as? String
        AppDelegate.CUEBOSHTWoverheadLight = rackHubPayloadOrbit["overheadLight"] as? Int
        rackHubDraftOrbit.rackHubLoggedOrbit = true
        rackHubDraftOrbit.rackHubRefreshTimeOrbit = Date().timeIntervalSince1970
        rackHubPersistOrbit(rackHubDraftOrbit)
        RackHubOrbitVault.rackHubSyncCurrentOrbit(rackHubDraftOrbit)
        rackHubSuccessOrbit("Lcocghggehdi iisny jsjudcsczelswsafauglblpy".CUEBOSHTWenglishSpin())
        rackHubRouteMainOrbit()
    }

    private func rackHubShowSheetOrbit(_ rackHubSheetOrbit: RackHubOrbitSheet) {
        view.endEditing(true)
        rackHubSheetShadeOrbit.isHidden = false
        rackHubSheetTitleOrbit.isHidden = false
        let rackHubShowGenderOrbit = rackHubSheetOrbit == .rackHubGenderOrbit
        rackHubGenderMenOrbit.isHidden = !rackHubShowGenderOrbit
        rackHubGenderWomenOrbit.isHidden = !rackHubShowGenderOrbit
        rackHubBirthPickerOrbit.isHidden = rackHubShowGenderOrbit
        rackHubBirthConfirmOrbit.isHidden = rackHubShowGenderOrbit
        if rackHubShowGenderOrbit {
            rackHubSheetTitleOrbit.text = "Snexleeschtd bGwesnfdzegr".CUEBOSHTWenglishSpin()
        } else {
            rackHubSheetTitleOrbit.text = "Skeoloemcztx dBviqrktqhq yDkaitoe".CUEBOSHTWenglishSpin()
            let rackHubSeedBirthOrbit = rackHubDraftOrbit.rackHubBirthTimeOrbit ?? DateComponents(calendar: .current, year: 2000, month: 1, day: 1).date?.timeIntervalSince1970 ?? Date().timeIntervalSince1970
            rackHubBirthPickerOrbit.date = Date(timeIntervalSince1970: rackHubSeedBirthOrbit)
        }
        rackHubSheetBottomOrbit?.constant = 0
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.rackHubSheetShadeOrbit.alpha = 1
            self.rackHubSheetShadeOrbit.layoutIfNeeded()
        }
    }

    @objc private func rackHubHideSheetOrbit() {
        rackHubSheetBottomOrbit?.constant = rackHubHeightOrbit(330)
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseIn]) {
            self.rackHubSheetShadeOrbit.alpha = 0
            self.rackHubSheetShadeOrbit.layoutIfNeeded()
        } completion: { _ in
            self.rackHubSheetShadeOrbit.isHidden = true
        }
    }

    @objc private func rackHubFieldChangedOrbit() {
        rackHubRefreshButtonOrbit()
    }

    @objc private func rackHubTogglePasswordOrbit() {
        rackHubEyeOpenOrbit.toggle()
        rackHubPasswordFieldOrbit.isSecureTextEntry = !rackHubEyeOpenOrbit
        let rackHubSymbolOrbit = rackHubEyeOpenOrbit ? "eye.slash" : "eye"
        rackHubPasswordToggleOrbit.setImage(UIImage(systemName: rackHubSymbolOrbit), for: .normal)
    }

    @objc private func rackHubToggleAgreementOrbit() {
        rackHubAgreementOrbit.toggle()
        rackHubRefreshAgreementOrbit()
        rackHubRefreshButtonOrbit()
    }

    @objc private func rackHubHandleLoginOrbit() {
        let rackHubEmailOrbit = rackHubTrimmedOrbit(rackHubEmailFieldOrbit.text)
        let rackHubPasswordOrbit = rackHubPasswordFieldOrbit.text ?? ""
        guard !rackHubEmailOrbit.isEmpty else {
            rackHubToastOrbit("Prlkeoaxsyes nevnjtfexrz lynopuyre qexmuakielh ffzisrhsyt".CUEBOSHTWenglishSpin())
            return
        }
        guard !rackHubPasswordOrbit.isEmpty else {
            rackHubToastOrbit("Pvlfefacslet zelnmtvetrn pynozuvrh qplanslshwkolrrdu rfoibrfsbt".CUEBOSHTWenglishSpin())
            return
        }
        guard rackHubAgreementOrbit else {
            rackHubToastOrbit("Please read and agree to the terms before continuing".CUEBOSHTWenglishSpin())
            return
        }
        if !rackHubEmailOrbit.contains("@") || !rackHubEmailOrbit.contains(".") {
            rackHubToastOrbit("Pgleeqabsoew gejnmteenri say vvjamleildg ueqmeanirlt oazdndorxedszs".CUEBOSHTWenglishSpin())
            return
        }
        let rackHubStoredOrbit = rackHubArchiveOrbit(for: rackHubEmailOrbit)
        if rackHubIsDemoOrbit(rackHubEmailOrbit, rackHubPasswordOrbit) {
            let rackHubDemoOrbit = rackHubStoredOrbit ?? rackHubDemoArchiveOrbit(email: rackHubEmailOrbit, password: rackHubPasswordOrbit)
            rackHubDraftOrbit = rackHubDemoOrbit
            rackHubDraftOrbit.rackHubPasswordOrbit = rackHubPasswordOrbit
            rackHubPersistOrbit(rackHubDraftOrbit)
            rackHubPerformLoginOrbit()
            return
        }
        if let rackHubStoredOrbit, rackHubStoredOrbit.rackHubCompletedOrbit {
            rackHubDraftOrbit = rackHubStoredOrbit
            rackHubDraftOrbit.rackHubPasswordOrbit = rackHubPasswordOrbit
            rackHubDraftOrbit.rackHubRefreshTimeOrbit = Date().timeIntervalSince1970
            rackHubPersistOrbit(rackHubDraftOrbit)
            rackHubPerformLoginOrbit()
            return
        }
        rackHubDraftOrbit = rackHubStoredOrbit ?? rackHubSeedOrbit(email: rackHubEmailOrbit, password: rackHubPasswordOrbit)
        rackHubDraftOrbit.rackHubEmailOrbit = rackHubEmailOrbit
        rackHubDraftOrbit.rackHubPasswordOrbit = rackHubPasswordOrbit
        rackHubRefreshDraftOrbit()
        rackHubStageOrbit = .rackHubProfileOrbit
        rackHubRefreshStageOrbit(animated: true)
        rackHubRefreshButtonOrbit()
    }

    @objc private func rackHubBackFromProfileOrbit() {
        rackHubStageOrbit = .rackHubLoginOrbit
        rackHubRefreshStageOrbit(animated: true)
    }

    @objc private func rackHubContinueProfileOrbit() {
        let rackHubNameOrbit = rackHubTrimmedOrbit(rackHubNameFieldOrbit.text)
        guard !rackHubNameOrbit.isEmpty else {
            rackHubToastOrbit("Phlceeadsqee mevnmtzezri byboeubrw zdoilsppylhaqyy tneaamhe".CUEBOSHTWenglishSpin())
            return
        }
        guard rackHubDraftOrbit.rackHubBirthTimeOrbit != nil else {
            rackHubToastOrbit("Pzldecafsven ecjhooeovsxex ryzoluwrf xbkiarxtrhr gdaaxtve".CUEBOSHTWenglishSpin())
            return
        }
        rackHubDraftOrbit.rackHubNameOrbit = rackHubNameOrbit
        rackHubStageOrbit = .rackHubDiscoveryOrbit
        rackHubRefreshStageOrbit(animated: true)
    }

    @objc private func rackHubBackFromDiscoveryOrbit() {
        rackHubStageOrbit = .rackHubProfileOrbit
        rackHubRefreshStageOrbit(animated: true)
    }

    @objc private func rackHubChooseBirthOrbit() {
        rackHubShowSheetOrbit(.rackHubBirthOrbit)
    }

    @objc private func rackHubShowGenderOrbit() {
        rackHubShowSheetOrbit(.rackHubGenderOrbit)
    }

    @objc private func rackHubPickMenOrbit() {
        rackHubDraftOrbit.rackHubGenderOrbit = .rackHubMenOrbit
        rackHubShowMeValueOrbit.text = rackHubDraftOrbit.rackHubGenderOrbit.rawValue
        rackHubHideSheetOrbit()
    }

    @objc private func rackHubPickWomenOrbit() {
        rackHubDraftOrbit.rackHubGenderOrbit = .rackHubWomenOrbit
        rackHubShowMeValueOrbit.text = rackHubDraftOrbit.rackHubGenderOrbit.rawValue
        rackHubHideSheetOrbit()
    }

    @objc private func rackHubConfirmBirthOrbit() {
        rackHubDraftOrbit.rackHubBirthTimeOrbit = rackHubBirthPickerOrbit.date.timeIntervalSince1970
        rackHubRefreshBirthOrbit()
        rackHubRefreshButtonOrbit()
        rackHubHideSheetOrbit()
    }

    @objc private func rackHubAgeChangedOrbit() {
        rackHubRefreshAgeOrbit()
    }

    @objc private func rackHubFinishDiscoveryOrbit() {
        rackHubDraftOrbit.rackHubNameOrbit = rackHubTrimmedOrbit(rackHubNameFieldOrbit.text)
        rackHubDraftOrbit.rackHubCompletedOrbit = true
        rackHubDraftOrbit.rackHubRefreshTimeOrbit = Date().timeIntervalSince1970
        rackHubPersistOrbit(rackHubDraftOrbit)
        rackHubPerformLoginOrbit()
    }

    @objc private func rackHubPickAvatarOrbit() {
        var rackHubPickerConfigOrbit = PHPickerConfiguration(photoLibrary: .shared())
        rackHubPickerConfigOrbit.selectionLimit = 1
        rackHubPickerConfigOrbit.filter = .images
        let rackHubPickerOrbit = PHPickerViewController(configuration: rackHubPickerConfigOrbit)
        rackHubPickerOrbit.delegate = self
        present(rackHubPickerOrbit, animated: true)
    }

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        guard let rackHubResultOrbit = results.first else { return }
        guard rackHubResultOrbit.itemProvider.canLoadObject(ofClass: UIImage.self) else { return }
        rackHubResultOrbit.itemProvider.loadObject(ofClass: UIImage.self) { [weak self] rackHubImageOrbit, _ in
            guard let self, let rackHubPickedOrbit = rackHubImageOrbit as? UIImage else { return }
            let rackHubRenderOrbit = UIGraphicsImageRenderer(size: CGSize(width: 320, height: 320))
            let rackHubScaledOrbit = rackHubRenderOrbit.image { _ in
                rackHubPickedOrbit.draw(in: CGRect(x: 0, y: 0, width: 320, height: 320))
            }
            DispatchQueue.main.async {
                self.rackHubDraftOrbit.rackHubAvatarDataOrbit = rackHubScaledOrbit.jpegData(compressionQuality: 0.85)
                self.rackHubRefreshAvatarOrbit()
            }
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == rackHubEmailFieldOrbit {
            rackHubPasswordFieldOrbit.becomeFirstResponder()
        } else if textField == rackHubNameFieldOrbit {
            rackHubChooseBirthOrbit()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }

    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        if URL.absoluteString == "rackhub://terms" {
            let rackHubTermsOrbit = CUEBOSHTWContactPoint.CUEBOSHTWshotVisualization.CUEBOSHTWpatternPlay(CUEBOSHTWroutePla: "")
            interactivePopGestureRecognizer(pather: rackHubTermsOrbit)
            return false
        }
        if URL.absoluteString == "rackhub://privacy" {
            let rackHubPrivacyOrbit = CUEBOSHTWContactPoint.CUEBOSHTWshotAlignment.CUEBOSHTWpatternPlay(CUEBOSHTWroutePla: "")
            interactivePopGestureRecognizer(pather: rackHubPrivacyOrbit)
            return false
        }
        return true
    }
}
