//
//  ITremixipoContoll.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/8.
//

import UIKit
import Loaf

class ITremixipoContoll: LaterPageContirl, UITableViewDelegate,UITableViewDataSource, UITextFieldDelegate {
    
    
    deinit {
        
        for (jd,ko) in AppDelegate.allMeasgfijg.enumerated(){
            if ko.userdiocm["Due_oID"] == appdelegateFei.userdiocm["Due_oID"] {
                AppDelegate.allMeasgfijg[jd].lisat = appdelegateFei.lisat
            }
        }
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let result = textField.text ?? ""
        if result == "" {
            Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tchaeu omneqsoswaigtec isdeunztv xcoarnwnhoztf zbxen qefmhpktcyo!"), sender: self).show()
           
            return true
        }
        
       
        
      
        self.appdelegateFei.lisat.append(result)
        textField.text = nil
        textField.resignFirstResponder()
        
        self.tablDUE.reloadData()
        return true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        appdelegateFei.lisat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dues = tableView.dequeueReusableCell(withIdentifier: "DUEsayingsay", for: indexPath) as! DUEsayingsay
        dues.senoutneLabel.text = appdelegateFei.lisat[indexPath.row]
        return dues
    }
    
    var appdelegateFei :DIOLogdiaologall
    init(appdelegateFei: DIOLogdiaologall) {
        self.appdelegateFei = appdelegateFei
        super.init(nibName: nil, bundle: nil)
        
        self.recordidDUE = appdelegateFei.userdiocm["Due_oID"]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private let userImage = UIImageView()
    
                                                              
   
    private lazy var meshaineLabel: UILabel = {
        let laj = UILabel.init()
        laj.textAlignment = .center
        laj.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        laj.textColor =  UIColor.white
        return laj
    }()
    
    lazy var caklllbutton: UIButton = {
        let ao = UIButton.init()
        ao.setImage(UIImage.init(named: "strideMatrix"), for: .normal)
        ao.addTarget(self, action: #selector(hyperGlide), for: .touchUpInside)
        return ao
    }()
    private  lazy var nevershuldInput: UITextField = {
        let field = UITextField.init()
        field.backgroundColor = UIColor(red: 0.23, green: 0.17, blue: 0.22, alpha: 1)
        field.layer.cornerRadius = 26
        field.returnKeyType = .done
        field.delegate = self
        field.layer.masksToBounds = true
        field.leftViewMode = .always
        field.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        field.textColor = .white
        field.attributedPlaceholder = NSAttributedString.init(string: "Say something....", attributes: [.foregroundColor:UIColor.white])
        field.font = UIFont(name: "HarmonyOS Sans", size: 14)
        return field
    }()
    
    @objc func hyperGlide()  {
        
        self.navigationController?.pushViewController(ITVidejshipoContoll.init(appdelegateFei: appdelegateFei), animated: true)
    }
    
    private lazy var tablDUE: UITableView = {
        let tablDUE = UITableView.init(frame: .zero, style: .plain)
        tablDUE.showsVerticalScrollIndicator = false
        tablDUE.separatorStyle = .none
        tablDUE.delegate = self
        tablDUE.dataSource = self
        tablDUE.backgroundColor = .clear
        tablDUE.rowHeight = 100
        tablDUE.register(DUEsayingsay.self, forCellReuseIdentifier: "DUEsayingsay")
        
        return tablDUE
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(userImage)
        self.view.addSubview(meshaineLabel)
        self.view.addSubview(caklllbutton)
        self.view.addSubview(tablDUE)
        meshaineLabel.text = appdelegateFei.userdiocm["Due_Nopme"]
        userImage.image = UIImage(named: appdelegateFei.userdiocm["Due_avmter"] ?? "")
        
        
        userImage.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.centerX.equalToSuperview().offset(-17)
            make.centerY.equalTo(self.shitMorengDUE.snp.centerY)
        }
        userImage.layer.cornerRadius = 12
        userImage.layer.masksToBounds = true
        
        
        meshaineLabel.snp.makeConstraints { make in
            make.leading.equalTo(userImage.snp.trailing).offset(6)
            make.centerY.equalTo(userImage)
        }
        
        caklllbutton.snp.makeConstraints { make in
            make.width.height.equalTo(45)
            make.centerY.equalTo(self.shitMorengDUE)
            make.trailing.equalTo(shitMorengDUE.snp.leading).offset(-16)
        }
        tablDUE.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(shitMorengDUE.snp.bottom).offset(30)
        }
        
        
        let wingh = ((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets
        
        
        view.addSubview(nevershuldInput)
        nevershuldInput.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.height.equalTo(52)
            
            make.bottom.equalTo(-(wingh?.bottom ?? 0) - 12)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(refreshinggindication), name: .contentBlocked, object: nil)
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }


    @objc func refreshinggindication()  {
        self.navigationController?.popViewController(animated: true)
    }
    


}


class DUEsayingsay: UITableViewCell {
    
    
    private let userImage = UIImageView(image:UIImage(named: "imgDioauyybg"))
    
 
    
     lazy var senoutneLabel: UILabel = {
        let laj = UILabel.init()
         laj.numberOfLines = 0
        laj.font = UIFont.systemFont(ofSize: 16, weight: .regular)
         laj.textColor =  UIColor.black
        return laj
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        userImage.contentMode = .scaleToFill
      
        self.backgroundColor = .clear
       
        
       
        contentView.addSubview(userImage)
  
        contentView.addSubview(senoutneLabel)
        
  
        senoutneLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-40)
            make.top.equalToSuperview().offset(12 + 12)
            make.width.lessThanOrEqualTo(180)
            make.width.greaterThanOrEqualTo(80)
            make.bottom.equalToSuperview().offset(-12 - 12)
        }
        
        
        userImage.snp.makeConstraints { make in
            make.leading.equalTo(senoutneLabel.snp.leading).offset(-20)
            make.top.equalTo(senoutneLabel.snp.top).offset(-20)
            make.trailing.equalTo(senoutneLabel.snp.trailing).offset(20)
            make.bottom.equalTo(senoutneLabel.snp.bottom).offset(20)
        }
        
       
        
     
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
