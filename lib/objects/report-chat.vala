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
 * Reports a chat to the Telegram moderators. A chat can be reported only
 * from the chat action bar, or if chat.can_be_reported
 */
internal class TDLib.ReportChat : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Option identifier chosen by the user; leave empty for the initial
     * request
     */
    public Bytes option_id { get; construct set; }

    /**
     * Identifiers of reported messages. Use
     * messageProperties.can_report_chat to check whether the message can be
     * reported
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Additional report details if asked by the server; 0-1024 characters;
     * leave empty for the initial request
     */
    public string text { get; construct set; }

    public ReportChat (
        int64 chat_id,
        Bytes option_id,
        Gee.ArrayList<int64?> message_ids,
        string text
    ) {
        Object (
            chat_id: chat_id,
            option_id: option_id,
            message_ids: message_ids,
            text: text,
            tdlib_type: "reportChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
