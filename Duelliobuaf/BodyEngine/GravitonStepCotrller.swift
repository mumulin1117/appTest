//
//  GravitonStepCotrller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit
import SwiftyStoreKit
import IQKeyboardManager
class GravitonStepCotrller: UIViewController {

    @IBOutlet weak var segmentControllDUE: UISegmentedControl!
    
    
    @IBOutlet weak var infoinrDesc: UITextView!
    
    
    @IBOutlet weak var haveredf: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        igniteDuelEnergy()
        generateBattleRoutine()
    }
    
    private func igniteDuelEnergy(){
        
        haveredf.layer.cornerRadius = 24
        
        
        haveredf.layer.masksToBounds = true
    }
    
    private func generateBattleRoutine()  {
        infoinrDesc.layer.cornerRadius  = 20
        infoinrDesc.layer.masksToBounds = true
        
        infoinrDesc.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
    
    
    func remixChallengeParameters() {
        infoinrDesc.text = """

Duelliv Terms of Service
Effective Date: [2025-03-20]

1. Eligibility

You must be at least 13 years old (or the legal age in your jurisdiction).
Prohibited for users previously banned for policy violations.
2. Account Responsibilities

Keep login credentials secure. Notify us immediately of unauthorized access.
You are liable for all activities under your account.
3. User-Generated Content

Ownership: You retain rights to original content but grant Duelliv a non-exclusive, royalty-free license to host, modify, and distribute it.
Prohibited Content: No hate speech, nudity, harassment, or copyrighted material without permission.
AI-Generated Content: Suggestions created by Duelliv’s AI are owned by the platform and may not be used commercially outside the app.
4. Virtual Gifts & Purchases

Virtual currency  is non-refundable unless required by law.
Gifts are digital items with no real-world value. Resale is prohibited.
Report fraudulent transactions within 48 hours for investigation.
5. Prohibited Conduct

You agree not to:

Circumvent AI systems to generate harmful or illegal content.
Use bots to manipulate live streams or gift transactions.
Share others’ personal information without consent.
6. Termination

By You: Delete your account via app settings.
By Us: Suspend or terminate accounts for violations, with prior notice (except for severe breaches).
7. Disclaimers

Services are provided “as is.” We do not guarantee uninterrupted or error-free functionality.
We are not liable for injuries from performing AI-generated dance moves or third-party content.
8. Limitation of Liability

Our total liability is limited to the amount you paid in the past 12 months. Exclusions apply for gross negligence or willful misconduct.

9. Governing Law & Disputes

Governed by the laws of [Jurisdiction, e.g., California, USA].
Disputes resolved through binding arbitration (AAA rules), unless prohibited by law.
10. Updates to Terms

We will notify you of material changes. Continued use after 30 days constitutes acceptance.

Contact:Duelli@gmail.com]

Notes for Legal Compliance:

Customize jurisdiction-specific clauses (e.g., GDPR, CCPA, Brazil’s LGPD).
Include links to Apple/Google refund policies if applicable.
Consult legal counsel to ensure alignment with app store guidelines and regional laws.
Let me know if you need further adjustments! 🩰✨

"""
    }
    @IBAction func changeValuerDue(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            remixChallengeParameters()
        }else{
            
            infoinrDesc.text = """

Duelliv Privacy Policy
Last Updated: [2025-03-20]

1. Information We Collect

We collect the following types of information to provide and improve our services:

Account Information: Email address, username, age, and profile details.
User Content: Dance ,  streams,  messages, and AI-generated dance move preferences.
Usage Data: Device information (IP address, OS, browser), interaction logs (gifts sent, challenges joined), and cookies.

Location Data: Approximate location based on IP address or GPS (if enabled).
2. How We Use Your Information

Service Delivery: To create accounts, enable live streaming, and personalize AI-generated dance suggestions.
Improvements: Analyze usage patterns to enhance app functionality and AI algorithms.
Marketing: Send promotional offers (with your consent).
Security: Detect fraud, enforce policies, and protect user safety.
Legal Compliance: Respond to legal requests and regulatory obligations.
3. Data Sharing

We share information only under these circumstances:

Service Providers:  cloud storage, and analytics partners (bound by confidentiality agreements).
Legal Requirements: To comply with court orders, government requests, or applicable laws.
Business Transfers: In mergers, acquisitions, or asset sales.
Aggregated/Anonymized Data: For research or marketing, ensuring no personal identification.
4. International Data Transfers

Data may be transferred globally. For EU/UK users, we rely on GDPR-approved mechanisms (e.g., Standard Contractual Clauses).

5. Your Rights

Depending on your jurisdiction, you may:

Access, correct, or delete your data.
Opt out of marketing communications.
Restrict processing or request data portability.
Withdraw consent (where applicable).
Submit requests via [Duelliv@gmail.com]. We respond within 30 days.

6. Children’s Privacy

Duelliv is not intended for users under 13. We do not knowingly collect data from children. Contact us to report accidental collection.

7. Data Security

We use encryption, access controls, and regular audits to protect your data. However, no system is 100% secure.

8. Policy Updates

We will notify users of material changes via email or in-app alerts. Continued use constitutes acceptance.



"""
        }
    }
    

    @IBAction func readniewoe(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    static func amplifyStagePresence(){
        
        IQKeyboardManager.shared().isEnabled = true
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            for purchase in purchases {
                switch purchase.transaction.transactionState {
                case .purchased, .restored:
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                case .failed, .purchasing, .deferred:break
                @unknown default:break
                }
            }
        }
        
    }
    
}
