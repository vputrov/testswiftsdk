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


/** Represents a chart axis */

public struct Axis: Codable {

    public enum Position: String, Codable, CaseIterable { 
        case bottom = "Bottom"
        case _left = "Left"
        case _right = "Right"
        case top = "Top"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Position.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Position.allCases.count {
                self = Position.allCases[intValue]
                return
            }
            self = Position.allCases[0]
        }
    }
    public enum DisplayUnit: String, Codable, CaseIterable { 
        case _none = "None"
        case hundreds = "Hundreds"
        case thousands = "Thousands"
        case tenThousands = "TenThousands"
        case hundredThousands = "HundredThousands"
        case millions = "Millions"
        case tenMillions = "TenMillions"
        case hundredMillions = "HundredMillions"
        case billions = "Billions"
        case trillions = "Trillions"
        case customValue = "CustomValue"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = DisplayUnit.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < DisplayUnit.allCases.count {
                self = DisplayUnit.allCases[intValue]
                return
            }
            self = DisplayUnit.allCases[0]
        }
    }
    public enum BaseUnitScale: String, Codable, CaseIterable { 
        case days = "Days"
        case months = "Months"
        case years = "Years"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = BaseUnitScale.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < BaseUnitScale.allCases.count {
                self = BaseUnitScale.allCases[intValue]
                return
            }
            self = BaseUnitScale.allCases[0]
        }
    }
    public enum MajorUnitScale: String, Codable, CaseIterable { 
        case days = "Days"
        case months = "Months"
        case years = "Years"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = MajorUnitScale.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < MajorUnitScale.allCases.count {
                self = MajorUnitScale.allCases[intValue]
                return
            }
            self = MajorUnitScale.allCases[0]
        }
    }
    public enum MajorTickMark: String, Codable, CaseIterable { 
        case cross = "Cross"
        case inside = "Inside"
        case _none = "None"
        case outside = "Outside"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = MajorTickMark.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < MajorTickMark.allCases.count {
                self = MajorTickMark.allCases[intValue]
                return
            }
            self = MajorTickMark.allCases[0]
        }
    }
    public enum MinorUnitScale: String, Codable, CaseIterable { 
        case days = "Days"
        case months = "Months"
        case years = "Years"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = MinorUnitScale.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < MinorUnitScale.allCases.count {
                self = MinorUnitScale.allCases[intValue]
                return
            }
            self = MinorUnitScale.allCases[0]
        }
    }
    public enum MinorTickMark: String, Codable, CaseIterable { 
        case cross = "Cross"
        case inside = "Inside"
        case _none = "None"
        case outside = "Outside"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = MinorTickMark.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < MinorTickMark.allCases.count {
                self = MinorTickMark.allCases[intValue]
                return
            }
            self = MinorTickMark.allCases[0]
        }
    }
    public enum CategoryAxisType: String, Codable, CaseIterable { 
        case text = "Text"
        case date = "Date"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = CategoryAxisType.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < CategoryAxisType.allCases.count {
                self = CategoryAxisType.allCases[intValue]
                return
            }
            self = CategoryAxisType.allCases[0]
        }
    }
    public enum CrossType: String, Codable, CaseIterable { 
        case axisCrossesAtZero = "AxisCrossesAtZero"
        case maximum = "Maximum"
        case custom = "Custom"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = CrossType.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < CrossType.allCases.count {
                self = CrossType.allCases[intValue]
                return
            }
            self = CrossType.allCases[0]
        }
    }
    public enum TickLabelPosition: String, Codable, CaseIterable { 
        case high = "High"
        case low = "Low"
        case nextTo = "NextTo"
        case _none = "None"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = TickLabelPosition.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < TickLabelPosition.allCases.count {
                self = TickLabelPosition.allCases[intValue]
                return
            }
            self = TickLabelPosition.allCases[0]
        }
    }
    /** True if the axis is visible */
    public var isVisible: Bool?
    /** True if the axis has a visible title */
    public var hasTitle: Bool?
    /** Axis position */
    public var position: Position?
    /** The scaling value of the display units for the value axis */
    public var displayUnit: DisplayUnit?
    /** The smallest time unit that is represented on the date axis */
    public var baseUnitScale: BaseUnitScale?
    /** True the major unit of the axis is automatically assigned */
    public var isAutomaticMajorUnit: Bool?
    /** The major units for the date or value axis */
    public var majorUnit: Double?
    /** The major unit scale for the date axis */
    public var majorUnitScale: MajorUnitScale?
    /** The type of major tick mark for the specified axis */
    public var majorTickMark: MajorTickMark?
    /** True the minor unit of the axis is automatically assigned */
    public var isAutomaticMinorUnit: Bool?
    /** The minor units for the date or value axis */
    public var minorUnit: Double?
    /** The minor unit scale for the date axis */
    public var minorUnitScale: MinorUnitScale?
    /** The type of minor tick mark for the specified axis */
    public var minorTickMark: MinorTickMark?
    /** True if the max value is automatically assigned */
    public var isAutomaticMaxValue: Bool?
    /** The maximum value on the value axis */
    public var maxValue: Double?
    /** True if the min value is automatically assigned */
    public var isAutomaticMinValue: Bool?
    /** The minimum value on the value axis */
    public var minValue: Double?
    /** True if the value axis scale type is logarithmic */
    public var isLogarithmic: Bool?
    /** The logarithmic base. Default value is 10 */
    public var logBase: Double?
    /** The type of the category axis */
    public var categoryAxisType: CategoryAxisType?
    /** True if the value axis crosses the category axis between categories. This property applies only to category axes, and it doesn&#39;t apply to 3-D charts */
    public var axisBetweenCategories: Bool?
    /** The distance of labels from the axis. Applied to category or date axis. Value must be between 0% and 1000%.              */
    public var labelOffset: Int?
    /** True if MS PowerPoint plots data points from last to first */
    public var isPlotOrderReversed: Bool?
    /** True if the format is linked to source data */
    public var isNumberFormatLinkedToSource: Bool?
    /** the format string for the Axis Labels */
    public var numberFormat: String?
    /** The CrossType on the specified axis where the other axis crosses */
    public var crossType: CrossType?
    /** The point on the axis where the perpendicular axis crosses it */
    public var crossAt: Double?
    /** True for automatic tick marks spacing value */
    public var isAutomaticTickMarksSpacing: Bool?
    /** Specifies how many tick marks shall be skipped before the next one shall be drawn. Applied to category or series axis. */
    public var tickMarksSpacing: Int?
    /** True for automatic tick label spacing value */
    public var isAutomaticTickLabelSpacing: Bool?
    /** Specifies how many tick labels to skip between label that is drawn. */
    public var tickLabelSpacing: Int?
    /** The position of tick-mark labels on the specified axis. */
    public var tickLabelPosition: TickLabelPosition?
    /** Represents the rotation angle of tick labels. */
    public var tickLabelRotationAngle: Double?
    /** Get or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Get or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Get or sets the line format. */
    public var lineFormat: LineFormat?

    public init(isVisible: Bool?, hasTitle: Bool?, position: Position?, displayUnit: DisplayUnit?, baseUnitScale: BaseUnitScale?, isAutomaticMajorUnit: Bool?, majorUnit: Double?, majorUnitScale: MajorUnitScale?, majorTickMark: MajorTickMark?, isAutomaticMinorUnit: Bool?, minorUnit: Double?, minorUnitScale: MinorUnitScale?, minorTickMark: MinorTickMark?, isAutomaticMaxValue: Bool?, maxValue: Double?, isAutomaticMinValue: Bool?, minValue: Double?, isLogarithmic: Bool?, logBase: Double?, categoryAxisType: CategoryAxisType?, axisBetweenCategories: Bool?, labelOffset: Int?, isPlotOrderReversed: Bool?, isNumberFormatLinkedToSource: Bool?, numberFormat: String?, crossType: CrossType?, crossAt: Double?, isAutomaticTickMarksSpacing: Bool?, tickMarksSpacing: Int?, isAutomaticTickLabelSpacing: Bool?, tickLabelSpacing: Int?, tickLabelPosition: TickLabelPosition?, tickLabelRotationAngle: Double?, fillFormat: FillFormat?, effectFormat: EffectFormat?, lineFormat: LineFormat?) {
        self.isVisible = isVisible
        self.hasTitle = hasTitle
        self.position = position
        self.displayUnit = displayUnit
        self.baseUnitScale = baseUnitScale
        self.isAutomaticMajorUnit = isAutomaticMajorUnit
        self.majorUnit = majorUnit
        self.majorUnitScale = majorUnitScale
        self.majorTickMark = majorTickMark
        self.isAutomaticMinorUnit = isAutomaticMinorUnit
        self.minorUnit = minorUnit
        self.minorUnitScale = minorUnitScale
        self.minorTickMark = minorTickMark
        self.isAutomaticMaxValue = isAutomaticMaxValue
        self.maxValue = maxValue
        self.isAutomaticMinValue = isAutomaticMinValue
        self.minValue = minValue
        self.isLogarithmic = isLogarithmic
        self.logBase = logBase
        self.categoryAxisType = categoryAxisType
        self.axisBetweenCategories = axisBetweenCategories
        self.labelOffset = labelOffset
        self.isPlotOrderReversed = isPlotOrderReversed
        self.isNumberFormatLinkedToSource = isNumberFormatLinkedToSource
        self.numberFormat = numberFormat
        self.crossType = crossType
        self.crossAt = crossAt
        self.isAutomaticTickMarksSpacing = isAutomaticTickMarksSpacing
        self.tickMarksSpacing = tickMarksSpacing
        self.isAutomaticTickLabelSpacing = isAutomaticTickLabelSpacing
        self.tickLabelSpacing = tickLabelSpacing
        self.tickLabelPosition = tickLabelPosition
        self.tickLabelRotationAngle = tickLabelRotationAngle
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
    }


}

