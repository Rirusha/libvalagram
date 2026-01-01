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
 * Sends a custom request from a Web App
 */
public class TDLib.SendWebAppCustomRequest : TDObject {

    /**
     * Identifier of the bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * The method name
     */
    public string method { get; construct set; }

    /**
     * JSON-serialized method parameters
     */
    public string parameters { get; construct set; }

    public SendWebAppCustomRequest (
        int64 bot_user_id,
        string method,
        string parameters
    ) {
        Object (
            bot_user_id: bot_user_id,
            method: method,
            parameters: parameters,
            tdlib_type: "sendWebAppCustomRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
