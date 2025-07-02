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
 * Describes a checklist to be sent
 */
public class TDLib.InputChecklist : Error {

    /**
     * Title of the checklist; 1-getOption("checklist_title_length_max")
     * characters. May contain only Bold, Italic, Underline, Strikethrough,
     * Spoiler, and CustomEmoji entities
     */
    public FormattedText title { get; construct set; }

    /**
     * List of tasks in the checklist;
     * 1-getOption("checklist_task_count_max") tasks
     */
    public Gee.ArrayList<InputChecklistTask?> tasks { get; construct set; default = new Gee.ArrayList<InputChecklistTask?> (); }

    /**
     * True, if other users can add tasks to the list
     */
    public bool others_can_add_tasks { get; construct set; }

    /**
     * True, if other users can mark tasks as done or not done
     */
    public bool others_can_mark_tasks_as_done { get; construct set; }

    public InputChecklist (
        FormattedText title,
        Gee.ArrayList<InputChecklistTask?> tasks,
        bool others_can_add_tasks,
        bool others_can_mark_tasks_as_done
    ) {
        Object (
            title: title,
            tasks: tasks,
            others_can_add_tasks: others_can_add_tasks,
            others_can_mark_tasks_as_done: others_can_mark_tasks_as_done,
            tdlib_type: "inputChecklist",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
