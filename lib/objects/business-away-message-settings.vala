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
 * Describes settings for messages that are automatically sent by a
 * Telegram Business account when it is away
 */
public class TDLib.BusinessAwayMessageSettings : Error {

    /**
     * Unique quick reply shortcut identifier for the away messages
     */
    public int32 shortcut_id { get; construct set; }

    /**
     * Chosen recipients of the away messages
     */
    public BusinessRecipients recipients { get; construct set; }

    /**
     * Settings used to check whether the current user is away
     */
    public BusinessAwayMessageSchedule schedule { get; construct set; }

    /**
     * True, if the messages must not be sent if the account was online in
     * the last 10 minutes
     */
    public bool offline_only { get; construct set; }

    public BusinessAwayMessageSettings (
        int32 shortcut_id,
        BusinessRecipients recipients,
        BusinessAwayMessageSchedule schedule,
        bool offline_only
    ) {
        Object (
            shortcut_id: shortcut_id,
            recipients: recipients,
            schedule: schedule,
            offline_only: offline_only,
            tdlib_type: "businessAwayMessageSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
