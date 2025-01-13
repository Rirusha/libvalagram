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
 * Changes the default message auto-delete time for new chats
 */
public class TDLib.SetDefaultMessageAutoDeleteTime : TDObject {

    /**
     * New default message auto-delete time; must be from 0 up to 365 * 86400
     * and be divisible by 86400. If 0, then messages aren't deleted
     * automatically
     */
    public MessageAutoDeleteTime message_auto_delete_time { get; construct set; }

    public SetDefaultMessageAutoDeleteTime (
        MessageAutoDeleteTime message_auto_delete_time
    ) {
        Object (
            message_auto_delete_time: message_auto_delete_time,
            tdlib_type: "setDefaultMessageAutoDeleteTime",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
