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
 * Changes the list of pinned gifts on the current user's or the
 * channel's profile page; requires can_post_messages administrator right
 * in the channel chat
 */
public class TDLib.SetPinnedGifts : TDObject {

    /**
     * Identifier of the user or the channel chat that received the gifts
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * New list of pinned gifts. All gifts must be upgraded and saved on the
     * profile page first. There can be up to
     * getOption("pinned_gift_count_max") pinned gifts
     */
    public Gee.ArrayList<string?> received_gift_ids { get; construct set; default = new Gee.ArrayList<string?> (); }

    public SetPinnedGifts (
        MessageSender owner_id,
        Gee.ArrayList<string?> received_gift_ids
    ) {
        Object (
            owner_id: owner_id,
            received_gift_ids: received_gift_ids,
            tdlib_type: "setPinnedGifts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
