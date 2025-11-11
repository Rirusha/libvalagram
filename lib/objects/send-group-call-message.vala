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
     * 1-getOption("group_call_message_text_length_max") characters
     */
    public FormattedText text { get; construct set; }

    public SendGroupCallMessage (
        int32 group_call_id,
        FormattedText text
    ) {
        Object (
            group_call_id: group_call_id,
            text: text,
            tdlib_type: "sendGroupCallMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
