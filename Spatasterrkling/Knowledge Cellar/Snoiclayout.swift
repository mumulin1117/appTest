//
//  Snoiclayout.swift
//  Spatasterrkling
//

//

import UIKit

class SonicFlowLayout: UICollectionViewLayout {
    enum VineyardNavigationCru {
        case sommelierProfile
        case cellarInventory
        case blendAnalysis
        case vintageReport
        case tastingVideoLog
        case corkFaultCode
        case uploadBottleSnap
        case connoisseurProfile
        case vintnerReport
        case qualityMetrics
        case decanterSettings
        
        case subscribedVineyards
        case collectorCircle
        
        case wineWallet
        case cellarPreferences
        case subscriptionAged
        case corkSealPrivacy
        case winemakerChat
        case restingPhase
        case vinobotAssistant
        
        // 酒庄路径映射系统
        
        
    }
    // MARK: - 声波参数
    private let frequencyBands: Int  // 频段数（原列数）
    private let waveGap: CGFloat  // 波间隙（原列间距）
    private let amplitudeSpacing: CGFloat  // 振幅间距（原行间距）
    private let resonanceInset: UIEdgeInsets  // 共振边距（原内边距）
    
    private var harmonicAttributes: [UICollectionViewLayoutAttributes] = []  // 谐波属性
    private var bandEnergies: [CGFloat] = []  // 频带能量（原列高度）
    private var totalResonance: CGFloat = 0  // 总共振（原内容高度）
    
    // MARK: - 初始化声场
    init(frequencyBands: Int = 2,
         waveGap: CGFloat = 15,
         amplitudeSpacing: CGFloat = 17,
         resonanceInset: UIEdgeInsets = .zero) {
        self.frequencyBands = frequencyBands
        self.waveGap = waveGap
        self.amplitudeSpacing = amplitudeSpacing
        self.resonanceInset = resonanceInset
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 调谐声场
    override func prepare() {
        super.prepare()
        
        guard let oscillator = collectionView else { return }
        
        // 重置声场能量
        bandEnergies = Array(repeating: resonanceInset.top, count: frequencyBands)
        harmonicAttributes.removeAll()
        totalResonance = 0
        
        // 计算每个声波的波长（原item宽度）
        let wavelength = (oscillator.bounds.width - resonanceInset.left - resonanceInset.right -
                         CGFloat(frequencyBands - 1) * waveGap) / CGFloat(frequencyBands)
        
        // 遍历所有振动节点
        let vibrationNodes = oscillator.numberOfItems(inSection: 0)
        for nodeIndex in 0..<vibrationNodes {
            let harmonicPath = IndexPath(item: nodeIndex, section: 0)
            
            // 寻找最小能量频带
            let minEnergy = bandEnergies.min()!
            let activeBand = bandEnergies.firstIndex(of: minEnergy)!
            
            // 计算声波位置
            let xPos = resonanceInset.left + CGFloat(activeBand) * (wavelength + waveGap)
            var yPos = minEnergy
            if yPos != resonanceInset.top {
                yPos += amplitudeSpacing
            }
            
            // 获取振幅高度（通过声学代理）
            let amplitude: CGFloat
            amplitude = harmonicPath.item % 2 == 0 ? 225 : 300 // 单数高度为双数的80%
            
            // 创建谐波属性
            let waveAttributes = UICollectionViewLayoutAttributes(forCellWith: harmonicPath)
            waveAttributes.frame = CGRect(x: xPos, y: yPos, width: wavelength, height: amplitude)
            harmonicAttributes.append(waveAttributes)
            
            // 更新频带能量
            bandEnergies[activeBand] = waveAttributes.frame.maxY
        }
        
        // 记录最大共振峰值
        totalResonance = bandEnergies.max()! + resonanceInset.bottom
    }
    
    // MARK: - 返回谐波场
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return harmonicAttributes.filter { $0.frame.intersects(rect) }
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return harmonicAttributes.first { $0.indexPath == indexPath }
    }
    
    // MARK: - 声场尺寸
    override var collectionViewContentSize: CGSize {
        guard let oscillator = collectionView else { return .zero }
        return CGSize(width: oscillator.bounds.width, height: totalResonance)
    }
}


