/*
 * Copyright (C) 2024 Vladimir Vaskov
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

// THIS FILE WAS GENERATED, DON'T MODIFY IT

/**
 * Describes a formatted text object
 */
public abstract class TDLib.RichText : Error {}

/**
 * A plain text
 */
public class TDLib.RichTextPlain : RichText {

    /**
     * Text
     */
    public string text { get; construct set; }

    public RichTextPlain (
        string text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextPlain",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A bold rich text
 */
public class TDLib.RichTextBold : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextBold (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextBold",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An italicized rich text
 */
public class TDLib.RichTextItalic : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextItalic (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextItalic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An underlined rich text
 */
public class TDLib.RichTextUnderline : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextUnderline (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextUnderline",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A strikethrough rich text
 */
public class TDLib.RichTextStrikethrough : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextStrikethrough (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextStrikethrough",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A fixed-width rich text
 */
public class TDLib.RichTextFixed : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextFixed (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextFixed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rich text URL link
 */
public class TDLib.RichTextUrl : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    /**
     * URL
     */
    public string url { get; construct set; }

    /**
     * True, if the URL has cached instant view server-side
     */
    public bool is_cached { get; construct set; }

    public RichTextUrl (
        RichText text,
        string url,
        bool is_cached
    ) {
        Object (
            text: text,
            url: url,
            is_cached: is_cached,
            tdlib_type: "richTextUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rich text email link
 */
public class TDLib.RichTextEmailAddress : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    /**
     * Email address
     */
    public string email_address { get; construct set; }

    public RichTextEmailAddress (
        RichText text,
        string email_address
    ) {
        Object (
            text: text,
            email_address: email_address,
            tdlib_type: "richTextEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A subscript rich text
 */
public class TDLib.RichTextSubscript : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextSubscript (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextSubscript",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A superscript rich text
 */
public class TDLib.RichTextSuperscript : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextSuperscript (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextSuperscript",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A marked rich text
 */
public class TDLib.RichTextMarked : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    public RichTextMarked (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "richTextMarked",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rich text phone number
 */
public class TDLib.RichTextPhoneNumber : RichText {

    /**
     * Text
     */
    public RichText text { get; construct set; }

    /**
     * Phone number
     */
    public string phone_number { get; construct set; }

    public RichTextPhoneNumber (
        RichText text,
        string phone_number
    ) {
        Object (
            text: text,
            phone_number: phone_number,
            tdlib_type: "richTextPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A small image inside the text
 */
public class TDLib.RichTextIcon : RichText {

    /**
     * The image represented as a document. The image can be in GIF, JPEG or
     * PNG format
     */
    public Document document { get; construct set; }

    /**
     * Width of a bounding box in which the image must be shown; 0 if unknown
     */
    public int32 width { get; construct set; }

    /**
     * Height of a bounding box in which the image must be shown; 0 if
     * unknown
     */
    public int32 height { get; construct set; }

    public RichTextIcon (
        Document document,
        int32 width,
        int32 height
    ) {
        Object (
            document: document,
            width: width,
            height: height,
            tdlib_type: "richTextIcon",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A reference to a richTexts object on the same page
 */
public class TDLib.RichTextReference : RichText {

    /**
     * The text
     */
    public RichText text { get; construct set; }

    /**
     * The name of a richTextAnchor object, which is the first element of the
     * target richTexts object
     */
    public string anchor_name { get; construct set; }

    /**
     * An HTTP URL, opening the reference
     */
    public string url { get; construct set; }

    public RichTextReference (
        RichText text,
        string anchor_name,
        string url
    ) {
        Object (
            text: text,
            anchor_name: anchor_name,
            url: url,
            tdlib_type: "richTextReference",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An anchor
 */
public class TDLib.RichTextAnchor : RichText {

    /**
     * Anchor name
     */
    public string name { get; construct set; }

    public RichTextAnchor (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "richTextAnchor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A link to an anchor on the same page
 */
public class TDLib.RichTextAnchorLink : RichText {

    /**
     * The link text
     */
    public RichText text { get; construct set; }

    /**
     * The anchor name. If the name is empty, the link must bring back to top
     */
    public string anchor_name { get; construct set; }

    /**
     * An HTTP URL, opening the anchor
     */
    public string url { get; construct set; }

    public RichTextAnchorLink (
        RichText text,
        string anchor_name,
        string url
    ) {
        Object (
            text: text,
            anchor_name: anchor_name,
            url: url,
            tdlib_type: "richTextAnchorLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A concatenation of rich texts
 */
public class TDLib.RichTexts : RichText {

    /**
     * Texts
     */
    public Gee.ArrayList<RichText?> texts { get; construct set; default = new Gee.ArrayList<RichText?> (); }

    public RichTexts (
        Gee.ArrayList<RichText?> texts
    ) {
        Object (
            texts: texts,
            tdlib_type: "richTexts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
