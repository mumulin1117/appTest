//
//  EMOCLEARSearchXioController.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/8.
//

import UIKit

class EMOCLEARSearchXioController: UIViewController, UITextFieldDelegate {
  
    private var completeRegistryXio: [[String: String]] = []
   
    private var activeManifestXio: [[String: String]] = []
    private func injectLogicFlowXio() {
        
        completeRegistryXio = EMOCLEARRAaslertvbCell.themeCustomization
        activeManifestXio = completeRegistryXio
        
        searchBarXio.addTarget(self, action: #selector(echoSearchUpdateXio(_:)), for: .editingChanged)
        
        spotCollectionXio.reloadData()
    }

    @objc private func echoSearchUpdateXio(_ fieldXio: UITextField) {
        let inputXio = fieldXio.text?.lowercased() ?? ""
        
        if inputXio.isEmpty {
            activeManifestXio = completeRegistryXio
        } else {
           
            activeManifestXio = completeRegistryXio.filter { dictXio in
                let titleXio = dictXio["RoomAlpTitle"]?.lowercased() ?? ""
                let desXio = dictXio["RoomAlpDades"]?.lowercased() ?? ""
                return titleXio.contains(inputXio) || desXio.contains(inputXio)
            }
        }
        
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.spotCollectionXio.reloadData()
        }
    }
    
    
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 - 7)/2, height: 190)
        voiceTimbred.minimumLineSpacing = 7
        voiceTimbred.minimumInteritemSpacing = 7
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    private lazy var spotCollectionXio: UICollectionView = {
       
        let cvXio = UICollectionView(frame: .zero, collectionViewLayout: voiceTimbre)
        cvXio.register(UINib.init(nibName: "EMOCLEARConnectSpotCell", bundle: nil), forCellWithReuseIdentifier: "EMOCLEARConnectSpotCell")
        
        cvXio.delegate = self
        cvXio.backgroundColor = .clear
        cvXio.dataSource = self
        
     
        cvXio.showsVerticalScrollIndicator = false
        return cvXio
    }()
    
    private let searchBarXio = UITextField()
    private var dataSourceXio: [[String: String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let b = UIImageView.init(image: UIImage.init(named: "EMOCLEARsceneSetting"))
        b.contentMode = .scaleAspectFill
        b.frame = UIScreen.main.bounds
        view.addSubview(b)
        setupBaseHabitatXio()
        injectLogicFlowXio()
    }
    
    private func setupBaseHabitatXio() {
        view.backgroundColor = .white
        
        let headerLabelXio = UILabel()
        headerLabelXio.text = "Search"
        headerLabelXio.font = .systemFont(ofSize: 24, weight: .bold)
        headerLabelXio.textAlignment = .center
        
        let backBtnXio = UIButton(type: .system)
        backBtnXio.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        backBtnXio.tintColor = .black
        backBtnXio.addTarget(self, action: #selector(youTouback), for: .touchUpInside)
        searchBarXio.delegate = self
        searchBarXio.placeholder = "Evelyn Drake..."
        searchBarXio.backgroundColor = UIColor(white: 0.96, alpha: 1.0)
        searchBarXio.layer.cornerRadius = 22
        let leftViewXio = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 44))
        let iconXio = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        iconXio.frame = CGRect(x: 15, y: 12, width: 20, height: 20)
        iconXio.tintColor = .lightGray
        leftViewXio.addSubview(iconXio)
        searchBarXio.leftView = leftViewXio
        searchBarXio.leftViewMode = .always
        
        [headerLabelXio, backBtnXio, searchBarXio, spotCollectionXio].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        let ratioXio = UIScreen.main.bounds.width / 375.0
        
        NSLayoutConstraint.activate([
            headerLabelXio.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            headerLabelXio.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            backBtnXio.centerYAnchor.constraint(equalTo: headerLabelXio.centerYAnchor),
            backBtnXio.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            searchBarXio.topAnchor.constraint(equalTo: headerLabelXio.bottomAnchor, constant: 25),
            searchBarXio.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20 * ratioXio),
            searchBarXio.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20 * ratioXio),
            searchBarXio.heightAnchor.constraint(equalToConstant: 44),
            
            spotCollectionXio.topAnchor.constraint(equalTo: searchBarXio.bottomAnchor, constant:15),
            spotCollectionXio.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15 ),
            spotCollectionXio.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            spotCollectionXio.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
     
        spotCollectionXio.delegate = self
        spotCollectionXio.dataSource = self
    }
    
   @objc func youTouback() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension EMOCLEARSearchXioController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return activeManifestXio.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "EMOCLEARConnectSpotCell", for: indexPath) as! EMOCLEARConnectSpotCell
        jjIo.backgroundAmbience.image = UIImage(named: activeManifestXio[indexPath.row]["RoomAlpDCOver"] ?? "")
        jjIo.audioLatency.image = UIImage(named: activeManifestXio[indexPath.row]["ayChallenge"] ?? "")
        jjIo.roleplayGuidelines.text = activeManifestXio[indexPath.row]["RoomAlpTitle"]
        jjIo.characterAlignment.text = activeManifestXio[indexPath.row]["RoomAlpDades"]
        jjIo.storySeeds.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
        jjIo.voiceMorphing.setTitle("\(Int.random(in: 1...2)) online", for: .normal)
        return jjIo
       
    }
    @objc func storyboardTools()  {
        self.present(EMOCLEARCumidtoneRangentroller.init(), animated: true)
     }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vaultOverlayJwel = EMOCLEARVaultProtocolJwelView(frame: UIScreen.main.bounds)
       
        vaultOverlayJwel.sessionGateClosureJwel = { [weak self] isAuthorizedJwel in
            guard let self = self else { return }
            
            if isAuthorizedJwel {
                let roromedetail = EMOCLEARFallINreoomtiproller.init(nnsteBase: EMOCLEARRAaslertvbCell.themeCustomization[indexPath.row])
                self.navigationController?.pushViewController(roromedetail, animated: true)
            } else {
               
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  "Access Denied for Node")
            }
            
        }
                
               
        if let currentWindowJwel = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
            vaultOverlayJwel.deployToCanvasJwel(currentWindowJwel)
            
        }
       
        
    }
}
