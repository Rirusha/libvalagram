/*
 * Copyright (C) 2024-2025 Vladimir Vaskov
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
 * Represents a filter for message search results
 */
public abstract class TDLib.SearchMessagesFilter : Error {}

/**
 * Returns all found messages, no filter is applied
 */
public class TDLib.SearchMessagesFilterEmpty : SearchMessagesFilter {

    public SearchMessagesFilterEmpty () {
        Object (
            tdlib_type: "searchMessagesFilterEmpty",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only animation messages
 */
public class TDLib.SearchMessagesFilterAnimation : SearchMessagesFilter {

    public SearchMessagesFilterAnimation () {
        Object (
            tdlib_type: "searchMessagesFilterAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only audio messages
 */
public class TDLib.SearchMessagesFilterAudio : SearchMessagesFilter {

    public SearchMessagesFilterAudio () {
        Object (
            tdlib_type: "searchMessagesFilterAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only document messages
 */
public class TDLib.SearchMessagesFilterDocument : SearchMessagesFilter {

    public SearchMessagesFilterDocument () {
        Object (
            tdlib_type: "searchMessagesFilterDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only photo messages
 */
public class TDLib.SearchMessagesFilterPhoto : SearchMessagesFilter {

    public SearchMessagesFilterPhoto () {
        Object (
            tdlib_type: "searchMessagesFilterPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only video messages
 */
public class TDLib.SearchMessagesFilterVideo : SearchMessagesFilter {

    public SearchMessagesFilterVideo () {
        Object (
            tdlib_type: "searchMessagesFilterVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only voice note messages
 */
public class TDLib.SearchMessagesFilterVoiceNote : SearchMessagesFilter {

    public SearchMessagesFilterVoiceNote () {
        Object (
            tdlib_type: "searchMessagesFilterVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only photo and video messages
 */
public class TDLib.SearchMessagesFilterPhotoAndVideo : SearchMessagesFilter {

    public SearchMessagesFilterPhotoAndVideo () {
        Object (
            tdlib_type: "searchMessagesFilterPhotoAndVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only messages containing URLs
 */
public class TDLib.SearchMessagesFilterUrl : SearchMessagesFilter {

    public SearchMessagesFilterUrl () {
        Object (
            tdlib_type: "searchMessagesFilterUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only messages containing chat photos
 */
public class TDLib.SearchMessagesFilterChatPhoto : SearchMessagesFilter {

    public SearchMessagesFilterChatPhoto () {
        Object (
            tdlib_type: "searchMessagesFilterChatPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only video note messages
 */
public class TDLib.SearchMessagesFilterVideoNote : SearchMessagesFilter {

    public SearchMessagesFilterVideoNote () {
        Object (
            tdlib_type: "searchMessagesFilterVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only voice and video note messages
 */
public class TDLib.SearchMessagesFilterVoiceAndVideoNote : SearchMessagesFilter {

    public SearchMessagesFilterVoiceAndVideoNote () {
        Object (
            tdlib_type: "searchMessagesFilterVoiceAndVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only messages with mentions of the current user, or messages
 * that are replies to their messages
 */
public class TDLib.SearchMessagesFilterMention : SearchMessagesFilter {

    public SearchMessagesFilterMention () {
        Object (
            tdlib_type: "searchMessagesFilterMention",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only messages with unread mentions of the current user, or
 * messages that are replies to their messages. When using this filter
 * the results can't be additionally filtered by a query, a message
 * thread or by the sending user
 */
public class TDLib.SearchMessagesFilterUnreadMention : SearchMessagesFilter {

    public SearchMessagesFilterUnreadMention () {
        Object (
            tdlib_type: "searchMessagesFilterUnreadMention",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only messages with unread reactions for the current user. When
 * using this filter the results can't be additionally filtered by a
 * query, a message thread or by the sending user
 */
public class TDLib.SearchMessagesFilterUnreadReaction : SearchMessagesFilter {

    public SearchMessagesFilterUnreadReaction () {
        Object (
            tdlib_type: "searchMessagesFilterUnreadReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only failed to send messages. This filter can be used only if
 * the message database is used
 */
public class TDLib.SearchMessagesFilterFailedToSend : SearchMessagesFilter {

    public SearchMessagesFilterFailedToSend () {
        Object (
            tdlib_type: "searchMessagesFilterFailedToSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only pinned messages
 */
public class TDLib.SearchMessagesFilterPinned : SearchMessagesFilter {

    public SearchMessagesFilterPinned () {
        Object (
            tdlib_type: "searchMessagesFilterPinned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
