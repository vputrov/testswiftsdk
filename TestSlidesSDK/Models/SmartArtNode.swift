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


/** Smart art node. */

public struct SmartArtNode: Codable {

    public enum OrgChartLayout: String, Codable, CaseIterable { 
        case initial = "Initial"
        case standart = "Standart"
        case bothHanging = "BothHanging"
        case leftHanging = "LeftHanging"
        case rightHanging = "RightHanging"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = OrgChartLayout.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < OrgChartLayout.allCases.count {
                self = OrgChartLayout.allCases[intValue]
                return
            }
            self = OrgChartLayout.allCases[0]
        }
    }
    /** Node list. */
    public var nodes: [SmartArtNode]?
    /** Gets or sets the link to shapes. */
    public var shapes: ResourceUriElement?
    /** True for and assistant node. */
    public var isAssistant: Bool?
    /** Node text. */
    public var text: String?
    /** Organization chart layout type associated with current node. */
    public var orgChartLayout: OrgChartLayout?

    public init(nodes: [SmartArtNode]?, shapes: ResourceUriElement?, isAssistant: Bool?, text: String?, orgChartLayout: OrgChartLayout?) {
        self.nodes = nodes
        self.shapes = shapes
        self.isAssistant = isAssistant
        self.text = text
        self.orgChartLayout = orgChartLayout
    }


}

