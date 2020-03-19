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


/** Represents Pattern Fill */

public struct PatternFill: Codable {

    public enum Style: String, Codable, CaseIterable { 
        case unknown = "Unknown"
        case percent05 = "Percent05"
        case percent10 = "Percent10"
        case percent20 = "Percent20"
        case percent25 = "Percent25"
        case percent30 = "Percent30"
        case percent40 = "Percent40"
        case percent50 = "Percent50"
        case percent60 = "Percent60"
        case percent70 = "Percent70"
        case percent75 = "Percent75"
        case percent80 = "Percent80"
        case percent90 = "Percent90"
        case darkHorizontal = "DarkHorizontal"
        case darkVertical = "DarkVertical"
        case darkDownwardDiagonal = "DarkDownwardDiagonal"
        case darkUpwardDiagonal = "DarkUpwardDiagonal"
        case smallCheckerBoard = "SmallCheckerBoard"
        case trellis = "Trellis"
        case lightHorizontal = "LightHorizontal"
        case lightVertical = "LightVertical"
        case lightDownwardDiagonal = "LightDownwardDiagonal"
        case lightUpwardDiagonal = "LightUpwardDiagonal"
        case smallGrid = "SmallGrid"
        case dottedDiamond = "DottedDiamond"
        case wideDownwardDiagonal = "WideDownwardDiagonal"
        case wideUpwardDiagonal = "WideUpwardDiagonal"
        case dashedUpwardDiagonal = "DashedUpwardDiagonal"
        case dashedDownwardDiagonal = "DashedDownwardDiagonal"
        case narrowVertical = "NarrowVertical"
        case narrowHorizontal = "NarrowHorizontal"
        case dashedVertical = "DashedVertical"
        case dashedHorizontal = "DashedHorizontal"
        case largeConfetti = "LargeConfetti"
        case largeGrid = "LargeGrid"
        case horizontalBrick = "HorizontalBrick"
        case largeCheckerBoard = "LargeCheckerBoard"
        case smallConfetti = "SmallConfetti"
        case zigzag = "Zigzag"
        case solidDiamond = "SolidDiamond"
        case diagonalBrick = "DiagonalBrick"
        case outlinedDiamond = "OutlinedDiamond"
        case plaid = "Plaid"
        case sphere = "Sphere"
        case weave = "Weave"
        case dottedGrid = "DottedGrid"
        case divot = "Divot"
        case shingle = "Shingle"
        case wave = "Wave"
        case horizontal = "Horizontal"
        case vertical = "Vertical"
        case cross = "Cross"
        case downwardDiagonal = "DownwardDiagonal"
        case upwardDiagonal = "UpwardDiagonal"
        case diagonalCross = "DiagonalCross"
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
    /** Gets or sets the back color of the pattern fill. */
    public var backColor: String?
    /** Gets or sets the fore color of the pattern fill. */
    public var foreColor: String?
    /** Gets or sets the style of pattern fill. */
    public var style: Style?

    public init(backColor: String?, foreColor: String?, style: Style?) {
        self.backColor = backColor
        self.foreColor = foreColor
        self.style = style
    }


}

