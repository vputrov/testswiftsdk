/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------------------------------------------
 */

import Foundation

extension Bool: JSONEncodable {
    func encodeToJSON() -> Any { return self as Any }
}

extension Float: JSONEncodable {
    func encodeToJSON() -> Any { return self as Any }
}

extension Int: JSONEncodable {
    func encodeToJSON() -> Any { return self as Any }
}

extension Int32: JSONEncodable {
    func encodeToJSON() -> Any { return NSNumber(value: self as Int32) }
}

extension Int64: JSONEncodable {
    func encodeToJSON() -> Any { return NSNumber(value: self as Int64) }
}

extension Double: JSONEncodable {
    func encodeToJSON() -> Any { return self as Any }
}

extension String: JSONEncodable {
    func encodeToJSON() -> Any { return self as Any }
}

private func encodeIfPossible<T>(_ object: T) -> Any {
    if let encodableObject = object as? JSONEncodable {
        return encodableObject.encodeToJSON()
    } else {
        return object as Any
    }
}

extension Array: JSONEncodable {
    func encodeToJSON() -> Any {
        return self.map(encodeIfPossible)
    }
}

extension Dictionary: JSONEncodable {
    func encodeToJSON() -> Any {
        var dictionary = [AnyHashable: Any]()
        for (key, value) in self {
            dictionary[key] = encodeIfPossible(value)
        }
        return dictionary as Any
    }
}

extension Data: JSONEncodable {
    func encodeToJSON() -> Any {
        return self.base64EncodedString(options: Data.Base64EncodingOptions())
    }
}

private let dateFormatter: DateFormatter = {
    let fmt = DateFormatter()
    fmt.dateFormat = Configuration.dateFormat
    fmt.locale = Locale(identifier: "en_US_POSIX")
    return fmt
}()

extension Date: JSONEncodable {
    func encodeToJSON() -> Any {
        return dateFormatter.string(from: self) as Any
    }
}

extension UUID: JSONEncodable {
    func encodeToJSON() -> Any {
        return self.uuidString
    }
}

extension String: CodingKey {

    public var stringValue: String {
        return self
    }

    public init?(stringValue: String) {
        self.init(stringLiteral: stringValue)
    }

    public var intValue: Int? {
        return nil
    }

    public init?(intValue: Int) {
        return nil
    }

}

extension KeyedEncodingContainerProtocol {

    public mutating func encodeArray<T>(_ values: [T], forKey key: Self.Key) throws where T : Encodable {
        var arrayContainer = nestedUnkeyedContainer(forKey: key)
        try arrayContainer.encode(contentsOf: values)
    }

    public mutating func encodeArrayIfPresent<T>(_ values: [T]?, forKey key: Self.Key) throws where T : Encodable {
        if let values = values {
            try encodeArray(values, forKey: key)
        }
    }

    public mutating func encodeMap<T>(_ pairs: [Self.Key: T]) throws where T : Encodable {
        for (key, value) in pairs {
            try encode(value, forKey: key)
        }
    }

    public mutating func encodeMapIfPresent<T>(_ pairs: [Self.Key: T]?) throws where T : Encodable {
        if let pairs = pairs {
            try encodeMap(pairs)
        }
    }

}

extension KeyedDecodingContainerProtocol {

    public func decodeArray<T>(_ type: T.Type, forKey key: Self.Key) throws -> [T] where T : Decodable {
        var tmpArray = [T]()

        var nestedContainer = try nestedUnkeyedContainer(forKey: key)
        while !nestedContainer.isAtEnd {
            let arrayValue = try nestedContainer.decode(T.self)
            tmpArray.append(arrayValue)
        }

        return tmpArray
    }

    public func decodeArrayIfPresent<T>(_ type: T.Type, forKey key: Self.Key) throws -> [T]? where T : Decodable {
        var tmpArray: [T]? = nil

        if contains(key) {
            tmpArray = try decodeArray(T.self, forKey: key)
        }

        return tmpArray
    }

    public func decodeMap<T>(_ type: T.Type, excludedKeys: Set<Self.Key>) throws -> [Self.Key: T] where T : Decodable {
        var map: [Self.Key : T] = [:]

        for key in allKeys {
            if !excludedKeys.contains(key) {
                let value = try decode(T.self, forKey: key)
                map[key] = value
            }
        }

        return map
    }

}


