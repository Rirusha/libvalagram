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
 * Describes a checklist
 */
public class TDLib.Checklist : Error {

    /**
     * Title of the checklist; may contain only Bold, Italic, Underline,
     * Strikethrough, Spoiler, and CustomEmoji entities
     */
    public FormattedText title { get; construct set; }

    /**
     * List of tasks in the checklist
     */
    public Gee.ArrayList<ChecklistTask?> tasks { get; construct set; default = new Gee.ArrayList<ChecklistTask?> (); }

    /**
     * True, if users other than creator of the list can add tasks to the
     * list
     */
    public bool others_can_add_tasks { get; construct set; }

    /**
     * True, if the current user can add tasks to the list if they have
     * Telegram Premium subscription
     */
    public bool can_add_tasks { get; construct set; }

    /**
     * True, if users other than creator of the list can mark tasks as done
     * or not done. If true, then the checklist is called "group checklist"
     */
    public bool others_can_mark_tasks_as_done { get; construct set; }

    /**
     * True, if the current user can mark tasks as done or not done if they
     * have Telegram Premium subscription
     */
    public bool can_mark_tasks_as_done { get; construct set; }

    public Checklist (
        FormattedText title,
        Gee.ArrayList<ChecklistTask?> tasks,
        bool others_can_add_tasks,
        bool can_add_tasks,
        bool others_can_mark_tasks_as_done,
        bool can_mark_tasks_as_done
    ) {
        Object (
            title: title,
            tasks: tasks,
            others_can_add_tasks: others_can_add_tasks,
            can_add_tasks: can_add_tasks,
            others_can_mark_tasks_as_done: others_can_mark_tasks_as_done,
            can_mark_tasks_as_done: can_mark_tasks_as_done,
            tdlib_type: "checklist",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
