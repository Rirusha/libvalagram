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
 * Toggles whether the current user will receive a notification when the
 * group call starts; scheduled group calls only
 */
public class TDLib.ToggleGroupCallEnabledStartNotification : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * New value of the enabled_start_notification setting
     */
    public bool enabled_start_notification { get; construct set; }

    public ToggleGroupCallEnabledStartNotification (
        int32 group_call_id,
        bool enabled_start_notification
    ) {
        Object (
            group_call_id: group_call_id,
            enabled_start_notification: enabled_start_notification,
            tdlib_type: "toggleGroupCallEnabledStartNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
