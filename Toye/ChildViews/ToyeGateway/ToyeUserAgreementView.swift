//
//  ToyeUserAgreementView.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit

class ToyeUserAgreementView: UIView {
    
    var agreementClosure:((Int)->())?
    
    var blackTyView:UIView!
    @IBOutlet weak var fullToyeCancelButton: UIButton!
    
    var toyeAgreement:String{
        
        if toyeStyle == 0 {
            return """
            User Agreement

            Welcome to Toye (hereinafter referred to as “the App”). Before using the App, please read the following terms carefully. By using the App, you agree to all the terms outlined below.

            1. Services Provided
                1.    The App offers features such as toy collection, community interaction, AI identification, and discussions on toy trends.
                2.    Users can create personal accounts, share toy stories, participate in community activities, and use video calling features through the App.

            2. User Conduct
                1.    Users shall not post illegal, obscene, defamatory, false, or otherwise harmful content using the App.
                2.    Any form of interference with the App’s normal operations is prohibited, including but not limited to the release of malicious code or attacks on the server.
                3.    Users are responsible for the content they publish and must not infringe on the legal rights of third parties.

            3. Intellectual Property
                1.    All content within the App, including but not limited to interface design, code, icons, and logos, is the property of the company.
                2.    Users may not copy, modify, or commercially exploit the App’s content without proper authorization.

            4. Disclaimer
                1.    The AI identification and toy analysis provided by the App are for reference only and do not serve as a definitive assessment.
                2.    The App is not legally responsible for user behavior or statements within the community but reserves the right to address violations.

            5. Modifications to the Agreement
                1.    The company reserves the right to modify this agreement at any time and will notify users of changes within the App. The revised agreement will take effect upon publication.
                2.    If users disagree with the modifications, they may discontinue using the App. Continued use of the App indicates acceptance of the updated agreement.

            6. Termination of Use
                1.    The App reserves the right to terminate user accounts in the event of a violation of this agreement.
                2.    Users may choose to delete their accounts and stop using the App at any time.

            7. Contact Us

            If you have any questions or suggestions regarding this agreement, please contact us at:
            Email: support@toye.com
            """
        }else{
            return """
            Privacy Policy

            Welcome to Toye (hereinafter referred to as “the App”). We are committed to protecting your privacy and ensuring the security of your personal information. Please read this Privacy Policy carefully to understand how we collect, use, and protect your data.

            1. Information Collection
                1.    Account Information: When you register for the App, we may collect your username, email address, profile picture, and other information you voluntarily provide.
                2.    Usage Data: To improve the App’s performance, we may collect data such as your device type, operating system, IP address, and browsing behavior within the App.
                3.    Optional Information: You may choose to share additional information, such as your toy collection details, photos, or community posts.

            2. Information Use
                1.    Service Improvement: We use your data to personalize your experience, recommend content, and optimize features such as AI toy analysis and Trendy Toy Party chatrooms.
                2.    Communication: We may send notifications about updates, promotions, or community activities.
                3.    Legal Compliance: We may process your data to comply with applicable laws and regulations.

            3. Information Sharing

            We do not share your personal data with third parties except in the following cases:
                1.    When required by law or government authorities.
                2.    When necessary to protect the rights and safety of users or the App.
                3.    When sharing anonymized data for research or analytical purposes.

            4. Data Security
                1.    We employ industry-standard security measures to protect your data from unauthorized access, disclosure, or misuse.
                2.    While we strive to safeguard your information, no system is entirely secure. Please use the App responsibly and avoid sharing sensitive personal data.

            5. Your Rights
                1.    Access and Correction: You can access and update your personal information at any time in the App settings.
                2.    Data Deletion: You have the right to request the deletion of your account and associated data.
                3.    Opt-out: You can opt-out of receiving promotional notifications by adjusting your preferences in the App settings.

            6. Updates to the Policy

            We may update this Privacy Policy to reflect changes in our services or legal requirements. Updates will be communicated through the App, and your continued use of the App constitutes acceptance of the revised policy.

            7. Contact Us

            If you have any questions, concerns, or suggestions about this Privacy Policy, please contact us at:
            Email: privacy@toye.com
            """
        }
    }
    
    var toyeStyle = 0

    @IBOutlet weak var userAgreementTextView: UITextView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBAction func toggleAgreementAction(_ sender: UIButton) {
        toyeStyle = sender.tag - 100
        self.userAgreementTextView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        self.userAgreementTextView.text = self.toyeAgreement
    }
    
    func agreementShow(state:Int){
        toyeStyle = state
        self.userAgreementTextView.text = self.toyeAgreement
        
        if let window = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .first?.windows
            .first {
            
            blackTyView = UIView().then {
                $0.backgroundColor = .black.withAlphaComponent(0.7)
            }
            window.addSubview(blackTyView)
            blackTyView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
            
            window.addSubview(self)
            self.snp.makeConstraints { make in
                make.center.equalToSuperview()
            }
            
            window.layoutIfNeeded()
            
            self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            UIView.animate(withDuration: 0.25) {
                self.transform = CGAffineTransform.identity
            }
        }
    }
    
    func agreementDismis(){
        UIView.animate(withDuration: 0.25) {
            self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        } completion: { _ in
            self.blackTyView.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
    
    
    @IBAction func agreementButtonAction(_ sender: UIButton) {
        agreementClosure?(sender.tag - 200)
        self.agreementDismis()
    }
    
    @IBAction func fullCancelButtonAction(_ sender: Any) {
        self.agreementDismis()
    }
    
    
}
