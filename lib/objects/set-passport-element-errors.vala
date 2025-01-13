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
 * Informs the user that some of the elements in their Telegram Passport
 * contain errors; for bots only. The user will not be able to resend the
 * elements, until the errors are fixed
 */
internal class TDLib.SetPassportElementErrors : TDObject {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * The errors
     */
    public Gee.ArrayList<InputPassportElementError?> errors { get; construct set; default = new Gee.ArrayList<InputPassportElementError?> (); }

    public SetPassportElementErrors (
        int64 user_id,
        Gee.ArrayList<InputPassportElementError?> errors
    ) {
        Object (
            user_id: user_id,
            errors: errors,
            tdlib_type: "setPassportElementErrors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
