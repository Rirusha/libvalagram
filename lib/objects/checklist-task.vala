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
 * Describes a task in a checklist
 */
public class TDLib.ChecklistTask : Error {

    /**
     * Unique identifier of the task
     */
    public int32 id_ { get; construct set; }

    /**
     * Text of the task; may contain only Bold, Italic, Underline,
     * Strikethrough, Spoiler, CustomEmoji, Url, EmailAddress, Mention,
     * Hashtag, Cashtag and PhoneNumber entities
     */
    public FormattedText text { get; construct set; }

    /**
     * Identifier of the user that completed the task; 0 if the task isn't
     * completed
     */
    public int64 completed_by_user_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the task was completed; 0 if the
     * task isn't completed
     */
    public int32 completion_date { get; construct set; }

    public ChecklistTask (
        int32 id_,
        FormattedText text,
        int64 completed_by_user_id,
        int32 completion_date
    ) {
        Object (
            id_: id_,
            text: text,
            completed_by_user_id: completed_by_user_id,
            completion_date: completion_date,
            tdlib_type: "checklistTask",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
