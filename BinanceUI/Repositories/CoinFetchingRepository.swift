//
//  CoinFetchingRepository.swift
//  BinanceUI
//
//  Created by Ismail El-habbash on 8/30/18.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T), error(Error?)
    
}

typealias BinanceJson = [(key: String, value: [CoinMarketInfo])]
struct CoinFetchingRepository {
    
    static func fetchAllCoins(completion: (Result<BinanceJson>) -> Void) {
        let coins = CoinMarketInfo.coinMarketInfoFactory()
        completion(.success(coins))
        /*
         when I read from the api , the api client will fetch from the server and  if an error occurs it will be returned in the Result<Error>
         enum and appropriate error response parsing will be done and the end user will recieve an alert/banner if designs require it, otherwise
         may do some error loggic on crashlytics for further analysis and identify potential errors & bottlenecks
         */
    }
}

struct CoinMarketInfo: Codable {
    let active: Bool
    let activeBuy: Int
    let activeSell: Double
    let baseAsset: String
    let baseAssetName: String
    let baseAssetUnit: String
    let close: String
    let decimalPlaces: Int
    let high: String
    let lastAggTradeId: Int
    let low: String
    let matchingUnitType: String
    let minQty: Double
    let minTrade: Double
    let open: String
    let prevClose: Double
    let productType: String?
    let quoteAsset: String
    let quoteAsesetName: String
    let quoteAssetUnit: String
    let status: String
    let symbol: String
    let tickSize: String
    let tradedMoney: Double
    let volume: String
    let withdrawFee: String
}

extension CoinMarketInfo {
    
    static func coinMarketInfoFactory() -> BinanceJson {
        let coin1 = CoinMarketInfo(active: true,
                                  activeBuy: 0,
                                  activeSell: 44672.16,
                                  baseAsset: "NEO",
                                  baseAssetName: "NEO",
                                  baseAssetUnit: "",
                                  close: "0.067846",
                                  decimalPlaces: 8,
                                  high: "0.070055",
                                  lastAggTradeId: -1,
                                  low: "0.00678",
                                  matchingUnitType: "STANDARD",
                                  minQty: 0.0000008,
                                  minTrade: 0.01,
                                  open: "0.0684",
                                  prevClose: 0.06843,
                                  productType: nil,
                                  quoteAsset: "ETHEREUM",
                                  quoteAsesetName: "ETH",
                                  quoteAssetUnit: "Ξ",
                                  status: "TRADING",
                                  symbol: "NEOETH",
                                  tickSize: "0.0001",
                                  tradedMoney: 3053.137,
                                  volume: "44672.16",
                                  withdrawFee: "0")

        let coin2 = CoinMarketInfo(active: true,
                                   activeBuy: 0,
                                   activeSell: 44672.16,
                                   baseAsset: "IOTA",
                                   baseAssetName: "IOTA",
                                   baseAssetUnit: "",
                                   close: "0.067846",
                                   decimalPlaces: 8,
                                   high: "0.070055",
                                   lastAggTradeId: -1,
                                   low: "0.00678",
                                   matchingUnitType: "STANDARD",
                                   minQty: 0.0000008,
                                   minTrade: 0.01,
                                   open: "0.0684",
                                   prevClose: 0.06843,
                                   productType: nil,
                                   quoteAsset: "ETHEREUM",
                                   quoteAsesetName: "ETH",
                                   quoteAssetUnit: "Ξ",
                                   status: "TRADING",
                                   symbol: "NEOETH",
                                   tickSize: "0.0001",
                                   tradedMoney: 3053.137,
                                   volume: "44672.16",
                                   withdrawFee: "0")

        
        let coin3 = CoinMarketInfo(active: true,
                                   activeBuy: 0,
                                   activeSell: 44672.16,
                                   baseAsset: "BTC",
                                   baseAssetName: "BTC",
                                   baseAssetUnit: "",
                                   close: "0.067846",
                                   decimalPlaces: 8,
                                   high: "0.070055",
                                   lastAggTradeId: -1,
                                   low: "0.00678",
                                   matchingUnitType: "STANDARD",
                                   minQty: 0.0000008,
                                   minTrade: 0.01,
                                   open: "0.0684",
                                   prevClose: 0.06843,
                                   productType: nil,
                                   quoteAsset: "ETHEREUM",
                                   quoteAsesetName: "ETH",
                                   quoteAssetUnit: "Ξ",
                                   status: "TRADING",
                                   symbol: "NEOETH",
                                   tickSize: "0.0001",
                                   tradedMoney: 3053.137,
                                   volume: "44672.16",
                                   withdrawFee: "0")

        
        let coin4 = CoinMarketInfo(active: true,
                                   activeBuy: 0,
                                   activeSell: 44672.16,
                                   baseAsset: "WTC",
                                   baseAssetName: "WTC",
                                   baseAssetUnit: "",
                                   close: "0.067846",
                                   decimalPlaces: 8,
                                   high: "0.070055",
                                   lastAggTradeId: -1,
                                   low: "0.00678",
                                   matchingUnitType: "STANDARD",
                                   minQty: 0.0000008,
                                   minTrade: 0.01,
                                   open: "0.0684",
                                   prevClose: 0.06843,
                                   productType: nil,
                                   quoteAsset: "ETHEREUM",
                                   quoteAsesetName: "ETH",
                                   quoteAssetUnit: "Ξ",
                                   status: "TRADING",
                                   symbol: "NEOETH",
                                   tickSize: "0.0001",
                                   tradedMoney: 3053.137,
                                   volume: "44672.16",
                                   withdrawFee: "0")

        
        let coin5 = CoinMarketInfo(active: true,
                                   activeBuy: 0,
                                   activeSell: 44672.16,
                                   baseAsset: "VTC",
                                   baseAssetName: "VTC",
                                   baseAssetUnit: "",
                                   close: "0.067846",
                                   decimalPlaces: 8,
                                   high: "0.070055",
                                   lastAggTradeId: -1,
                                   low: "0.00678",
                                   matchingUnitType: "STANDARD",
                                   minQty: 0.0000008,
                                   minTrade: 0.01,
                                   open: "0.0684",
                                   prevClose: 0.06843,
                                   productType: nil,
                                   quoteAsset: "ETHEREUM",
                                   quoteAsesetName: "ETH",
                                   quoteAssetUnit: "Ξ",
                                   status: "TRADING",
                                   symbol: "NEOETH",
                                   tickSize: "0.0001",
                                   tradedMoney: 3053.137,
                                   volume: "44672.16",
                                   withdrawFee: "0")
        
        return [
            ("BNB", [coin1, coin2, coin3, coin4, coin5]),
            ("BTC", [coin2, coin4, coin3, coin1, coin5]),
            ("ETH", [coin3, coin1, coin2, coin4, coin5]),
            ("USDT", [coin5, coin2, coin3, coin4, coin1])
        ]
    }
}




















