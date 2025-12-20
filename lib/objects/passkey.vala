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
 * Describes a passkey
 */
public class TDLib.Passkey : Error {

    /**
     * Unique identifier of the passkey
     */
    public string id_ { get; construct set; }

    /**
     * Name of the passkey
     */
    public string name { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the passkey was added
     */
    public int32 addition_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the passkey was used last time; 0
     * if never
     */
    public int32 last_usage_date { get; construct set; }

    /**
     * Identifier of the custom emoji that is used as the icon of the
     * software, which created the passkey; 0 if unknown
     */
    public int64 software_icon_custom_emoji_id { get; construct set; }

    public Passkey (
        string id_,
        string name,
        int32 addition_date,
        int32 last_usage_date,
        int64 software_icon_custom_emoji_id
    ) {
        Object (
            id_: id_,
            name: name,
            addition_date: addition_date,
            last_usage_date: last_usage_date,
            software_icon_custom_emoji_id: software_icon_custom_emoji_id,
            tdlib_type: "passkey",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
