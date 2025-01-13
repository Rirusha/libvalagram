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
 * Contains information about a tg: deep link
 */
public class TDLib.DeepLinkInfo : Error {

    /**
     * Text to be shown to the user
     */
    public FormattedText text { get; construct set; }

    /**
     * True, if the user must be asked to update the application
     */
    public bool need_update_application { get; construct set; }

    public DeepLinkInfo (
        FormattedText text,
        bool need_update_application
    ) {
        Object (
            text: text,
            need_update_application: need_update_application,
            tdlib_type: "deepLinkInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
