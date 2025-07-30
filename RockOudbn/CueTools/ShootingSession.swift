//
//  ShootingSession.swift
//  RockOudbn
//
//  Created by mumu on 2025/7/30.
//

import UIKit

struct ShootingSession {
    let id = UUID()
    let type: SessionType
    let startTime: Date
    var endTime: Date?
    var photosTaken: Int = 0
    var averageScore: Int?
    
    var duration: TimeInterval? {
        guard let endTime = endTime else { return nil }
        return endTime.timeIntervalSince(startTime)
    }
}
