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
 * Readds quick reply messages which failed to add. Can be called only
 * for messages for which messageSendingStateFailed.can_retry is true and
 * after specified in messageSendingStateFailed.retry_after time passed.
 * If a message is readded, the corresponding failed to send message is
 * deleted. Returns the sent messages in the same order as the message
 * identifiers passed in message_ids. If a message can't be readded, null
 * will be returned instead of the message
 */
internal class TDLib.ReaddQuickReplyShortcutMessages : TDObject {

    /**
     * Name of the target shortcut
     */
    public string shortcut_name { get; construct set; }

    /**
     * Identifiers of the quick reply messages to readd. Message identifiers
     * must be in a strictly increasing order
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public ReaddQuickReplyShortcutMessages (
        string shortcut_name,
        Gee.ArrayList<int64?> message_ids
    ) {
        Object (
            shortcut_name: shortcut_name,
            message_ids: message_ids,
            tdlib_type: "readdQuickReplyShortcutMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
