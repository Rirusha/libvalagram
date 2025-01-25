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
 * Sends a gift to another user or channel chat. May return an error with
 * a message "STARGIFT_USAGE_LIMITED" if the gift was sold out
 */
public class TDLib.SendGift : TDObject {

    /**
     * Identifier of the gift to send
     */
    public int64 gift_id { get; construct set; }

    /**
     * Identifier of the user or the channel chat that will receive the gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Text to show along with the gift; 0-getOption("gift_text_length_max")
     * characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and
     * CustomEmoji entities are allowed
     */
    public FormattedText text { get; construct set; }

    /**
     * Pass true to show gift text and sender only to the gift receiver;
     * otherwise, everyone will be able to see them
     */
    public bool is_private { get; construct set; }

    /**
     * Pass true to additionally pay for the gift upgrade and allow the
     * receiver to upgrade it for free
     */
    public bool pay_for_upgrade { get; construct set; }

    public SendGift (
        int64 gift_id,
        MessageSender owner_id,
        FormattedText text,
        bool is_private,
        bool pay_for_upgrade
    ) {
        Object (
            gift_id: gift_id,
            owner_id: owner_id,
            text: text,
            is_private: is_private,
            pay_for_upgrade: pay_for_upgrade,
            tdlib_type: "sendGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
