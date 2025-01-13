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
 * Describes source of a message
 */
public abstract class TDLib.MessageSource : Error {}

/**
 * The message is from a chat history
 */
public class TDLib.MessageSourceChatHistory : MessageSource {

    public MessageSourceChatHistory () {
        Object (
            tdlib_type: "messageSourceChatHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from a message thread history
 */
public class TDLib.MessageSourceMessageThreadHistory : MessageSource {

    public MessageSourceMessageThreadHistory () {
        Object (
            tdlib_type: "messageSourceMessageThreadHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from a forum topic history
 */
public class TDLib.MessageSourceForumTopicHistory : MessageSource {

    public MessageSourceForumTopicHistory () {
        Object (
            tdlib_type: "messageSourceForumTopicHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from chat, message thread or forum topic history
 * preview
 */
public class TDLib.MessageSourceHistoryPreview : MessageSource {

    public MessageSourceHistoryPreview () {
        Object (
            tdlib_type: "messageSourceHistoryPreview",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from a chat list or a forum topic list
 */
public class TDLib.MessageSourceChatList : MessageSource {

    public MessageSourceChatList () {
        Object (
            tdlib_type: "messageSourceChatList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from search results, including file downloads, local
 * file list, outgoing document messages, calendar
 */
public class TDLib.MessageSourceSearch : MessageSource {

    public MessageSourceSearch () {
        Object (
            tdlib_type: "messageSourceSearch",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from a chat event log
 */
public class TDLib.MessageSourceChatEventLog : MessageSource {

    public MessageSourceChatEventLog () {
        Object (
            tdlib_type: "messageSourceChatEventLog",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from a notification
 */
public class TDLib.MessageSourceNotification : MessageSource {

    public MessageSourceNotification () {
        Object (
            tdlib_type: "messageSourceNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message was screenshotted; the source must be used only if the
 * message content was visible during the screenshot
 */
public class TDLib.MessageSourceScreenshot : MessageSource {

    public MessageSourceScreenshot () {
        Object (
            tdlib_type: "messageSourceScreenshot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is from some other source
 */
public class TDLib.MessageSourceOther : MessageSource {

    public MessageSourceOther () {
        Object (
            tdlib_type: "messageSourceOther",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
