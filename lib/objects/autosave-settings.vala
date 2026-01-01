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
 * Describes autosave settings
 */
public class TDLib.AutosaveSettings : Error {

    /**
     * Default autosave settings for private chats
     */
    public ScopeAutosaveSettings private_chat_settings { get; construct set; }

    /**
     * Default autosave settings for basic group and supergroup chats
     */
    public ScopeAutosaveSettings group_settings { get; construct set; }

    /**
     * Default autosave settings for channel chats
     */
    public ScopeAutosaveSettings channel_settings { get; construct set; }

    /**
     * Autosave settings for specific chats
     */
    public Gee.ArrayList<AutosaveSettingsException?> exceptions { get; construct set; default = new Gee.ArrayList<AutosaveSettingsException?> (); }

    public AutosaveSettings (
        ScopeAutosaveSettings private_chat_settings,
        ScopeAutosaveSettings group_settings,
        ScopeAutosaveSettings channel_settings,
        Gee.ArrayList<AutosaveSettingsException?> exceptions
    ) {
        Object (
            private_chat_settings: private_chat_settings,
            group_settings: group_settings,
            channel_settings: channel_settings,
            exceptions: exceptions,
            tdlib_type: "autosaveSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
