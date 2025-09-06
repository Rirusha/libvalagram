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
 * Creates a collection from gifts on the current user's or a channel's
 * profile page; requires can_post_messages administrator right in the
 * channel chat.
 * An owner can have up to getOption("gift_collection_count_max") gift
 * collections. The new collection will be added to the end of the gift
 * collection list of the owner. Returns the created collection
 */
public class TDLib.CreateGiftCollection : TDObject {

    /**
     * Identifier of the user or the channel chat that received the gifts
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Name of the collection; 1-12 characters
     */
    public string name { get; construct set; }

    /**
     * Identifier of the gifts to add to the collection;
     * 0-getOption("gift_collection_gift_count_max") identifiers
     */
    public Gee.ArrayList<string?> received_gift_ids { get; construct set; default = new Gee.ArrayList<string?> (); }

    public CreateGiftCollection (
        MessageSender owner_id,
        string name,
        Gee.ArrayList<string?> received_gift_ids
    ) {
        Object (
            owner_id: owner_id,
            name: name,
            received_gift_ids: received_gift_ids,
            tdlib_type: "createGiftCollection",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
