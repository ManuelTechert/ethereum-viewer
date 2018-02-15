//
//  ethereumValues.swift
//  ethereum-viewer
//
//  Created by Manuel Techert on 12.02.18.
//  Copyright © 2018 Manuel Techert. All rights reserved.
//

import Foundation

struct ethereumValues {
    
    let current: Double
    let oneHour: Double
    let oneDay: Double
    let sevenDays : Double
    
    enum SerilizationError: Error {
        case missing(String)
        case invalid (String, Any)
    }
    
    init(json: [String:Any]) throws {
        
        guard let price_usd = json["price_usd"] as? Double else {throw SerilizationError.missing("price usd is missing")}
        
        guard let percent_change_1h = json["percent_change_1h"] as? Double else {throw SerilizationError.missing("percentChange 1 hour missing")}
       
        guard let percent_change_24h = json["percent_change_24h"] as? Double else {throw SerilizationError.missing("percentChange 24 hours missing")}
        
         guard let percent_change_7d = json["percent_change_7d"] as? Double else {throw SerilizationError.missing("percentChange 7 Days missing")}
        
        self.current = price_usd
        self.oneHour = percent_change_1h
        self.oneDay = percent_change_24h
        self.sevenDays = percent_change_7d
    }
    
    
    static let basePath = "https://api.coinmarketcap.com/v1/ticker/ethereum/"
    
    static func forecast(completion: @escaping ([ethereumValues]) -> ()) {
        
        let url = basePath
        let request = URLRequest(url: URL(string: url)!)
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response:URLResponse?, error:Error?) in
            
            var forecastArray:[ethereumValues] = []
            
            if let data = data {
                
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                        if let dailyForecasts = json["daily"] as? [String:Any] {
                            if let dailyData = dailyForecasts["data"] as? [[String:Any]]{
                                for dataPoint in dailyData {
                                    if let weatherObject = try? ethereumValues(json: dataPoint) {
                                        forecastArray.append(weatherObject)
                                    }
                                }
                            }
                        }
                    }
                }catch {
                    print(error.localizedDescription)
                }
                
                completion(forecastArray)
            }
        }
        
        task.resume()
    }
    
    
}
