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
 * Returns information about a button of type
 * inlineKeyboardButtonTypeLoginUrl. The method needs to be called when
 * the user presses the button
 */
public class TDLib.GetLoginUrlInfo : TDObject {

    /**
     * Chat identifier of the message with the button
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier of the message with the button. The message must
     * not be scheduled
     */
    public int64 message_id { get; construct set; }

    /**
     * Button identifier
     */
    public int64 button_id { get; construct set; }

    public GetLoginUrlInfo (
        int64 chat_id,
        int64 message_id,
        int64 button_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            button_id: button_id,
            tdlib_type: "getLoginUrlInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
