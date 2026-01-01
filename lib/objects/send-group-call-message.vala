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
 * Sends a message to other participants of a group call. Requires
 * groupCall.can_send_messages right
 */
public class TDLib.SendGroupCallMessage : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Text of the message to send;
     * 1-getOption("group_call_message_text_length_max") characters for
     * non-live-stories; see updateGroupCallMessageLevels for live story
     * restrictions,
     * which depends on paid_message_star_count. Can't contain line feeds for
     * live stories
     */
    public FormattedText text { get; construct set; }

    /**
     * The number of Telegram Stars the user agreed to pay to send the
     * message; for live stories only;
     * 0-getOption("paid_group_call_message_star_count_max").
     * Must be 0 for messages sent to live stories posted by the current user
     */
    public int64 paid_message_star_count { get; construct set; }

    public SendGroupCallMessage (
        int32 group_call_id,
        FormattedText text,
        int64 paid_message_star_count
    ) {
        Object (
            group_call_id: group_call_id,
            text: text,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "sendGroupCallMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
