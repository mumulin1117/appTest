//
//  ToyPostViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit
import EmptyDataSet_Swift

enum ToyControllerType{
    case myPost
    case aiResult
    
    var navigationTitle:String{
        switch self {
        case .myPost:
            return "Mvys nploqsot".ty
        case .aiResult:
            return "AuIh kHniupgshtjekrk tRdeuviixedwk gRzemctofrxdts".ty
        }
    }
}


class ToyPostViewController: ToyeViewController ,UICollectionViewDelegate,UICollectionViewDataSource,EmptyDataSetSource,EmptyDataSetDelegate{
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    var aroundTotType:ToyControllerType =  .myPost
    
    var toyeCollectLists = [ToyScape]()
    var tpyeHipsterDatas:[HipsterToyResultModel] = [HipsterToyResultModel]()
    
    @IBOutlet weak var toyPostCollection: UICollectionView!{
        didSet{
            
            
            toyPostCollection.emptyDataSetSource = self
            
            let toyTreasuresCollectionLayout = UICollectionViewFlowLayout().then {
                if toyeCollectGemsHub.count == 0 {
                    $0.itemSize = CGSizeMake((UIScreen.main.bounds.size.width - 36)/2, 258)
                    toyeCollectGemsHub["statues"] = "statues"
                }
                
                $0.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
                
                if toyeCollectGemsHub.keys.contains("statues") {
                    $0.minimumInteritemSpacing = 12
                    $0.minimumLineSpacing = 12
                }
            }
            
            toyPostCollection.emptyDataSetDelegate = self
            if toyeCollectGemsHub.count > 0 {
                toyPostCollection.register(UINib(nibName: "ToyAiResultCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ToyAiResultCollectionViewCell")
                toyPostCollection.register(UINib(nibName: "ToyPostCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ToyPostCollectionViewCell")
            }
            
            toyPostCollection.setCollectionViewLayout(toyTreasuresCollectionLayout, animated: true) { _ in
                
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if toyeRequestState == 200 {
            highlightRetroToysInNostalgiaVault()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = aroundTotType.navigationTitle
        
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
        if self.aroundTotType == .myPost {
            
            if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                toyeCollectLists = [loginedCurrntToye]
            }
        }else{
            tpyeHipsterDatas = ToyeInfo.info.tpyeHipsterDatas
        }
        toyPostCollection.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.aroundTotType == .myPost {
            let scapeDetailController = ToyscapeViewDetailController(nibName: "ToyscapeViewDetailController", bundle: nil)
            scapeDetailController.toyScape = toyeCollectLists[indexPath.row]
            scapeDetailController.toyeScapeInfoChanged = { [weak self] toyScape in
                if let weakSelf = self {
                    weakSelf.toyeCollectLists[indexPath.row] = toyScape
                }
            }
            navigationController?.pushViewController(scapeDetailController, animated: true)
        }else{
            let hipsterToyResultController = HipsterToyResultViewController(nibName: "HipsterToyResultViewController", bundle: nil)
            hipsterToyResultController.toyeRequestResult = tpyeHipsterDatas[indexPath.row].resultToyeText
            hipsterToyResultController.toyeResultSelectedImage = tpyeHipsterDatas[indexPath.row].resultToyeImageData
            navigationController?.pushViewController(hipsterToyResultController, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if self.aroundTotType == .myPost {
            let toyPostCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToyPostCollectionViewCell", for: indexPath) as! ToyPostCollectionViewCell
            toyPostCell.toyScapeImage.image = UIImage(named: toyeCollectLists[indexPath.row].toyImage)
            toyPostCell.toyeScapeInfo.text = toyeCollectLists[indexPath.row].toyIntroduction
            return toyPostCell
        }else{
            let toyAiResultCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToyAiResultCollectionViewCell", for: indexPath) as! ToyAiResultCollectionViewCell
            toyAiResultCell.hipsterResultImage.image = tpyeHipsterDatas[indexPath.row].resultToyeImageData
            toyAiResultCell.hipsterAtTime.text = convertTimestampToLocalTime(tpyeHipsterDatas[indexPath.row].generateResultAt)
            return toyAiResultCell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if self.aroundTotType == .myPost {
            return toyeCollectLists.count
        }else{
            return tpyeHipsterDatas.count
        }
    }
    
    func convertTimestampToLocalTime(_ timestamp: TimeInterval) -> String {
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        let timestampDate = Date(timeIntervalSince1970: timestamp)
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd" // 根据需求调整格式
        dateFormatter.timeZone = TimeZone.current // 设置为本地时区
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        return dateFormatter.string(from: timestampDate)
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
