//
//  ChuckleCircuit.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
import SwiftMessages
import AVFoundation
//发布视频
class ChuckleCircuit: UIViewController {
    private var checkPhotu:Bool = false
    
    
    @IBOutlet weak var FeedStream: UIButton!
    var isVideoEditing: Bool = false
    
    @IBOutlet weak var lockMasterKey: UITextView!
    var videoTitle: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        triggerLaughterEchoBoost()
        FeedStream.layer.cornerRadius = 12
        FeedStream.layer.masksToBounds = true
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @IBOutlet weak var poastrbutlater: UIButton!
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

//post
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
        guard checkPhotu == true,let text = lockMasterKey.text,text != "Got any funny prank stories or epic fails? Share your best moments with us!" ,text.count > 0 else {
            self.showingAlertingFor_Alert(alsemessage: "Please input your prank stories and video first!")
            return
        }
        laodingFlay(loadingText: AppDelegate.processEducationalContent("uepklpowaodiirncgi.z.q.p.b."))
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            SwiftMessages.hide(animated: true)
            self.showingAlertingForSuccessfull(alsemessage:AppDelegate.processEducationalContent("uyppliouazdm lsautcfczegsislfpuole!b htihjeh buepzduaptzepss uwbialglb rbvea bdqizsaprluazygefdp ianfztbesrv jaupzpnriobvaavl"))
            self.navigationController?.popViewController(animated: true)
            
        }))
    }
    
    var selectedFilters: [String] = []           // 存储用户选择的视频滤镜
       
    var taggedFriends: [String] = []
    //上传视频
    @IBAction func PrankChallengeFeedStream(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
           
            let puajoto = UIImagePickerController()
            
            
            puajoto.isEditing = isVideoEditing
            puajoto.sourceType = .photoLibrary
            puajoto.delegate = self
            puajoto.mediaTypes = [AppDelegate.processEducationalContent("pvuabulhidcg.gmdomvgige")]
            self.present(puajoto, animated: true, completion: nil)
            return
        }
        showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Nooz kplhyogtaoi tpcecrpmpisstsiioocnx!"))
        
        
    }
    // 设置视频标题
       
    func setVideoTitle(title: String) {
        videoTitle = title
        print("Video title set to: \(videoTitle)")
        
        // 确保标题不超过30个字符
        if videoTitle.count > 30 {
            videoTitle = String(videoTitle.prefix(30))
            print("Title exceeded 30 characters. Truncated to: \(videoTitle)")
        }
    }

    
    private func triggerLaughterEchoBoost()  {
        lockMasterKey.layer.cornerRadius = 20
        poastrbutlater.setTitle(AppDelegate.processEducationalContent("PkOtSyT"), for: .normal)
        lockMasterKey.layer.masksToBounds = true
        lockMasterKey.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 18, right: 38)
        lockMasterKey.delegate = self
    }
}


extension ChuckleCircuit:UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    func selectFilter(filterName: String) {
        selectedFilters.append(filterName)
        print("Selected filter: \(filterName)")
        
        // 限制最多选择3个滤镜
        if selectedFilters.count > 3 {
            selectedFilters.removeFirst()
            print("Filter selection exceeded limit. Removed oldest filter.")
        }
        
    }
    func imagePickerController(
            _ picker: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
        ) {
            picker.dismiss(animated: true)
            
            guard let videoURL = info[.mediaURL] as? URL ?? info[.referenceURL] as? URL else {
                showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Vsivdeegol upaaerestiencgy wfiaxijlvehdp!"))
                return
            }
            laodingFlay(loadingText: AppDelegate.processEducationalContent("Vjixdkefoy fawnhaklrybsuiysm iifnz sptrxojgrrnefstsd.g.m.e.e."))
            // 异步生成封面防止卡顿
            DispatchQueue.global(qos: .userInitiated).async { [weak self] in
                if let coverImage = self?.generateCover(for: videoURL){
                    DispatchQueue.main.async {
                        self?.changePhotVodeStauei(imgj:coverImage)
                        
                    }
                }
               
            }
        }
    
    private func changePhotVodeStauei(imgj:UIImage)  {
        FeedStream.setBackgroundImage(imgj, for: .normal)
        FeedStream.setImage(UIImage(named: "foocedpaly"), for: .normal)
        checkPhotu = true
    }
    
    // 核心方法：获取视频封面
    // 切换视频编辑模式
      
    func toggleEditingMode() {
        isVideoEditing.toggle()
        if isVideoEditing {
            print("Entered video editing mode.")
        } else {
            print("Exited video editing mode.")
        }
    }
    private func generateCover(for videoURL: URL) -> UIImage? {
        let asset = AVAsset(url: videoURL)
        toggleEditingMode()
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true // 修正方向
        
        do {
            let cgImage = try generator.copyCGImage(
                at: CMTime(seconds: 0, preferredTimescale: 60),
                actualTime: nil
            )
            return UIImage(cgImage: cgImage)
        } catch {
            showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Vsivdeegol upaaerestiencgy wfiaxijlvehdp!"))
            return nil
        }
    }
}
