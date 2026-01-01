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
 * Sends data received from a keyboardButtonTypeWebApp Web App to a bot
 */
public class TDLib.SendWebAppData : TDObject {

    /**
     * Identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Text of the keyboardButtonTypeWebApp button, which opened the Web App
     */
    public string button_text { get; construct set; }

    /**
     * The data
     */
    public string data { get; construct set; }

    public SendWebAppData (
        int64 bot_user_id,
        string button_text,
        string data
    ) {
        Object (
            bot_user_id: bot_user_id,
            button_text: button_text,
            data: data,
            tdlib_type: "sendWebAppData",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
