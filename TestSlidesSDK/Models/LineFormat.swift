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


/** Line format. */

public struct LineFormat: Codable {

    public enum Alignment: String, Codable, CaseIterable { 
        case center = "Center"
        case inset = "Inset"
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
    public enum CapStyle: String, Codable, CaseIterable { 
        case round = "Round"
        case square = "Square"
        case flat = "Flat"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = CapStyle.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < CapStyle.allCases.count {
                self = CapStyle.allCases[intValue]
                return
            }
            self = CapStyle.allCases[0]
        }
    }
    public enum DashStyle: String, Codable, CaseIterable { 
        case solid = "Solid"
        case dot = "Dot"
        case dash = "Dash"
        case largeDash = "LargeDash"
        case dashDot = "DashDot"
        case largeDashDot = "LargeDashDot"
        case largeDashDotDot = "LargeDashDotDot"
        case systemDash = "SystemDash"
        case systemDot = "SystemDot"
        case systemDashDot = "SystemDashDot"
        case systemDashDotDot = "SystemDashDotDot"
        case custom = "Custom"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = DashStyle.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < DashStyle.allCases.count {
                self = DashStyle.allCases[intValue]
                return
            }
            self = DashStyle.allCases[0]
        }
    }
    public enum JoinStyle: String, Codable, CaseIterable { 
        case round = "Round"
        case bevel = "Bevel"
        case miter = "Miter"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = JoinStyle.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < JoinStyle.allCases.count {
                self = JoinStyle.allCases[intValue]
                return
            }
            self = JoinStyle.allCases[0]
        }
    }
    public enum Style: String, Codable, CaseIterable { 
        case single = "Single"
        case thinThin = "ThinThin"
        case thinThick = "ThinThick"
        case thickThin = "ThickThin"
        case thickBetweenThin = "ThickBetweenThin"
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
    /** Alignment. */
    public var alignment: Alignment?
    /** Cap style. */
    public var capStyle: CapStyle?
    /** Dash style. */
    public var dashStyle: DashStyle?
    /** Join style. */
    public var joinStyle: JoinStyle?
    /** Style. */
    public var style: Style?
    /** Begin arrowhead. */
    public var beginArrowHead: ArrowHeadProperties?
    /** End arrowhead. */
    public var endArrowHead: ArrowHeadProperties?
    /** Custom dash pattern. */
    public var customDashPattern: CustomDashPattern?
    /** Fill format. */
    public var fillFormat: FillFormat?
    /** Miter limit. */
    public var miterLimit: Double?
    /** Width. */
    public var width: Double?

    public init(alignment: Alignment?, capStyle: CapStyle?, dashStyle: DashStyle?, joinStyle: JoinStyle?, style: Style?, beginArrowHead: ArrowHeadProperties?, endArrowHead: ArrowHeadProperties?, customDashPattern: CustomDashPattern?, fillFormat: FillFormat?, miterLimit: Double?, width: Double?) {
        self.alignment = alignment
        self.capStyle = capStyle
        self.dashStyle = dashStyle
        self.joinStyle = joinStyle
        self.style = style
        self.beginArrowHead = beginArrowHead
        self.endArrowHead = endArrowHead
        self.customDashPattern = customDashPattern
        self.fillFormat = fillFormat
        self.miterLimit = miterLimit
        self.width = width
    }


}

