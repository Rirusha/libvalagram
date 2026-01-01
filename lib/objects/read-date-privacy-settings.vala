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
 * Contains privacy settings for message read date in private chats. Read
 * dates are always shown to the users that can see online status of the
 * current user regardless of this setting
 */
public class TDLib.ReadDatePrivacySettings : Error {

    /**
     * True, if message read date is shown to other users in private chats.
     * If false and the current user isn't a Telegram Premium user, then they
     * will not be able to see other's message read date
     */
    public bool show_read_date { get; construct set; }

    public ReadDatePrivacySettings (
        bool show_read_date
    ) {
        Object (
            show_read_date: show_read_date,
            tdlib_type: "readDatePrivacySettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
