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
 * Removes a notification sound from the list of saved notification
 * sounds
 */
public class TDLib.RemoveSavedNotificationSound : TDObject {

    /**
     * Identifier of the notification sound
     */
    public int64 notification_sound_id { get; construct set; }

    public RemoveSavedNotificationSound (
        int64 notification_sound_id
    ) {
        Object (
            notification_sound_id: notification_sound_id,
            tdlib_type: "removeSavedNotificationSound",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
