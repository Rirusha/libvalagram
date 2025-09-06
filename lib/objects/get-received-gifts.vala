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
 * Returns gifts received by the given user or chat
 */
public class TDLib.GetReceivedGifts : TDObject {

    /**
     * Unique identifier of business connection on behalf of which to send
     * the request; for bots only
     */
    public string business_connection_id { get; construct set; }

    /**
     * Identifier of the gift receiver
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Pass collection identifier to get gifts only from the specified
     * collection; pass 0 to get gifts regardless of collections
     */
    public int32 collection_id { get; construct set; }

    /**
     * Pass true to exclude gifts that aren't saved to the chat's profile
     * page. Always true for gifts received by other users and channel chats
     * without can_post_messages administrator right
     */
    public bool exclude_unsaved { get; construct set; }

    /**
     * Pass true to exclude gifts that are saved to the chat's profile page.
     * Always false for gifts received by other users and channel chats
     * without can_post_messages administrator right
     */
    public bool exclude_saved { get; construct set; }

    /**
     * Pass true to exclude gifts that can be purchased unlimited number of
     * times
     */
    public bool exclude_unlimited { get; construct set; }

    /**
     * Pass true to exclude gifts that can be purchased limited number of
     * times
     */
    public bool exclude_limited { get; construct set; }

    /**
     * Pass true to exclude upgraded gifts
     */
    public bool exclude_upgraded { get; construct set; }

    /**
     * Pass true to sort results by gift price instead of send date
     */
    public bool sort_by_price { get; construct set; }

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of gifts to be returned; must be positive and can't
     * be greater than 100. For optimal performance, the number of returned
     * objects is chosen by TDLib and can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    public GetReceivedGifts (
        string business_connection_id,
        MessageSender owner_id,
        int32 collection_id,
        bool exclude_unsaved,
        bool exclude_saved,
        bool exclude_unlimited,
        bool exclude_limited,
        bool exclude_upgraded,
        bool sort_by_price,
        string offset,
        int32 limit
    ) {
        Object (
            business_connection_id: business_connection_id,
            owner_id: owner_id,
            collection_id: collection_id,
            exclude_unsaved: exclude_unsaved,
            exclude_saved: exclude_saved,
            exclude_unlimited: exclude_unlimited,
            exclude_limited: exclude_limited,
            exclude_upgraded: exclude_upgraded,
            sort_by_price: sort_by_price,
            offset: offset,
            limit: limit,
            tdlib_type: "getReceivedGifts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
