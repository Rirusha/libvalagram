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
 * Adds gifts to the beginning of a previously created collection. If the
 * collection is owned by a channel chat, then requires can_post_messages
 * administrator right in the channel chat. Returns the changed
 * collection
 */
public class TDLib.AddGiftCollectionGifts : TDObject {

    /**
     * Identifier of the user or the channel chat that owns the collection
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Identifier of the gift collection
     */
    public int32 collection_id { get; construct set; }

    /**
     * Identifier of the gifts to add to the collection;
     * 1-getOption("gift_collection_gift_count_max") identifiers.
     * If after addition the collection has more than
     * getOption("gift_collection_gift_count_max") gifts, then the last one
     * are removed from the collection
     */
    public Gee.ArrayList<string?> received_gift_ids { get; construct set; default = new Gee.ArrayList<string?> (); }

    public AddGiftCollectionGifts (
        MessageSender owner_id,
        int32 collection_id,
        Gee.ArrayList<string?> received_gift_ids
    ) {
        Object (
            owner_id: owner_id,
            collection_id: collection_id,
            received_gift_ids: received_gift_ids,
            tdlib_type: "addGiftCollectionGifts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
