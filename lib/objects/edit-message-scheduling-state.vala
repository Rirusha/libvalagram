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
 * Edits the time when a scheduled message will be sent. Scheduling state
 * of all messages in the same album or forwarded together with the
 * message will be also changed
 */
public class TDLib.EditMessageSchedulingState : TDObject {

    /**
     * The chat the message belongs to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message. Use
     * messageProperties.can_edit_scheduling_state to check whether the
     * message is suitable
     */
    public int64 message_id { get; construct set; }

    /**
     * The new message scheduling state; pass null to send the message
     * immediately. Must be null for messages in the state
     * messageSchedulingStateSendWhenVideoProcessed
     */
    public MessageSchedulingState scheduling_state { get; construct set; }

    public EditMessageSchedulingState (
        int64 chat_id,
        int64 message_id,
        MessageSchedulingState scheduling_state
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            scheduling_state: scheduling_state,
            tdlib_type: "editMessageSchedulingState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
