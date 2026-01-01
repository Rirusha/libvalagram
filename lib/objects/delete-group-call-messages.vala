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
 * Deletes messages in a group call; for live story calls only. Requires
 * groupCallMessage.can_be_deleted right
 */
public class TDLib.DeleteGroupCallMessages : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Identifiers of the messages to be deleted
     */
    public Gee.ArrayList<int32?> message_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Pass true to report the messages as spam
     */
    public bool report_spam { get; construct set; }

    public DeleteGroupCallMessages (
        int32 group_call_id,
        Gee.ArrayList<int32?> message_ids,
        bool report_spam
    ) {
        Object (
            group_call_id: group_call_id,
            message_ids: message_ids,
            report_spam: report_spam,
            tdlib_type: "deleteGroupCallMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
