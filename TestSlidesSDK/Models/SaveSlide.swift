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


/** Save slide task. */

public struct SaveSlide: Codable {

    public enum Format: String, Codable { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
    }
    /** Output to save the slide to. */
    public var output: OutputFile?
    /** Save format. */
    public var format: Format?
    /** Save options. */
    public var options: ExportOptions?
    /** Result width for saving to an image format. */
    public var width: Int?
    /** Result height for saving to an image format. */
    public var height: Int?
    /** Slide index. */
    public var position: Int?

    public init(output: OutputFile?, format: Format?, options: ExportOptions?, width: Int?, height: Int?, position: Int?) {
        self.output = output
        self.format = format
        self.options = options
        self.width = width
        self.height = height
        self.position = position
    }


}

