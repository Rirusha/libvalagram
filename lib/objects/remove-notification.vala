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
 * Removes an active notification from notification list. Needs to be
 * called only if the notification is removed by the current user
 */
public class TDLib.RemoveNotification : TDObject {

    /**
     * Identifier of notification group to which the notification belongs
     */
    public int32 notification_group_id { get; construct set; }

    /**
     * Identifier of removed notification
     */
    public int32 notification_id { get; construct set; }

    public RemoveNotification (
        int32 notification_group_id,
        int32 notification_id
    ) {
        Object (
            notification_group_id: notification_group_id,
            notification_id: notification_id,
            tdlib_type: "removeNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
