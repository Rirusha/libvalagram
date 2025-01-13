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
 * Describes a group of notifications
 */
public class TDLib.NotificationGroup : Error {

    /**
     * Unique persistent auto-incremented from 1 identifier of the
     * notification group
     */
    public int32 id_ { get; construct set; }

    /**
     * Type of the group
     */
    public NotificationGroupType type_ { get; construct set; }

    /**
     * Identifier of a chat to which all notifications in the group belong
     */
    public int64 chat_id { get; construct set; }

    /**
     * Total number of active notifications in the group
     */
    public int32 total_count { get; construct set; }

    /**
     * The list of active notifications
     */
    public Gee.ArrayList<Notification?> notifications { get; construct set; default = new Gee.ArrayList<Notification?> (); }

    public NotificationGroup (
        int32 id_,
        NotificationGroupType type_,
        int64 chat_id,
        int32 total_count,
        Gee.ArrayList<Notification?> notifications
    ) {
        Object (
            id_: id_,
            type_: type_,
            chat_id: chat_id,
            total_count: total_count,
            notifications: notifications,
            tdlib_type: "notificationGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
