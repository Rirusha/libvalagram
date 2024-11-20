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
 * Contains auto-download settings presets for the current user
 */
public class TDLib.AutoDownloadSettingsPresets : Error {

    /**
     * Preset with lowest settings; expected to be used by default when
     * roaming
     */
    public AutoDownloadSettings low { get; construct set; }

    /**
     * Preset with medium settings; expected to be used by default when using
     * mobile data
     */
    public AutoDownloadSettings medium { get; construct set; }

    /**
     * Preset with highest settings; expected to be used by default when
     * connected on Wi-Fi
     */
    public AutoDownloadSettings high { get; construct set; }

    public AutoDownloadSettingsPresets (
        AutoDownloadSettings low,
        AutoDownloadSettings medium,
        AutoDownloadSettings high
    ) {
        Object (
            low: low,
            medium: medium,
            high: high,
            tdlib_type: "autoDownloadSettingsPresets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
