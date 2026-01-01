/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Describes actions which must be possible to do through a chat action
 * bar
 */
public abstract class TDLib.ChatActionBar : Error {}

/**
 * The chat can be reported as spam using the method
 * {@link Client.report_chat} with an empty option_id and message_ids. If
 * the chat is a private chat with a user with an emoji status, then a
 * notice about emoji status usage must be shown
 */
public class TDLib.ChatActionBarReportSpam : ChatActionBar {

    /**
     * If true, the chat was automatically archived and can be moved back to
     * the main chat list using {@link Client.add_chat_to_list}
     * simultaneously with setting chat notification settings to default
     * using {@link Client.set_chat_notification_settings}
     */
    public bool can_unarchive { get; construct set; }

    public ChatActionBarReportSpam (
        bool can_unarchive
    ) {
        Object (
            can_unarchive: can_unarchive,
            tdlib_type: "chatActionBarReportSpam",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat is a recently created group chat to which new members can be
 * invited
 */
public class TDLib.ChatActionBarInviteMembers : ChatActionBar {

    public ChatActionBarInviteMembers () {
        Object (
            tdlib_type: "chatActionBarInviteMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat is a private or secret chat, which can be reported using the
 * method {@link Client.report_chat} or the other user can be blocked
 * using the method {@link Client.set_message_sender_block_list}
 * or the other user can be added to the contact list using the method
 * {@link Client.add_contact} If the chat is a private chat with a user
 * with an emoji status, then a notice about emoji status usage must be
 * shown
 */
public class TDLib.ChatActionBarReportAddBlock : ChatActionBar {

    /**
     * If true, the chat was automatically archived and can be moved back to
     * the main chat list using {@link Client.add_chat_to_list}
     * simultaneously with setting chat notification settings to default
     * using {@link Client.set_chat_notification_settings}
     */
    public bool can_unarchive { get; construct set; }

    /**
     * Basic information about the other user in the chat; may be null if
     * unknown
     */
    public AccountInfo? account_info { get; construct set; }

    public ChatActionBarReportAddBlock (
        bool can_unarchive,
        AccountInfo? account_info
    ) {
        Object (
            can_unarchive: can_unarchive,
            account_info: account_info,
            tdlib_type: "chatActionBarReportAddBlock",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat is a private or secret chat and the other user can be added
 * to the contact list using the method {@link Client.add_contact}
 */
public class TDLib.ChatActionBarAddContact : ChatActionBar {

    public ChatActionBarAddContact () {
        Object (
            tdlib_type: "chatActionBarAddContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat is a private or secret chat with a mutual contact and the
 * user's phone number can be shared with the other user using the method
 * {@link Client.share_phone_number}
 */
public class TDLib.ChatActionBarSharePhoneNumber : ChatActionBar {

    public ChatActionBarSharePhoneNumber () {
        Object (
            tdlib_type: "chatActionBarSharePhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat is a private chat with an administrator of a chat to which
 * the user sent join request
 */
public class TDLib.ChatActionBarJoinRequest : ChatActionBar {

    /**
     * Title of the chat to which the join request was sent
     */
    public string title { get; construct set; }

    /**
     * True, if the join request was sent to a channel chat
     */
    public bool is_channel { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the join request was sent
     */
    public int32 request_date { get; construct set; }

    public ChatActionBarJoinRequest (
        string title,
        bool is_channel,
        int32 request_date
    ) {
        Object (
            title: title,
            is_channel: is_channel,
            request_date: request_date,
            tdlib_type: "chatActionBarJoinRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
