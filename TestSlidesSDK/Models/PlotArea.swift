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


/** Represents the plot area */

public struct PlotArea: Codable {

    public enum LayoutTargetType: String, Codable { 
        case inner = "Inner"
        case outer = "Outer"
    }
    /** the X location */
    public var X: Double?
    /** the Y location */
    public var Y: Double?
    /** Width */
    public var width: Double?
    /** Height */
    public var height: Double?
    /** If layout of the plot area is defined manually specifies whether to layout the plot area by its inside (not including axis and axis labels) or outside. */
    public var layoutTargetType: LayoutTargetType?
    /** Get or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Get or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Get or sets the line format. */
    public var lineFormat: LineFormat?

    public init(X: Double?, Y: Double?, width: Double?, height: Double?, layoutTargetType: LayoutTargetType?, fillFormat: FillFormat?, effectFormat: EffectFormat?, lineFormat: LineFormat?) {
        self.X = X
        self.Y = Y
        self.width = width
        self.height = height
        self.layoutTargetType = layoutTargetType
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
    }


}

