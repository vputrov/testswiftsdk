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


/** Arrow head properties. */

public struct ArrowHeadProperties: Codable {

    public enum Length: String, Codable, CaseIterable { 
        case short = "Short"
        case medium = "Medium"
        case long = "Long"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Length.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Length.allCases.count {
                self = Length.allCases[intValue]
                return
            }
            self = Length.allCases[0]
        }
    }
    public enum Style: String, Codable, CaseIterable { 
        case _none = "None"
        case triangle = "Triangle"
        case stealth = "Stealth"
        case diamond = "Diamond"
        case oval = "Oval"
        case open = "Open"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Style.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Style.allCases.count {
                self = Style.allCases[intValue]
                return
            }
            self = Style.allCases[0]
        }
    }
    public enum Width: String, Codable, CaseIterable { 
        case narrow = "Narrow"
        case medium = "Medium"
        case wide = "Wide"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Width.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Width.allCases.count {
                self = Width.allCases[intValue]
                return
            }
            self = Width.allCases[0]
        }
    }
    /** Length. */
    public var length: Length?
    /** Style. */
    public var style: Style?
    /** Width. */
    public var width: Width?

    public init(length: Length?, style: Style?, width: Width?) {
        self.length = length
        self.style = style
        self.width = width
    }


}

