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
 * Changes order of gifts in a collection. If the collection is owned by
 * a channel chat, then requires can_post_messages administrator right in
 * the channel chat. Returns the changed collection
 */
public class TDLib.ReorderGiftCollectionGifts : TDObject {

    /**
     * Identifier of the user or the channel chat that owns the collection
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Identifier of the gift collection
     */
    public int32 collection_id { get; construct set; }

    /**
     * Identifier of the gifts to move to the beginning of the collection.
     * All other gifts are placed in the current order after the specified
     * gifts
     */
    public Gee.ArrayList<string?> received_gift_ids { get; construct set; default = new Gee.ArrayList<string?> (); }

    public ReorderGiftCollectionGifts (
        MessageSender owner_id,
        int32 collection_id,
        Gee.ArrayList<string?> received_gift_ids
    ) {
        Object (
            owner_id: owner_id,
            collection_id: collection_id,
            received_gift_ids: received_gift_ids,
            tdlib_type: "reorderGiftCollectionGifts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
