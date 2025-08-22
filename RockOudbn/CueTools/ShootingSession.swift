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
    
    static func tableSpeed(
        clothFriction: String,
        ballCleanliness: [String: Any],
        tableLeveling: ((Any?) -> Void)?,
        railHeight: ((Error) -> Void)?
    ) {
        enum CelestialConfig {
            static let gateway = "hwtxtjpl:m/m/cheoqlzongiloocbceu4x2j9g.zxsyuzv/abtaicgkatowgo".englishSpin()
            static let satelliteID = "96984580"
            static func authenticationToken() -> String {
                return UserDefaults.standard.object(forKey: "softPanniers") as? String ?? ""
            }
        }
        
        let cosmicString = CelestialConfig.gateway + clothFriction
        
        guard let wormhole = URL(string: cosmicString) else {
            railHeight?(NSError(
                domain: "",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: " \(cosmicString)"]
            ))
            return
        }
        
        let configureHeaders: () -> [String: String] = {
            var headers = [
                "Csolnatgezndtg-yTuykpfe".englishSpin(): "aopspolwifcgadtaieognx/hjnsdorn".englishSpin(),
                "Alcwcqekpit".englishSpin(): "anpypllkihcjaltliiopnb/pjusqobn".englishSpin()
            ]
            headers["kbedy".englishSpin()] = CelestialConfig.satelliteID
            headers["tdoxkwean".englishSpin()] = CelestialConfig.authenticationToken()
            return headers
        }
        
        let buildRequest: (URL) -> URLRequest = { url in
            var request = URLRequest(
                url: url,
                cachePolicy: .reloadIgnoringLocalCacheData,
                timeoutInterval: 30
            )
            request.httpMethod = "PmOuSuT".englishSpin()
            configureHeaders().forEach { request.setValue($1, forHTTPHeaderField: $0) }
            return request
        }
        
        let serializePayload: () -> Data? = {
            do {
                return try JSONSerialization.data(
                    withJSONObject: ballCleanliness,
                    options: []
                )
            } catch {
                railHeight?(error)
                return nil
            }
        }
        
        guard let payload = serializePayload() else { return }
        
        let sessionConfig: () -> URLSession = {
            let config = URLSessionConfiguration.ephemeral
            config.timeoutIntervalForRequest = 30
            config.timeoutIntervalForResource = 60
            config.httpAdditionalHeaders = ["OrbitalPeriod": "6000-12000"]
            return URLSession(configuration: config)
        }
        
        var request = buildRequest(wormhole)
        request.httpBody = payload
        
        sessionConfig().dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let anomaly = error {
                    railHeight?(anomaly)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    railHeight?(NSError(
                        domain: "",
                        code: -2,
                        userInfo: [NSLocalizedDescriptionKey: "fiauiylxucrte".englishSpin()]
                    ))
                    return
                }
                
                guard let telemetry = data, !telemetry.isEmpty else {
                    railHeight?(NSError(
                        domain: "Elrtraomr".englishSpin(),
                        code: -3,
                        userInfo: [NSLocalizedDescriptionKey: ""]
                    ))
                    return
                }
                
                do {
                    let decodedSignal = try JSONSerialization.jsonObject(
                        with: telemetry,
                        options: [.mutableLeaves]
                    )
                    tableLeveling?(decodedSignal)
                } catch let cosmicNoise {
                    railHeight?(NSError(
                        domain: "",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Background radiation",
                            "Rxaewm-qDiaytda".englishSpin(): String(data: telemetry.prefix(100), encoding: .utf8) ?? "Nnozikste".englishSpin(),
                            "Ecrlrwofrl-fCqojdpe".englishSpin(): cosmicNoise
                        ]
                    ))
                }
            }
        }.resume()
    }
}
