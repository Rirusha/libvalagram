/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Contains privacy settings for new chats with non-contacts
 */
public class TDLib.NewChatPrivacySettings : Error {

    /**
     * True, if non-contacts users are able to write first to the current
     * user. Telegram Premium subscribers are able to write first regardless
     * of this setting
     */
    public bool allow_new_chats_from_unknown_users { get; construct set; }

    public NewChatPrivacySettings (
        bool allow_new_chats_from_unknown_users
    ) {
        Object (
            allow_new_chats_from_unknown_users: allow_new_chats_from_unknown_users,
            tdlib_type: "newChatPrivacySettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
