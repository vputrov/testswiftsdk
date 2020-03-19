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


/** Represents paragraph resource */

public struct Paragraph: Codable {

    public enum Alignment: String, Codable, CaseIterable { 
        case _left = "Left"
        case center = "Center"
        case _right = "Right"
        case justify = "Justify"
        case justifyLow = "JustifyLow"
        case distributed = "Distributed"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Alignment.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Alignment.allCases.count {
                self = Alignment.allCases[intValue]
                return
            }
            self = Alignment.allCases[0]
        }
    }
    public enum FontAlignment: String, Codable, CaseIterable { 
        case automatic = "Automatic"
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
        case baseline = "Baseline"
        case _default = "Default"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = FontAlignment.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < FontAlignment.allCases.count {
                self = FontAlignment.allCases[intValue]
                return
            }
            self = FontAlignment.allCases[0]
        }
    }
    public enum BulletType: String, Codable, CaseIterable { 
        case _none = "None"
        case symbol = "Symbol"
        case numbered = "Numbered"
        case picture = "Picture"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = BulletType.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < BulletType.allCases.count {
                self = BulletType.allCases[intValue]
                return
            }
            self = BulletType.allCases[0]
        }
    }
    public enum NumberedBulletStyle: String, Codable, CaseIterable { 
        case bulletAlphaLCPeriod = "BulletAlphaLCPeriod"
        case bulletAlphaUCPeriod = "BulletAlphaUCPeriod"
        case bulletArabicParenRight = "BulletArabicParenRight"
        case bulletArabicPeriod = "BulletArabicPeriod"
        case bulletRomanLCParenBoth = "BulletRomanLCParenBoth"
        case bulletRomanLCParenRight = "BulletRomanLCParenRight"
        case bulletRomanLCPeriod = "BulletRomanLCPeriod"
        case bulletRomanUCPeriod = "BulletRomanUCPeriod"
        case bulletAlphaLCParenBoth = "BulletAlphaLCParenBoth"
        case bulletAlphaLCParenRight = "BulletAlphaLCParenRight"
        case bulletAlphaUCParenBoth = "BulletAlphaUCParenBoth"
        case bulletAlphaUCParenRight = "BulletAlphaUCParenRight"
        case bulletArabicParenBoth = "BulletArabicParenBoth"
        case bulletArabicPlain = "BulletArabicPlain"
        case bulletRomanUCParenBoth = "BulletRomanUCParenBoth"
        case bulletRomanUCParenRight = "BulletRomanUCParenRight"
        case bulletSimpChinPlain = "BulletSimpChinPlain"
        case bulletSimpChinPeriod = "BulletSimpChinPeriod"
        case bulletCircleNumDBPlain = "BulletCircleNumDBPlain"
        case bulletCircleNumWDWhitePlain = "BulletCircleNumWDWhitePlain"
        case bulletCircleNumWDBlackPlain = "BulletCircleNumWDBlackPlain"
        case bulletTradChinPlain = "BulletTradChinPlain"
        case bulletTradChinPeriod = "BulletTradChinPeriod"
        case bulletArabicAlphaDash = "BulletArabicAlphaDash"
        case bulletArabicAbjadDash = "BulletArabicAbjadDash"
        case bulletHebrewAlphaDash = "BulletHebrewAlphaDash"
        case bulletKanjiKoreanPlain = "BulletKanjiKoreanPlain"
        case bulletKanjiKoreanPeriod = "BulletKanjiKoreanPeriod"
        case bulletArabicDBPlain = "BulletArabicDBPlain"
        case bulletArabicDBPeriod = "BulletArabicDBPeriod"
        case bulletThaiAlphaPeriod = "BulletThaiAlphaPeriod"
        case bulletThaiAlphaParenRight = "BulletThaiAlphaParenRight"
        case bulletThaiAlphaParenBoth = "BulletThaiAlphaParenBoth"
        case bulletThaiNumPeriod = "BulletThaiNumPeriod"
        case bulletThaiNumParenRight = "BulletThaiNumParenRight"
        case bulletThaiNumParenBoth = "BulletThaiNumParenBoth"
        case bulletHindiAlphaPeriod = "BulletHindiAlphaPeriod"
        case bulletHindiNumPeriod = "BulletHindiNumPeriod"
        case bulletKanjiSimpChinDBPeriod = "BulletKanjiSimpChinDBPeriod"
        case bulletHindiNumParenRight = "BulletHindiNumParenRight"
        case bulletHindiAlpha1Period = "BulletHindiAlpha1Period"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = NumberedBulletStyle.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < NumberedBulletStyle.allCases.count {
                self = NumberedBulletStyle.allCases[intValue]
                return
            }
            self = NumberedBulletStyle.allCases[0]
        }
    }
    public enum HangingPunctuation: String, Codable, CaseIterable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = HangingPunctuation.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < HangingPunctuation.allCases.count {
                self = HangingPunctuation.allCases[intValue]
                return
            }
            self = HangingPunctuation.allCases[0]
        }
    }
    public enum EastAsianLineBreak: String, Codable, CaseIterable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = EastAsianLineBreak.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < EastAsianLineBreak.allCases.count {
                self = EastAsianLineBreak.allCases[intValue]
                return
            }
            self = EastAsianLineBreak.allCases[0]
        }
    }
    public enum LatinLineBreak: String, Codable, CaseIterable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = LatinLineBreak.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < LatinLineBreak.allCases.count {
                self = LatinLineBreak.allCases[intValue]
                return
            }
            self = LatinLineBreak.allCases[0]
        }
    }
    public enum RightToLeft: String, Codable, CaseIterable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = RightToLeft.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < RightToLeft.allCases.count {
                self = RightToLeft.allCases[intValue]
                return
            }
            self = RightToLeft.allCases[0]
        }
    }
    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** Left margin. */
    public var marginLeft: Double?
    /** Right margin. */
    public var marginRight: Double?
    /** Left spacing. */
    public var spaceBefore: Double?
    /** Right spacing. */
    public var spaceAfter: Double?
    /** Spacing between lines. */
    public var spaceWithin: Double?
    /** First line indent. */
    public var indent: Double?
    /** Text alignment. */
    public var alignment: Alignment?
    /** Font alignment. */
    public var fontAlignment: FontAlignment?
    /** Default tabulation size. */
    public var defaultTabSize: Double?
    /** Depth. */
    public var depth: Int?
    /** Bullet char. */
    public var bulletChar: String?
    /** Bullet height. */
    public var bulletHeight: Double?
    /** Bullet type. */
    public var bulletType: BulletType?
    /** Starting number for a numbered bullet. */
    public var numberedBulletStartWith: Int?
    /** Numbered bullet style. */
    public var numberedBulletStyle: NumberedBulletStyle?
    /** True if hanging punctuation is used with the paragraph. */
    public var hangingPunctuation: HangingPunctuation?
    /** True if East Asian line break is used with the paragraph. */
    public var eastAsianLineBreak: EastAsianLineBreak?
    /** True if Latin line break is used with the paragraph. */
    public var latinLineBreak: LatinLineBreak?
    /** True if right to left direction is used with the paragraph. */
    public var rightToLeft: RightToLeft?
    /** List of portion links. */
    public var portionList: [ResourceUriElement]?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, marginLeft: Double?, marginRight: Double?, spaceBefore: Double?, spaceAfter: Double?, spaceWithin: Double?, indent: Double?, alignment: Alignment?, fontAlignment: FontAlignment?, defaultTabSize: Double?, depth: Int?, bulletChar: String?, bulletHeight: Double?, bulletType: BulletType?, numberedBulletStartWith: Int?, numberedBulletStyle: NumberedBulletStyle?, hangingPunctuation: HangingPunctuation?, eastAsianLineBreak: EastAsianLineBreak?, latinLineBreak: LatinLineBreak?, rightToLeft: RightToLeft?, portionList: [ResourceUriElement]?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.marginLeft = marginLeft
        self.marginRight = marginRight
        self.spaceBefore = spaceBefore
        self.spaceAfter = spaceAfter
        self.spaceWithin = spaceWithin
        self.indent = indent
        self.alignment = alignment
        self.fontAlignment = fontAlignment
        self.defaultTabSize = defaultTabSize
        self.depth = depth
        self.bulletChar = bulletChar
        self.bulletHeight = bulletHeight
        self.bulletType = bulletType
        self.numberedBulletStartWith = numberedBulletStartWith
        self.numberedBulletStyle = numberedBulletStyle
        self.hangingPunctuation = hangingPunctuation
        self.eastAsianLineBreak = eastAsianLineBreak
        self.latinLineBreak = latinLineBreak
        self.rightToLeft = rightToLeft
        self.portionList = portionList
    }


}

