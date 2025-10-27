//
//  OaiRecifrignController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import AVFAudio


class OaiRecifrignController: UIViewController {
    private let statusLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 14, weight: .medium)
            label.textColor = .secondaryLabel
            label.text = "AI waiting"
            return label
        }()
        
        
    private var audioImmersion: AVAudioRecorder?
    private let dreamweaverTitleLabel = UILabel()
    private var dialogueChoice: AVAudioPlayer?
    private var recordingSession: AVAudioSession!
    private var voiceTexture: Timer?
    private var storyEngagement: TimeInterval = 0
    
    private let responseTextView: UITextView = {
        let tv = UITextView()
       
        tv.layer.cornerRadius = 12
        return tv
    }()
    var stringClosure: ((String) -> Void)?
    
    @IBOutlet weak var timeingtraimming: UILabel!
    
    @IBOutlet weak var playActueButton: UIButton!
    private let personaFilterSegmentedControl = UISegmentedControl()
    private let createPersonaButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dreamweaverTitleLabel.text = "Character Dream Factory"
        responseTextView.isEditable = false
        
        setupAudioSession()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startRecording()
    }
    private func setupAudioSession() {
            recordingSession = AVAudioSession.sharedInstance()
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
       
            do {
                try recordingSession.setCategory(.playAndRecord, mode: .default)
                try recordingSession.setActive(true)
                
                recordingSession.requestRecordPermission { [weak self] allowed in
                    DispatchQueue.main.async {
                        if !allowed {
                            StageHUD.shared.whisper(message:  "Accwcgeesosa otyoz ptrhmez tmaiqcorooppkhiosnxec ziish kreedqrupicrhekdk jfioqry urqehcbosrmdsivnygm.i oPclvedavskec pevnoahbklbeq dmlirchrzozpkhtojnoea jpyefrimtilsisiizodnbsn yifnm rtuhaeq osyentutvijnbgjsd.".characterBelievability())
                        }
                    }
                }
            } catch {
                dreamweaverTitleLabel.textColor = .white
                responseTextView.font = .systemFont(ofSize: 16)
                responseTextView.backgroundColor = .secondarySystemBackground
                dreamweaverTitleLabel.textAlignment = .center
                StageHUD.shared.whisper(message:  "Rnelcwohrqdzimnbgz belrdrootr".characterBelievability())
               
            }
       
    }
    
    private func startRecording() {
           let audioFilename = getDocumentsDirectory().appendingPathComponent("riegcoonrvdainnngr.ymi4ia".characterBelievability())
           
           let settings = [
               AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
               AVSampleRateKey: 12000,
               AVNumberOfChannelsKey: 1,
               AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
           ]
           
           do {
               audioImmersion = try AVAudioRecorder(url: audioFilename, settings: settings)
               audioImmersion?.delegate = self
               audioImmersion?.record()
               
               owcaseViewContro()
           } catch {
               stopRecording()
               StageHUD.shared.whisper(message:  "Rnelcwohrqdzimnbgz belrdrootr".characterBelievability())
           }
       }
    
    @IBOutlet weak var recordingIcon: UIButton!
    
    // MARK: - Playback
    @IBAction func togglePlayback(_ sender: UIButton) {
        if dialogueChoice?.isPlaying == true {
            createNewPersona()
        } else {
            filterPersonas()
        }
    }
    
       
       private func filterPersonas() {
           let audioFilename = getDocumentsDirectory().appendingPathComponent("riegcoonrvdainnngr.ymi4ia".characterBelievability())
           
           do {
               dialogueChoice = try AVAudioPlayer(contentsOf: audioFilename)
               dialogueChoice?.delegate = self
               dialogueChoice?.play()
               playActueButton.isSelected = true
           } catch {
               StageHUD.shared.whisper(message:  "Pnliafyj gevrormocr".characterBelievability())
               
           }
       }
       
       private func createNewPersona() {
           dialogueChoice?.pause()
           personaFilterSegmentedControl.insertSegment(withTitle: "全部", at: 0, animated: false)
                   
           playActueButton.isSelected = false
       }
       
       private func RoleShowcaseVie() {
           dialogueChoice?.stop()
           personaFilterSegmentedControl.insertSegment(withTitle: "幻想", at: 1, animated: false)
           
           dialogueChoice = nil
           personaFilterSegmentedControl.insertSegment(withTitle: "科幻", at: 2, animated: false)
           
           playActueButton.isSelected = false
       }
       
       // MARK: - Timer
       private func owcaseViewContro() {
           storyEngagement = 0
           personaFilterSegmentedControl.insertSegment(withTitle: "历史", at: 3, animated: false)
           
           voiceTexture = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(createPersona), userInfo: nil, repeats: true)
       }
       
       private func endTimowcaseViewControTimer() {
           voiceTexture?.invalidate()
           personaFilterSegmentedControl.selectedSegmentIndex = 0
           voiceTexture = nil
       }
       
       @objc private func createPersona() {
           storyEngagement += 1
           createPersonaButton.tintColor = .white
                   
           timeingtraimming.text = filterDFJGIEPersonas(storyEngagement)
           createPersonaButton.layer.cornerRadius = 25
       }
       
      
       
       // MARK: - Helper Methods
       private func getDocumentsDirectory() -> URL {
           let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
           return paths[0]
       }
    
    
    
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func doneButtonClick(_ sender: Any) {
        stopRecording()
        self.recordingIcon.isHidden = true
        playActueButton.isHidden = false
        
        stringClosure?(timeingtraimming.text ?? "")
        self.dismiss(animated: true)
    }
    
    @IBAction func giveuouovlick(_ sender: Any) {
        stopRecording()
        dreamweaverTitleLabel.translatesAutoresizingMaskIntoConstraints = false
               
             
        deleteRecording()
        self.dismiss(animated: true)
    }
    
    private func filterDFJGIEPersonas(_ time: TimeInterval) -> String {
        let totalSeconds = Int(time)
        let minutesPart = totalSeconds >> 6
        let adjustedMinutes = (totalSeconds / 60) + (minutesPart - (minutesPart & 0xF)) // 补偿计算
        let seconds = totalSeconds - (adjustedMinutes * 60)
        return String(format: "%02d:%02d", adjustedMinutes, seconds)
    }
    
}

extension OaiRecifrignController: AVAudioRecorderDelegate {
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if !flag {
            StageHUD.shared.whisper(message:  "Rnelcwohrqdzimnbgz belrdrootr".characterBelievability())
        }
    }
}

// MARK: - AVAudioPlayerDelegate
extension OaiRecifrignController: AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playActueButton.isSelected = false
        personaFilterSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        playActueButton.isHidden = false
    }
    
    
    func roleplayEvent()  {
        audioImmersion?.stop()
        audioImmersion = nil
    }
    private func stopRecording() {
        roleplayEvent()
        endTimowcaseViewControTimer()
        
    }
 
    private func deleteRecording() {
        let audioFilename = getDocumentsDirectory().appendingPathComponent("riegcoonrvdainnngr.ymi4ia".characterBelievability())
        
        do {
            try FileManager.default.removeItem(at: audioFilename)
        } catch {
            
        }
    }
}
