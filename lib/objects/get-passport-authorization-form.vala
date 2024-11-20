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
 * Returns a Telegram Passport authorization form for sharing data with a
 * service
 */
internal class TDLib.GetPassportAuthorizationForm : TDObject {

    /**
     * User identifier of the service's bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Telegram Passport element types requested by the service
     */
    public string scope { get; construct set; }

    /**
     * Service's public key
     */
    public string public_key { get; construct set; }

    /**
     * Unique request identifier provided by the service
     */
    public string nonce { get; construct set; }

    public GetPassportAuthorizationForm (
        int64 bot_user_id,
        string scope,
        string public_key,
        string nonce
    ) {
        Object (
            bot_user_id: bot_user_id,
            scope: scope,
            public_key: public_key,
            nonce: nonce,
            tdlib_type: "getPassportAuthorizationForm",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
