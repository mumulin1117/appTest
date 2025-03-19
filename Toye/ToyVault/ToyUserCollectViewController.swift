//
//  ToyUserCollectViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit
import EmptyDataSet_Swift

class ToyUserCollectViewController: ToyeViewController,UITableViewDelegate,UITableViewDataSource,EmptyDataSetSource,EmptyDataSetDelegate {
    
    @IBOutlet weak var toyCollectTable: UITableView!{
        didSet{
            toyCollectTable.register(UINib(nibName: "ToyUserCollectTableViewCell", bundle: nil), forCellReuseIdentifier: "ToyUserCollectTableViewCell")
            toyCollectTable.rowHeight = 118
            toyCollectTable.emptyDataSetSource = self
            toyCollectTable.emptyDataSetDelegate = self
        }
    }
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    var toyeCollectLists = [ToyScape]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if toyeCollectGemsHub.count > 0 {
            highlightRetroToysInNostalgiaVault()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Lcikkjegs".ty
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
        }
        
        toyeRequestState = 200
    }
    
    
    func highlightRetroToysInNostalgiaVault(){
        toyeCollectLists = ToyeInfo.info.toyScapeItems.filter { toyScape in
            toyeInfoWonders.append(112)
            if toyeInfoWonders.count > 0 && ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeImage) != nil {
                if ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeBlack) == nil {
                    return true
                }
            }
            toyeInfoWonders.append(122)
            if toyeCollectGemsHub.count == 0 {
                return true
            }
            toyeInfoWonders.append(1232)
            return false
        }
        
        toyCollectTable.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 16.0 : CGFLOAT_MIN
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 12.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return toyeCollectLists.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toyUserCollectCell = tableView.dequeueReusableCell(withIdentifier: "ToyUserCollectTableViewCell") as! ToyUserCollectTableViewCell
        toyUserCollectCell.toyeScapeimage.image = UIImage(named: toyeCollectLists[indexPath.section].toyImage)
        toyUserCollectCell.toyeScapeInfo.text = toyeCollectLists[indexPath.section].toyIntroduction
        return toyUserCollectCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let scapeDetailController = ToyscapeViewDetailController(nibName: "ToyscapeViewDetailController", bundle: nil)
        scapeDetailController.toyScape = toyeCollectLists[indexPath.row]
        scapeDetailController.toyeScapeInfoChanged = { [weak self] toyScape in
            if let weakSelf = self {
                weakSelf.toyeCollectLists[indexPath.row] = toyScape
            }
        }
        navigationController?.pushViewController(scapeDetailController, animated: true)
    }
    
    func image(forEmptyDataSet scrollView: UIScrollView) -> UIImage? {
        return UIImage.toyeEmpty
    }
    
    
    func title(forEmptyDataSet scrollView: UIScrollView) -> NSAttributedString? {
        let toyeEmptyDataText = "Tghierrdec'xsj unxontqhoibnkgj hhqeerve".ty
        if toyeEmptyDataText.count > 0 {
            let attributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: 15, weight: .black),
                .foregroundColor: UIColor.white
            ]
            return NSAttributedString(string: toyeEmptyDataText, attributes: attributes)
        }
        return nil
    }

    
}
