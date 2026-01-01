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
 * Adds tasks of a checklist in a message as done or not done
 */
public class TDLib.MarkChecklistTasksAsDone : TDObject {

    /**
     * Identifier of the chat with the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message containing the checklist. Use
     * messageProperties.can_mark_tasks_as_done to check whether the tasks
     * can be marked as done or not done
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifiers of tasks that were marked as done
     */
    public Gee.ArrayList<int32?> marked_as_done_task_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Identifiers of tasks that were marked as not done
     */
    public Gee.ArrayList<int32?> marked_as_not_done_task_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public MarkChecklistTasksAsDone (
        int64 chat_id,
        int64 message_id,
        Gee.ArrayList<int32?> marked_as_done_task_ids,
        Gee.ArrayList<int32?> marked_as_not_done_task_ids
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            marked_as_done_task_ids: marked_as_done_task_ids,
            marked_as_not_done_task_ids: marked_as_not_done_task_ids,
            tdlib_type: "markChecklistTasksAsDone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
