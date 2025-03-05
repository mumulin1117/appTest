//
//  DSORLusterrtirrFairtale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Toast_Swift

class DSORLusterrtirrFairtale: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()



    
   

    private   func shareStoryWithFriends(ifShareDSOR:Bool) {
           
        guard let story = chatTeViDSOR.text, !story.isEmpty else {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("There are no stories to share", duration: 2.0,position: .center, image: UIImage(named: ""),style: toaststyyleDSOR)
            return
        }
        
        
        if ifShareDSOR {
            let activityVC = UIActivityViewController(activityItems: [story], applicationActivities: nil)
            present(activityVC, animated: true, completion: nil) // 打开分享对话框
        }
           
      
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if wercvDSOR == 0 {
            return DSORPujertLoafmuiner.shmured.followingTotalDSOR.count
        }
        return DSORPujertLoafmuiner.shmured.fansTotalDSOR.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let deorcell = tableView.dequeueReusableCell(withIdentifier: "DSORCubertrelationCellID", for: indexPath) as! DSORCubertrelationCell
        if wercvDSOR == 0 {
            deorcell.conberDSOR.image = UIImage(named: DSORPujertLoafmuiner.shmured.followingTotalDSOR[indexPath.row].dsPic
            )
            deorcell.namerVcDSOR.text = DSORPujertLoafmuiner.shmured.followingTotalDSOR[indexPath.row].dsNAme
        }else{
            
            
            deorcell.conberDSOR.image = UIImage(named: DSORPujertLoafmuiner.shmured.fansTotalDSOR[indexPath.row].dsPic
            )
            deorcell.namerVcDSOR.text = DSORPujertLoafmuiner.shmured.fansTotalDSOR[indexPath.row].dsNAme
            
            
        }
        
        return deorcell
        
    }
    private func engageWithChatbot(description: String,colowerDSOR:UIColor) {
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = colowerDSOR
        sceneDSORLbel.textColor = colowerDSOR
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = colowerDSOR
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if wercvDSOR == 0 {
            
            self.navigationController?.pushViewController(DSORUderCentwrrFairtale.init(usersingenterDSOR: DSORPujertLoafmuiner.shmured.followingTotalDSOR[indexPath.row]), animated: true)
        }else{
            
            self.navigationController?.pushViewController(DSORUderCentwrrFairtale.init(usersingenterDSOR: DSORPujertLoafmuiner.shmured.fansTotalDSOR[indexPath.row]), animated: true)
            
        }
    }

    @IBOutlet weak var foloowDSOR: UIButton!
    @IBOutlet weak var fanceowDSOR: UIButton!
    
    @IBOutlet weak var MunonberDSOR: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        foloowDSOR.layer.cornerRadius = 8
        foloowDSOR.layer.masksToBounds = true
        
        fanceowDSOR.layer.cornerRadius = 8
        fanceowDSOR.layer.masksToBounds = true
        MunonberDSOR.rowHeight = 88
        MunonberDSOR.delegate = self
        MunonberDSOR.dataSource = self
        let nibDSORn = UINib(nibName: "DSORCubertrelationCell", bundle: nil)
        
        MunonberDSOR.register(nibDSORn, forCellReuseIdentifier: "DSORCubertrelationCellID")
        if self.view.isHidden  {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = self.view.isHidden
            sceneDSORLbel.isHidden = self.view.isHidden
            haraInputDSORField.isHidden = self.view.isHidden
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        
        if wercvDSOR == 0 {
            foloowDSOR.isSelected = true
            foloowDSOR.backgroundColor = UIColor(red: 1, green: 0.68, blue: 0.22, alpha: 1)
            fanceowDSOR.isSelected = false
            fanceowDSOR.backgroundColor = .clear
        }else{
            foloowDSOR.isSelected = false
            foloowDSOR.backgroundColor = .clear
            fanceowDSOR.isSelected = true
            fanceowDSOR.backgroundColor = UIColor(red: 1, green: 0.68, blue: 0.22, alpha: 1)
        }
      
        
       
        
        
    }


    @IBAction func awaythisRoolmDSOR(_ sender: UIButton) {
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
          
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            self.navigationController?.popViewController(animated: true)
        }
    }
    var wercvDSOR:Int
    
    
    init(_ wercvDSOR:Int) {
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
            
           
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            self.wercvDSOR = wercvDSOR
        }else{
            self.wercvDSOR = wercvDSOR
        }
       
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        MunonberDSOR.reloadData()
    }
    private func changeDPudingDESORScene(_ sender: UISegmentedControl,ifaddDSOR:Bool) {
        switch sender.selectedSegmentIndex {
        case 0:
            selSceneDSOR = "Dreamy DSOR Opera House"
        case 1:
            selSceneDSOR = "Mysterious Forest  DSOR Opera House"
        case 2:
            selSceneDSOR = "Luxurious Classical DSOR Opera House"
        default:
            break
        }
        
        sceneDSORLbel.text = "current scene: \(selSceneDSOR)"
        
        chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)"
        if ifaddDSOR {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = ifaddDSOR
            sceneDSORLbel.isHidden = ifaddDSOR
            haraInputDSORField.isHidden = ifaddDSOR
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        
    }


    
    
    @IBAction func chaingechouceDSIOR(_ sender: UIButton) {
        
        if self.view.isHidden {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = self.view.isHidden
            sceneDSORLbel.isHidden = self.view.isHidden
            haraInputDSORField.isHidden = self.view.isHidden
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        if sender ==  foloowDSOR{
            foloowDSOR.isSelected = true
            foloowDSOR.backgroundColor = UIColor(red: 1, green: 0.68, blue: 0.22, alpha: 1)
            fanceowDSOR.isSelected = false
            fanceowDSOR.backgroundColor = .clear
            wercvDSOR = 0
        }else{
            foloowDSOR.isSelected = false
            foloowDSOR.backgroundColor = .clear
            fanceowDSOR.isSelected = true
            fanceowDSOR.backgroundColor = UIColor(red: 1, green: 0.68, blue: 0.22, alpha: 1)
            wercvDSOR = 1
        }
        self.view.makeToastActivity(.center)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            var realiioDSOR: [Int] = [5,4,9,9,4]
            var bingliDSOR = 213

            if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
                realiioDSOR.append(bingliDSOR)
            }
            var selfCvbmunberDSOR = realiioDSOR.count + 30

            if let lasterding = realiioDSOR.last  {
                bingliDSOR += lasterding
            }else{
                bingliDSOR += 23
                
               
            }

            if bingliDSOR > 20 && realiioDSOR.count > 2{
                self.MunonberDSOR.reloadData()
            }
           
            self.view.hideToastActivity()
        }
       
    }
    
}



