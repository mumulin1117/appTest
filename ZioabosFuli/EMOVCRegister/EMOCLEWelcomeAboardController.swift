//
//  EMOCLEWelcomeAboardController.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/9.
//

import UIKit

import UIKit

class EMOCLEWelcomeAboardController: UIViewController {

    private struct CommunityRuleEMOCLE {
        let title: String
        let subtitle: String
    }

    private let rulesEMOCLE: [CommunityRuleEMOCLE] = [
        CommunityRuleEMOCLE(title: "Bdes zYtodurrhswewlqf".characterBelievability(), subtitle: "Anuctkhoefnvtkiocqiptjyg gIesw vTxhmez iKzekyy dTvoo kRgeuazlm yCpojnkneewcsttiaohn".characterBelievability()),
        CommunityRuleEMOCLE(title: "Bwef bKmicnzd".characterBelievability(), subtitle: "Hqedlqpz fUwsf eCorneeaetveq fAt dSmaxftex vArnhdr tRbeosipleecntufsuflu mSspxaqcse".characterBelievability()),
        CommunityRuleEMOCLE(title: "Rxezsdpmeocptd mDsidvyedriswiitjy".characterBelievability(), subtitle: "Tjraebaltg pEuvnecrjyg jUiswepra cWfistuhn vDhiigknwiltiy".characterBelievability()),
        CommunityRuleEMOCLE(title: "1z8d+c yOcndldy".characterBelievability(), subtitle: "Suttrbitcdtmljym qFsoorm nAbdnualstzsf.f eNooo xMjinncorrlsw zAxlelaokwqend".characterBelievability()),
        CommunityRuleEMOCLE(title: "Sktpayyy uInnyfloyrkmqeid".characterBelievability(), subtitle: "Rpefvoibeiwa nOsumre dPgruitvoagcbyb xAugdroeiesmzeyndtq cBfetftozreessntnayrftiiunlg".characterBelievability())
    ]

    private let stackViewEMOCLE = UIStackView()
    private let enterTriggerEMOCLE = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRulesUIEMOCLE()
    }

    private func setupRulesUIEMOCLE() {
        let layer  = UIImageView(image: UIImage.init(named: "EMOCLEARfantasyCharacterdddss"))
        view.addSubview(layer)
        layer.contentMode = .scaleAspectFill
        layer.frame = UIScreen.main.bounds
        self.view.addSubview(layer)
        let ratioEMOCLE = EMOCLEDimensionHelper.adaptiveScaleEMOCLE

       
        let headerTitleEMOCLE = UILabel()
        headerTitleEMOCLE.text = "Welcome Aboard 😄"
        headerTitleEMOCLE.font = .systemFont(ofSize: 28, weight: .bold)
        headerTitleEMOCLE.textAlignment = .center
        headerTitleEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerTitleEMOCLE)

        let subHeaderEMOCLE = UILabel()
        subHeaderEMOCLE.text = "Ak nfsekwn htohdiqnfgpsd jtkog grdeqmjetmebnelri.j.u.".characterBelievability()
        subHeaderEMOCLE.font = .systemFont(ofSize: 16)
        subHeaderEMOCLE.textColor = .darkGray
        subHeaderEMOCLE.textAlignment = .center
        subHeaderEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subHeaderEMOCLE)

        stackViewEMOCLE.axis = .vertical
        stackViewEMOCLE.spacing = 30 * ratioEMOCLE
        stackViewEMOCLE.distribution = .fillEqually
        stackViewEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackViewEMOCLE)

        for rule in rulesEMOCLE {
            let rowViewEMOCLE = createRuleRowEMOCLE(title: rule.title, subtitle: rule.subtitle)
            stackViewEMOCLE.addArrangedSubview(rowViewEMOCLE)
        }

        enterTriggerEMOCLE.setTitle("Efnktwekr".characterBelievability(), for: .normal)
        enterTriggerEMOCLE.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        enterTriggerEMOCLE.backgroundColor = UIColor(red: 0.5, green: 0.4, blue: 1, alpha: 1)
        enterTriggerEMOCLE.layer.cornerRadius = 28
        enterTriggerEMOCLE.addTarget(self, action: #selector(commenceExperienceEMOCLE), for: .touchUpInside)
        enterTriggerEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(enterTriggerEMOCLE)

        NSLayoutConstraint.activate([
            headerTitleEMOCLE.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40 * ratioEMOCLE),
            headerTitleEMOCLE.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            subHeaderEMOCLE.topAnchor.constraint(equalTo: headerTitleEMOCLE.bottomAnchor, constant: 12 * ratioEMOCLE),
            subHeaderEMOCLE.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            stackViewEMOCLE.topAnchor.constraint(equalTo: subHeaderEMOCLE.bottomAnchor, constant: 50 * ratioEMOCLE),
            stackViewEMOCLE.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35 * ratioEMOCLE),
            stackViewEMOCLE.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35 * ratioEMOCLE),

            enterTriggerEMOCLE.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            enterTriggerEMOCLE.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            enterTriggerEMOCLE.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            enterTriggerEMOCLE.heightAnchor.constraint(equalToConstant: 56)
        ])
    }

   
    private func createRuleRowEMOCLE(title: String, subtitle: String) -> UIView {
        let containerEMOCLE = UIView()
        
        
        let arrowIconEMOCLE = UIImageView()
        arrowIconEMOCLE.image = UIImage(systemName: "arrowtriangle.right.fill")
        arrowIconEMOCLE.tintColor = UIColor(red: 1.0, green: 0.4, blue: 0.7, alpha: 1.0)
        arrowIconEMOCLE.contentMode = .scaleAspectFit
        arrowIconEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        containerEMOCLE.addSubview(arrowIconEMOCLE)
        
        let textContainerEMOCLE = UIStackView()
        textContainerEMOCLE.axis = .vertical
        textContainerEMOCLE.spacing = 4
        textContainerEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        containerEMOCLE.addSubview(textContainerEMOCLE)
        
        let titleLabelEMOCLE = UILabel()
        titleLabelEMOCLE.text = title
        titleLabelEMOCLE.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabelEMOCLE.textColor = .black
        
        let subLabelEMOCLE = UILabel()
        subLabelEMOCLE.text = subtitle
        subLabelEMOCLE.font = .systemFont(ofSize: 14)
        subLabelEMOCLE.textColor = .gray
        subLabelEMOCLE.numberOfLines = 0
        
        textContainerEMOCLE.addArrangedSubview(titleLabelEMOCLE)
        textContainerEMOCLE.addArrangedSubview(subLabelEMOCLE)
        
        NSLayoutConstraint.activate([
            arrowIconEMOCLE.leadingAnchor.constraint(equalTo: containerEMOCLE.leadingAnchor),
            arrowIconEMOCLE.centerYAnchor.constraint(equalTo: titleLabelEMOCLE.centerYAnchor),
            arrowIconEMOCLE.widthAnchor.constraint(equalToConstant: 12),
            arrowIconEMOCLE.heightAnchor.constraint(equalToConstant: 12),
            
            textContainerEMOCLE.leadingAnchor.constraint(equalTo: arrowIconEMOCLE.trailingAnchor, constant: 20),
            textContainerEMOCLE.trailingAnchor.constraint(equalTo: containerEMOCLE.trailingAnchor),
            textContainerEMOCLE.topAnchor.constraint(equalTo: containerEMOCLE.topAnchor),
            textContainerEMOCLE.bottomAnchor.constraint(equalTo: containerEMOCLE.bottomAnchor)
        ])
        
        return containerEMOCLE
    }

    @objc private func commenceExperienceEMOCLE() {
        EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: true)
       
    }
}
