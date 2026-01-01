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
 * Contains information about a suggested post. If the post can be
 * approved or declined, then changes to the post can be also suggested.
 * Use {@link Client.send_message} with reply to the message
 * and suggested post information to suggest message changes. Use
 * {@link Client.add_offer} to suggest price or time changes
 */
public class TDLib.SuggestedPostInfo : Error {

    /**
     * Price of the suggested post; may be null if the post is non-paid
     */
    public SuggestedPostPrice? price { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the post is expected to be
     * published; 0 if the specific date isn't set yet
     */
    public int32 send_date { get; construct set; }

    /**
     * State of the post
     */
    public SuggestedPostState state { get; construct set; }

    /**
     * True, if the suggested post can be approved by the current user using
     * {@link Client.approve_suggested_post} updates aren't sent when value
     * of this field changes
     */
    public bool can_be_approved { get; construct set; }

    /**
     * True, if the suggested post can be declined by the current user using
     * {@link Client.decline_suggested_post} updates aren't sent when value
     * of this field changes
     */
    public bool can_be_declined { get; construct set; }

    public SuggestedPostInfo (
        SuggestedPostPrice? price,
        int32 send_date,
        SuggestedPostState state,
        bool can_be_approved,
        bool can_be_declined
    ) {
        Object (
            price: price,
            send_date: send_date,
            state: state,
            can_be_approved: can_be_approved,
            can_be_declined: can_be_declined,
            tdlib_type: "suggestedPostInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
