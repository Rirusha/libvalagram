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
 * Describes a chat background
 */
public class TDLib.Background : Error {

    /**
     * Unique background identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * True, if this is one of default backgrounds
     */
    public bool is_default { get; construct set; }

    /**
     * True, if the background is dark and is recommended to be used with
     * dark theme
     */
    public bool is_dark { get; construct set; }

    /**
     * Unique background name
     */
    public string name { get; construct set; }

    /**
     * Document with the background; may be null. Null only for filled and
     * chat theme backgrounds
     */
    public Document? document { get; construct set; }

    /**
     * Type of the background
     */
    public BackgroundType type_ { get; construct set; }

    public Background (
        int64 id_,
        bool is_default,
        bool is_dark,
        string name,
        Document? document,
        BackgroundType type_
    ) {
        Object (
            id_: id_,
            is_default: is_default,
            is_dark: is_dark,
            name: name,
            document: document,
            type_: type_,
            tdlib_type: "background",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
