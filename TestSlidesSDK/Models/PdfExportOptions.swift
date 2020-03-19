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


/** Provides options that control how a presentation is saved in Pdf format. */

public struct PdfExportOptions: Codable {

    public enum TextCompression: String, Codable, CaseIterable { 
        case _none = "None"
        case flate = "Flate"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = TextCompression.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < TextCompression.allCases.count {
                self = TextCompression.allCases[intValue]
                return
            }
            self = TextCompression.allCases[0]
        }
    }
    public enum Compliance: String, Codable, CaseIterable { 
        case pdf15 = "Pdf15"
        case pdfA1b = "PdfA1b"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = Compliance.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < Compliance.allCases.count {
                self = Compliance.allCases[intValue]
                return
            }
            self = Compliance.allCases[0]
        }
    }
    public enum NotesPosition: String, Codable, CaseIterable { 
        case _none = "None"
        case bottomFull = "BottomFull"
        case bottomTruncated = "BottomTruncated"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = NotesPosition.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < NotesPosition.allCases.count {
                self = NotesPosition.allCases[intValue]
                return
            }
            self = NotesPosition.allCases[0]
        }
    }
    public enum CommentsPosition: String, Codable, CaseIterable { 
        case _none = "None"
        case bottom = "Bottom"
        case _right = "Right"

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            do {
                let stringValue = try container.decode(String.self)
                let enumValue = CommentsPosition.allCases.first{ "\($0.rawValue)" == stringValue }
                if enumValue != nil {
                    self = enumValue!
                    return
                }
            } catch {
            }
            let intValue = try container.decode(Int.self)
            if intValue >= 0 && intValue < CommentsPosition.allCases.count {
                self = CommentsPosition.allCases[intValue]
                return
            }
            self = CommentsPosition.allCases[0]
        }
    }
    /** Export format. */
    public var format: String?
    /** Specifies compression type to be used for all textual content in the document. */
    public var textCompression: TextCompression?
    /** Determines if all characters of font should be embedded or only used subset. */
    public var embedFullFonts: Bool?
    /** Desired conformance level for generated PDF document. */
    public var compliance: Compliance?
    /** Returns or sets a value determining resolution of images inside PDF document.  Property affects on file size, time of export and image quality. The default value is 96. */
    public var sufficientResolution: Double?
    /** Returns or sets a value determining the quality of the JPEG images inside PDF document. */
    public var jpegQuality: Int?
    /** True to draw black frame around each slide. */
    public var drawSlidesFrame: Bool?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** True to convert all metafiles used in a presentation to the PNG images. */
    public var saveMetafilesAsPng: Bool?
    /** Setting user password to protect the PDF document.  */
    public var password: String?
    /** Determines if Aspose.Slides will embed common fonts for ASCII (33..127 code range) text. Fonts for character codes greater than 127 are always embedded. Common fonts list includes PDF&#39;s base 14 fonts and additional user specified fonts. */
    public var embedTrueTypeFontsForASCII: Bool?
    /** Returns or sets an array of user-defined names of font families which Aspose.Slides should consider common. */
    public var additionalCommonFontFamilies: [String]?
    /** Gets or sets the position of the notes on the page. */
    public var notesPosition: NotesPosition?
    /** Gets or sets the position of the comments on the page. */
    public var commentsPosition: CommentsPosition?
    /** Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right). */
    public var commentsAreaWidth: Int?
    /** Gets or sets the color of comments area (Applies only if comments are displayed on the right). */
    public var commentsAreaColor: String?
    /** True if comments that have no author are displayed. (Applies only if comments are displayed). */
    public var showCommentsByNoAuthor: Bool?
    /** Image transparent color. */
    public var imageTransparentColor: String?
    /** True to apply specified ImageTransparentColor  to an image. */
    public var applyImageTransparent: Bool?

    public init(format: String?, textCompression: TextCompression?, embedFullFonts: Bool?, compliance: Compliance?, sufficientResolution: Double?, jpegQuality: Int?, drawSlidesFrame: Bool?, showHiddenSlides: Bool?, saveMetafilesAsPng: Bool?, password: String?, embedTrueTypeFontsForASCII: Bool?, additionalCommonFontFamilies: [String]?, notesPosition: NotesPosition?, commentsPosition: CommentsPosition?, commentsAreaWidth: Int?, commentsAreaColor: String?, showCommentsByNoAuthor: Bool?, imageTransparentColor: String?, applyImageTransparent: Bool?) {
        self.format = format
        self.textCompression = textCompression
        self.embedFullFonts = embedFullFonts
        self.compliance = compliance
        self.sufficientResolution = sufficientResolution
        self.jpegQuality = jpegQuality
        self.drawSlidesFrame = drawSlidesFrame
        self.showHiddenSlides = showHiddenSlides
        self.saveMetafilesAsPng = saveMetafilesAsPng
        self.password = password
        self.embedTrueTypeFontsForASCII = embedTrueTypeFontsForASCII
        self.additionalCommonFontFamilies = additionalCommonFontFamilies
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
        self.imageTransparentColor = imageTransparentColor
        self.applyImageTransparent = applyImageTransparent
    }


}

