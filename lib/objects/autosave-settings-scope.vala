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
 * Describes scope of autosave settings
 */
public abstract class TDLib.AutosaveSettingsScope : Error {}

/**
 * Autosave settings applied to all private chats without chat-specific
 * settings
 */
public class TDLib.AutosaveSettingsScopePrivateChats : AutosaveSettingsScope {

    public AutosaveSettingsScopePrivateChats () {
        Object (
            tdlib_type: "autosaveSettingsScopePrivateChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Autosave settings applied to all basic group and supergroup chats
 * without chat-specific settings
 */
public class TDLib.AutosaveSettingsScopeGroupChats : AutosaveSettingsScope {

    public AutosaveSettingsScopeGroupChats () {
        Object (
            tdlib_type: "autosaveSettingsScopeGroupChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Autosave settings applied to all channel chats without chat-specific
 * settings
 */
public class TDLib.AutosaveSettingsScopeChannelChats : AutosaveSettingsScope {

    public AutosaveSettingsScopeChannelChats () {
        Object (
            tdlib_type: "autosaveSettingsScopeChannelChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Autosave settings applied to a chat
 */
public class TDLib.AutosaveSettingsScopeChat : AutosaveSettingsScope {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    public AutosaveSettingsScopeChat (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "autosaveSettingsScopeChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
