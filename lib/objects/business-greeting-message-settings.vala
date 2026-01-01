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
 * Describes settings for greeting messages that are automatically sent
 * by a Telegram Business account as response to incoming messages in an
 * inactive private chat
 */
public class TDLib.BusinessGreetingMessageSettings : Error {

    /**
     * Unique quick reply shortcut identifier for the greeting messages
     */
    public int32 shortcut_id { get; construct set; }

    /**
     * Chosen recipients of the greeting messages
     */
    public BusinessRecipients recipients { get; construct set; }

    /**
     * The number of days after which a chat will be considered as inactive;
     * currently, must be on of 7, 14, 21, or 28
     */
    public int32 inactivity_days { get; construct set; }

    public BusinessGreetingMessageSettings (
        int32 shortcut_id,
        BusinessRecipients recipients,
        int32 inactivity_days
    ) {
        Object (
            shortcut_id: shortcut_id,
            recipients: recipients,
            inactivity_days: inactivity_days,
            tdlib_type: "businessGreetingMessageSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
