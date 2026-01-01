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
 * Removes a group of active notifications. Needs to be called only if
 * the notification group is removed by the current user
 */
public class TDLib.RemoveNotificationGroup : TDObject {

    /**
     * Notification group identifier
     */
    public int32 notification_group_id { get; construct set; }

    /**
     * The maximum identifier of removed notifications
     */
    public int32 max_notification_id { get; construct set; }

    public RemoveNotificationGroup (
        int32 notification_group_id,
        int32 max_notification_id
    ) {
        Object (
            notification_group_id: notification_group_id,
            max_notification_id: max_notification_id,
            tdlib_type: "removeNotificationGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
