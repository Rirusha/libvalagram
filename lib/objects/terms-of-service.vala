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
 * Contains Telegram terms of service
 */
public class TDLib.TermsOfService : Error {

    /**
     * Text of the terms of service
     */
    public FormattedText text { get; construct set; }

    /**
     * The minimum age of a user to be able to accept the terms; 0 if age
     * isn't restricted
     */
    public int32 min_user_age { get; construct set; }

    /**
     * True, if a blocking popup with terms of service must be shown to the
     * user
     */
    public bool show_popup { get; construct set; }

    public TermsOfService (
        FormattedText text,
        int32 min_user_age,
        bool show_popup
    ) {
        Object (
            text: text,
            min_user_age: min_user_age,
            show_popup: show_popup,
            tdlib_type: "termsOfService",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
