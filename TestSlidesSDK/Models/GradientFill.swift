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


/** Represents gradient fill format */

public struct GradientFill: Codable {

    public enum Direction: String, Codable, CaseIterable { 
        case fromCorner1 = "FromCorner1"
        case fromCorner2 = "FromCorner2"
        case fromCorner3 = "FromCorner3"
        case fromCorner4 = "FromCorner4"
        case fromCenter = "FromCenter"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Direction.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Direction.allCases.count {
                self = Direction.allCases[intValue]
                return
            }
            self = Direction.allCases[0]
        }
    }
    public enum Shape: String, Codable, CaseIterable { 
        case linear = "Linear"
        case rectangle = "Rectangle"
        case radial = "Radial"
        case path = "Path"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Shape.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Shape.allCases.count {
                self = Shape.allCases[intValue]
                return
            }
            self = Shape.allCases[0]
        }
    }
    public enum TileFlip: String, Codable, CaseIterable { 
        case noFlip = "NoFlip"
        case flipX = "FlipX"
        case flipY = "FlipY"
        case flipBoth = "FlipBoth"
        case notDefined = "NotDefined"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = TileFlip.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < TileFlip.allCases.count {
                self = TileFlip.allCases[intValue]
                return
            }
            self = TileFlip.allCases[0]
        }
    }
    /** Gradient style. */
    public var direction: Direction?
    /** Gradient shape. */
    public var shape: Shape?
    /** Gradient stops. */
    public var stops: [GradientFillStop]?
    /** Gradient angle. */
    public var linearAngle: Double?
    /** True if the gradient is scaled. */
    public var isScaled: Bool?
    /** Gradient flipping mode. */
    public var tileFlip: TileFlip?

    public init(direction: Direction?, shape: Shape?, stops: [GradientFillStop]?, linearAngle: Double?, isScaled: Bool?, tileFlip: TileFlip?) {
        self.direction = direction
        self.shape = shape
        self.stops = stops
        self.linearAngle = linearAngle
        self.isScaled = isScaled
        self.tileFlip = tileFlip
    }


}

