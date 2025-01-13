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
 * Describes an option to report an entity to Telegram
 */
public class TDLib.ReportOption : Error {

    /**
     * Unique identifier of the option
     */
    public Bytes id_ { get; construct set; }

    /**
     * Text of the option
     */
    public string text { get; construct set; }

    public ReportOption (
        Bytes id_,
        string text
    ) {
        Object (
            id_: id_,
            text: text,
            tdlib_type: "reportOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
