//: Playground - noun: a place where people can play

import Foundation
import CommonCryptoKit

var str = "https://www.google.com/logos/doodles/2016/parents-day-in-korea-5757703554072576-hp2x.jpg"

let key = "google".data(using: .utf8)!.map { $0 }
let data = str.data(using: .utf8)!.map { $0 }

let hashAlgo = CCHmacAlgorithm(kCCHmacAlgSHA1)
let hashLength = Int(CC_SHA1_DIGEST_LENGTH)

var result = Array(repeating: UInt8(0x00), count: hashLength)

CCHmac(hashAlgo, key, key.count, data, data.count, &result)

result

let resultData = Data(bytes: result)
