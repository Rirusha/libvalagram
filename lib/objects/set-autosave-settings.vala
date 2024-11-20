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
 * Sets autosave settings for the given scope. The method is guaranteed
 * to work only after at least one call to getAutosaveSettings
 */
internal class TDLib.SetAutosaveSettings : TDObject {

    /**
     * Autosave settings scope
     */
    public AutosaveSettingsScope scope { get; construct set; }

    /**
     * New autosave settings for the scope; pass null to set autosave
     * settings to default
     */
    public ScopeAutosaveSettings settings { get; construct set; }

    public SetAutosaveSettings (
        AutosaveSettingsScope scope,
        ScopeAutosaveSettings settings
    ) {
        Object (
            scope: scope,
            settings: settings,
            tdlib_type: "setAutosaveSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
