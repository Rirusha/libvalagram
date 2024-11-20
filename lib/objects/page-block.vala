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
 * Describes a block of an instant view for a web page
 */
public abstract class TDLib.PageBlock : Error {}

/**
 * The title of a page
 */
public class TDLib.PageBlockTitle : PageBlock {

    /**
     * Title
     */
    public RichText title { get; construct set; }

    public PageBlockTitle (
        RichText title
    ) {
        Object (
            title: title,
            tdlib_type: "pageBlockTitle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The subtitle of a page
 */
public class TDLib.PageBlockSubtitle : PageBlock {

    /**
     * Subtitle
     */
    public RichText subtitle { get; construct set; }

    public PageBlockSubtitle (
        RichText subtitle
    ) {
        Object (
            subtitle: subtitle,
            tdlib_type: "pageBlockSubtitle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The author and publishing date of a page
 */
public class TDLib.PageBlockAuthorDate : PageBlock {

    /**
     * Author
     */
    public RichText author { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the article was published; 0 if
     * unknown
     */
    public int32 publish_date { get; construct set; }

    public PageBlockAuthorDate (
        RichText author,
        int32 publish_date
    ) {
        Object (
            author: author,
            publish_date: publish_date,
            tdlib_type: "pageBlockAuthorDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A header
 */
public class TDLib.PageBlockHeader : PageBlock {

    /**
     * Header
     */
    public RichText header { get; construct set; }

    public PageBlockHeader (
        RichText header
    ) {
        Object (
            header: header,
            tdlib_type: "pageBlockHeader",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A subheader
 */
public class TDLib.PageBlockSubheader : PageBlock {

    /**
     * Subheader
     */
    public RichText subheader { get; construct set; }

    public PageBlockSubheader (
        RichText subheader
    ) {
        Object (
            subheader: subheader,
            tdlib_type: "pageBlockSubheader",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A kicker
 */
public class TDLib.PageBlockKicker : PageBlock {

    /**
     * Kicker
     */
    public RichText kicker { get; construct set; }

    public PageBlockKicker (
        RichText kicker
    ) {
        Object (
            kicker: kicker,
            tdlib_type: "pageBlockKicker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A text paragraph
 */
public class TDLib.PageBlockParagraph : PageBlock {

    /**
     * Paragraph text
     */
    public RichText text { get; construct set; }

    public PageBlockParagraph (
        RichText text
    ) {
        Object (
            text: text,
            tdlib_type: "pageBlockParagraph",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A preformatted text paragraph
 */
public class TDLib.PageBlockPreformatted : PageBlock {

    /**
     * Paragraph text
     */
    public RichText text { get; construct set; }

    /**
     * Programming language for which the text needs to be formatted
     */
    public string language { get; construct set; }

    public PageBlockPreformatted (
        RichText text,
        string language
    ) {
        Object (
            text: text,
            language: language,
            tdlib_type: "pageBlockPreformatted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The footer of a page
 */
public class TDLib.PageBlockFooter : PageBlock {

    /**
     * Footer
     */
    public RichText footer { get; construct set; }

    public PageBlockFooter (
        RichText footer
    ) {
        Object (
            footer: footer,
            tdlib_type: "pageBlockFooter",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An empty block separating a page
 */
public class TDLib.PageBlockDivider : PageBlock {

    public PageBlockDivider () {
        Object (
            tdlib_type: "pageBlockDivider",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An invisible anchor on a page, which can be used in a URL to open the
 * page from the specified anchor
 */
public class TDLib.PageBlockAnchor : PageBlock {

    /**
     * Name of the anchor
     */
    public string name { get; construct set; }

    public PageBlockAnchor (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "pageBlockAnchor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A list of data blocks
 */
public class TDLib.PageBlockList : PageBlock {

    /**
     * The items of the list
     */
    public Gee.ArrayList<PageBlockListItem?> items { get; construct set; default = new Gee.ArrayList<PageBlockListItem?> (); }

    public PageBlockList (
        Gee.ArrayList<PageBlockListItem?> items
    ) {
        Object (
            items: items,
            tdlib_type: "pageBlockList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A block quote
 */
public class TDLib.PageBlockBlockQuote : PageBlock {

    /**
     * Quote text
     */
    public RichText text { get; construct set; }

    /**
     * Quote credit
     */
    public RichText credit { get; construct set; }

    public PageBlockBlockQuote (
        RichText text,
        RichText credit
    ) {
        Object (
            text: text,
            credit: credit,
            tdlib_type: "pageBlockBlockQuote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A pull quote
 */
public class TDLib.PageBlockPullQuote : PageBlock {

    /**
     * Quote text
     */
    public RichText text { get; construct set; }

    /**
     * Quote credit
     */
    public RichText credit { get; construct set; }

    public PageBlockPullQuote (
        RichText text,
        RichText credit
    ) {
        Object (
            text: text,
            credit: credit,
            tdlib_type: "pageBlockPullQuote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An animation
 */
public class TDLib.PageBlockAnimation : PageBlock {

    /**
     * Animation file; may be null
     */
    public Animation? animation { get; construct set; }

    /**
     * Animation caption
     */
    public PageBlockCaption caption { get; construct set; }

    /**
     * True, if the animation must be played automatically
     */
    public bool need_autoplay { get; construct set; }

    public PageBlockAnimation (
        Animation? animation,
        PageBlockCaption caption,
        bool need_autoplay
    ) {
        Object (
            animation: animation,
            caption: caption,
            need_autoplay: need_autoplay,
            tdlib_type: "pageBlockAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An audio file
 */
public class TDLib.PageBlockAudio : PageBlock {

    /**
     * Audio file; may be null
     */
    public Audio? audio { get; construct set; }

    /**
     * Audio file caption
     */
    public PageBlockCaption caption { get; construct set; }

    public PageBlockAudio (
        Audio? audio,
        PageBlockCaption caption
    ) {
        Object (
            audio: audio,
            caption: caption,
            tdlib_type: "pageBlockAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A photo
 */
public class TDLib.PageBlockPhoto : PageBlock {

    /**
     * Photo file; may be null
     */
    public Photo? photo { get; construct set; }

    /**
     * Photo caption
     */
    public PageBlockCaption caption { get; construct set; }

    /**
     * URL that needs to be opened when the photo is clicked
     */
    public string url { get; construct set; }

    public PageBlockPhoto (
        Photo? photo,
        PageBlockCaption caption,
        string url
    ) {
        Object (
            photo: photo,
            caption: caption,
            url: url,
            tdlib_type: "pageBlockPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video
 */
public class TDLib.PageBlockVideo : PageBlock {

    /**
     * Video file; may be null
     */
    public Video? video { get; construct set; }

    /**
     * Video caption
     */
    public PageBlockCaption caption { get; construct set; }

    /**
     * True, if the video must be played automatically
     */
    public bool need_autoplay { get; construct set; }

    /**
     * True, if the video must be looped
     */
    public bool is_looped { get; construct set; }

    public PageBlockVideo (
        Video? video,
        PageBlockCaption caption,
        bool need_autoplay,
        bool is_looped
    ) {
        Object (
            video: video,
            caption: caption,
            need_autoplay: need_autoplay,
            is_looped: is_looped,
            tdlib_type: "pageBlockVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A voice note
 */
public class TDLib.PageBlockVoiceNote : PageBlock {

    /**
     * Voice note; may be null
     */
    public VoiceNote? voice_note { get; construct set; }

    /**
     * Voice note caption
     */
    public PageBlockCaption caption { get; construct set; }

    public PageBlockVoiceNote (
        VoiceNote? voice_note,
        PageBlockCaption caption
    ) {
        Object (
            voice_note: voice_note,
            caption: caption,
            tdlib_type: "pageBlockVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A page cover
 */
public class TDLib.PageBlockCover : PageBlock {

    /**
     * Cover
     */
    public PageBlock cover { get; construct set; }

    public PageBlockCover (
        PageBlock cover
    ) {
        Object (
            cover: cover,
            tdlib_type: "pageBlockCover",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An embedded web page
 */
public class TDLib.PageBlockEmbedded : PageBlock {

    /**
     * URL of the embedded page, if available
     */
    public string url { get; construct set; }

    /**
     * HTML-markup of the embedded page
     */
    public string html { get; construct set; }

    /**
     * Poster photo, if available; may be null
     */
    public Photo? poster_photo { get; construct set; }

    /**
     * Block width; 0 if unknown
     */
    public int32 width { get; construct set; }

    /**
     * Block height; 0 if unknown
     */
    public int32 height { get; construct set; }

    /**
     * Block caption
     */
    public PageBlockCaption caption { get; construct set; }

    /**
     * True, if the block must be full width
     */
    public bool is_full_width { get; construct set; }

    /**
     * True, if scrolling needs to be allowed
     */
    public bool allow_scrolling { get; construct set; }

    public PageBlockEmbedded (
        string url,
        string html,
        Photo? poster_photo,
        int32 width,
        int32 height,
        PageBlockCaption caption,
        bool is_full_width,
        bool allow_scrolling
    ) {
        Object (
            url: url,
            html: html,
            poster_photo: poster_photo,
            width: width,
            height: height,
            caption: caption,
            is_full_width: is_full_width,
            allow_scrolling: allow_scrolling,
            tdlib_type: "pageBlockEmbedded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An embedded post
 */
public class TDLib.PageBlockEmbeddedPost : PageBlock {

    /**
     * URL of the embedded post
     */
    public string url { get; construct set; }

    /**
     * Post author
     */
    public string author { get; construct set; }

    /**
     * Post author photo; may be null
     */
    public Photo? author_photo { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the post was created; 0 if unknown
     */
    public int32 date { get; construct set; }

    /**
     * Post content
     */
    public Gee.ArrayList<PageBlock?> page_blocks { get; construct set; default = new Gee.ArrayList<PageBlock?> (); }

    /**
     * Post caption
     */
    public PageBlockCaption caption { get; construct set; }

    public PageBlockEmbeddedPost (
        string url,
        string author,
        Photo? author_photo,
        int32 date,
        Gee.ArrayList<PageBlock?> page_blocks,
        PageBlockCaption caption
    ) {
        Object (
            url: url,
            author: author,
            author_photo: author_photo,
            date: date,
            page_blocks: page_blocks,
            caption: caption,
            tdlib_type: "pageBlockEmbeddedPost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A collage
 */
public class TDLib.PageBlockCollage : PageBlock {

    /**
     * Collage item contents
     */
    public Gee.ArrayList<PageBlock?> page_blocks { get; construct set; default = new Gee.ArrayList<PageBlock?> (); }

    /**
     * Block caption
     */
    public PageBlockCaption caption { get; construct set; }

    public PageBlockCollage (
        Gee.ArrayList<PageBlock?> page_blocks,
        PageBlockCaption caption
    ) {
        Object (
            page_blocks: page_blocks,
            caption: caption,
            tdlib_type: "pageBlockCollage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A slideshow
 */
public class TDLib.PageBlockSlideshow : PageBlock {

    /**
     * Slideshow item contents
     */
    public Gee.ArrayList<PageBlock?> page_blocks { get; construct set; default = new Gee.ArrayList<PageBlock?> (); }

    /**
     * Block caption
     */
    public PageBlockCaption caption { get; construct set; }

    public PageBlockSlideshow (
        Gee.ArrayList<PageBlock?> page_blocks,
        PageBlockCaption caption
    ) {
        Object (
            page_blocks: page_blocks,
            caption: caption,
            tdlib_type: "pageBlockSlideshow",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A link to a chat
 */
public class TDLib.PageBlockChatLink : PageBlock {

    /**
     * Chat title
     */
    public string title { get; construct set; }

    /**
     * Chat photo; may be null
     */
    public ChatPhotoInfo? photo { get; construct set; }

    /**
     * Identifier of the accent color for chat title and background of chat
     * photo
     */
    public int32 accent_color_id { get; construct set; }

    /**
     * Chat username by which all other information about the chat can be
     * resolved
     */
    public string username { get; construct set; }

    public PageBlockChatLink (
        string title,
        ChatPhotoInfo? photo,
        int32 accent_color_id,
        string username
    ) {
        Object (
            title: title,
            photo: photo,
            accent_color_id: accent_color_id,
            username: username,
            tdlib_type: "pageBlockChatLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A table
 */
public class TDLib.PageBlockTable : PageBlock {

    /**
     * Table caption
     */
    public RichText caption { get; construct set; }

    /**
     * Table cells
     */
    public Gee.ArrayList<PageBlockTableCell?> cells { get; construct set; default = new Gee.ArrayList<PageBlockTableCell?> (); }

    /**
     * True, if the table is bordered
     */
    public bool is_bordered { get; construct set; }

    /**
     * True, if the table is striped
     */
    public bool is_striped { get; construct set; }

    public PageBlockTable (
        RichText caption,
        Gee.ArrayList<PageBlockTableCell?> cells,
        bool is_bordered,
        bool is_striped
    ) {
        Object (
            caption: caption,
            cells: cells,
            is_bordered: is_bordered,
            is_striped: is_striped,
            tdlib_type: "pageBlockTable",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A collapsible block
 */
public class TDLib.PageBlockDetails : PageBlock {

    /**
     * Always visible heading for the block
     */
    public RichText header { get; construct set; }

    /**
     * Block contents
     */
    public Gee.ArrayList<PageBlock?> page_blocks { get; construct set; default = new Gee.ArrayList<PageBlock?> (); }

    /**
     * True, if the block is open by default
     */
    public bool is_open { get; construct set; }

    public PageBlockDetails (
        RichText header,
        Gee.ArrayList<PageBlock?> page_blocks,
        bool is_open
    ) {
        Object (
            header: header,
            page_blocks: page_blocks,
            is_open: is_open,
            tdlib_type: "pageBlockDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Related articles
 */
public class TDLib.PageBlockRelatedArticles : PageBlock {

    /**
     * Block header
     */
    public RichText header { get; construct set; }

    /**
     * List of related articles
     */
    public Gee.ArrayList<PageBlockRelatedArticle?> articles { get; construct set; default = new Gee.ArrayList<PageBlockRelatedArticle?> (); }

    public PageBlockRelatedArticles (
        RichText header,
        Gee.ArrayList<PageBlockRelatedArticle?> articles
    ) {
        Object (
            header: header,
            articles: articles,
            tdlib_type: "pageBlockRelatedArticles",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A map
 */
public class TDLib.PageBlockMap : PageBlock {

    /**
     * Location of the map center
     */
    public Location location { get; construct set; }

    /**
     * Map zoom level
     */
    public int32 zoom { get; construct set; }

    /**
     * Map width
     */
    public int32 width { get; construct set; }

    /**
     * Map height
     */
    public int32 height { get; construct set; }

    /**
     * Block caption
     */
    public PageBlockCaption caption { get; construct set; }

    public PageBlockMap (
        Location location,
        int32 zoom,
        int32 width,
        int32 height,
        PageBlockCaption caption
    ) {
        Object (
            location: location,
            zoom: zoom,
            width: width,
            height: height,
            caption: caption,
            tdlib_type: "pageBlockMap",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
