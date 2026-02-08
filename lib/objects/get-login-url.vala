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
 * Returns an HTTP URL which can be used to automatically authorize the
 * user on a website after clicking an inline button of type
 * inlineKeyboardButtonTypeLoginUrl.
 * Use the method {@link Client.get_login_url_info} to find whether a
 * prior user confirmation is needed. If an error is returned, then the
 * button must be handled as an ordinary URL button
 */
public class TDLib.GetLoginUrl : TDObject {

    /**
     * Chat identifier of the message with the button
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier of the message with the button
     */
    public int64 message_id { get; construct set; }

    /**
     * Button identifier
     */
    public int64 button_id { get; construct set; }

    /**
     * Pass true to allow the bot to send messages to the current user. Phone
     * number access can't be requested using the button
     */
    public bool allow_write_access { get; construct set; }

    public GetLoginUrl (
        int64 chat_id,
        int64 message_id,
        int64 button_id,
        bool allow_write_access
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            button_id: button_id,
            allow_write_access: allow_write_access,
            tdlib_type: "getLoginUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
