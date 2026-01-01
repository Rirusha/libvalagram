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
 * Contains autosave settings for a chat, which overrides default
 * settings for the corresponding scope
 */
public class TDLib.AutosaveSettingsException : Error {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Autosave settings for the chat
     */
    public ScopeAutosaveSettings settings { get; construct set; }

    public AutosaveSettingsException (
        int64 chat_id,
        ScopeAutosaveSettings settings
    ) {
        Object (
            chat_id: chat_id,
            settings: settings,
            tdlib_type: "autosaveSettingsException",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
