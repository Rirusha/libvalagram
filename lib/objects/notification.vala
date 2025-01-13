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
 * Contains information about a notification
 */
public class TDLib.Notification : Error {

    /**
     * Unique persistent identifier of this notification
     */
    public int32 id_ { get; construct set; }

    /**
     * Notification date
     */
    public int32 date { get; construct set; }

    /**
     * True, if the notification was explicitly sent without sound
     */
    public bool is_silent { get; construct set; }

    /**
     * Notification type
     */
    public NotificationType type_ { get; construct set; }

    public Notification (
        int32 id_,
        int32 date,
        bool is_silent,
        NotificationType type_
    ) {
        Object (
            id_: id_,
            date: date,
            is_silent: is_silent,
            type_: type_,
            tdlib_type: "notification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
