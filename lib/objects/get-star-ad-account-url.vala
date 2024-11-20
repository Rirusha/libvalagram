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
 * Returns a URL for a Telegram Ad platform account that can be used to
 * set up advertisements for the chat paid in the owned Telegram Stars
 */
internal class TDLib.GetStarAdAccountUrl : TDObject {

    /**
     * Identifier of the owner of the Telegram Stars; can be identifier of an
     * owned bot, or identifier of an owned channel chat
     */
    public MessageSender owner_id { get; construct set; }

    public GetStarAdAccountUrl (
        MessageSender owner_id
    ) {
        Object (
            owner_id: owner_id,
            tdlib_type: "getStarAdAccountUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
