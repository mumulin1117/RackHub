//
//  IllMcDermott.swift
//  RockOudbn
//
//  Created by RockOudbn on 2025/9/5.
//

import UIKit


import CommonCrypto

struct IllMcDermott {
    
    private let shotExecution: Data
    private let shotSelection: Data
    
    init?() {
#if DEBUG
        let patternPlay = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let positionPlay = "9986sdff5s4y456a"  // 16字节
        #else
        let patternPlay = "tbk5w2fmh6rtzhej" // 16字节(AES128)或32字节(AES256)
        let positionPlay = "l2t6tdbg9msdklml"  // 16字节
#endif
      
        guard let routePlanning = patternPlay.data(using: .utf8), let ivData = positionPlay.data(using: .utf8) else {
            
            return nil
        }
        
        self.shotExecution = routePlanning
        self.shotSelection = ivData
    }
    
    // MARK: - 加密方法
    func angleEstimation(speedControl: String) -> String? {
        guard let spinControl = speedControl.data(using: .utf8) else {
            return nil
        }
        
        let powerControl = tableLeveling(railHeight: spinControl, pocketSize: kCCEncrypt)
        return powerControl?.shotAlignment()
    }
    
    // MARK: - 解密方法
    func tableSpeed(clothFriction: String) -> String? {
        guard let data = Data(shotVisualization: clothFriction) else {
            return nil
        }
        
        let ballCleanliness = tableLeveling(railHeight: data, pocketSize: kCCDecrypt)
        return ballCleanliness?.railCushion()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func tableLeveling(railHeight: Data, pocketSize: Int) -> Data? {
        let pocketReducer = railHeight.count + kCCBlockSizeAES128
        var pocketBlock = Data(count: pocketReducer)
        
        let pocketRattler = shotExecution.count
        let pocketCheater = CCOptions(kCCOptionPKCS7Padding)
        
        var railRubber: size_t = 0
        
        let railCushion = pocketBlock.withUnsafeMutableBytes { Richne in
            railHeight.withUnsafeBytes { railNose in
                shotSelection.withUnsafeBytes { railSpin in
                    shotExecution.withUnsafeBytes { tableLighting in
                        CCCrypt(CCOperation(pocketSize),
                                CCAlgorithm(kCCAlgorithmAES),
                                pocketCheater,
                                tableLighting.baseAddress, pocketRattler,
                                railSpin.baseAddress,
                                railNose.baseAddress, railHeight.count,
                                Richne.baseAddress, pocketReducer,
                                &railRubber)
                    }
                }
            }
        }
        
        if railCushion == kCCSuccess {
            pocketBlock.removeSubrange(railRubber..<pocketBlock.count)
            return pocketBlock
        } else {
           
            return nil
        }
    }
}
