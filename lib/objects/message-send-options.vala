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
 * Options to be used when a message is sent
 */
public class TDLib.MessageSendOptions : Error {

    /**
     * Information about the suggested post; pass null if none. For messages
     * to channel direct messages chat only. Applicable only to
     * {@link Client.send_message} and {@link Client.add_offer}
     */
    public InputSuggestedPostInfo suggested_post_info { get; construct set; }

    /**
     * Pass true to disable notification for the message
     */
    public bool disable_notification { get; construct set; }

    /**
     * Pass true if the message is sent from the background
     */
    public bool from_background { get; construct set; }

    /**
     * Pass true if the content of the message must be protected from
     * forwarding and saving; for bots only
     */
    public bool protect_content { get; construct set; }

    /**
     * Pass true to allow the message to ignore regular broadcast limits for
     * a small fee; for bots only
     */
    public bool allow_paid_broadcast { get; construct set; }

    /**
     * The number of Telegram Stars the user agreed to pay to send the
     * messages
     */
    public int64 paid_message_star_count { get; construct set; }

    /**
     * Pass true if the user explicitly chosen a sticker or a custom emoji
     * from an installed sticker set; applicable only to
     * {@link Client.send_message} and {@link Client.send_message_album}
     */
    public bool update_order_of_installed_sticker_sets { get; construct set; }

    /**
     * Message scheduling state; pass null to send message immediately.
     * Messages sent to a secret chat, to a chat with paid messages, to a
     * channel direct messages chat,
     * live location messages and self-destructing messages can't be
     * scheduled
     */
    public MessageSchedulingState scheduling_state { get; construct set; }

    /**
     * Identifier of the effect to apply to the message; pass 0 if none;
     * applicable only to {@link Client.send_message}
     * {@link Client.send_message_album} in private chats and
     * {@link Client.forward_messages} with one message to private chats
     */
    public int64 effect_id { get; construct set; }

    /**
     * Non-persistent identifier, which will be returned back in
     * messageSendingStatePending object and can be used to match sent
     * messages and corresponding updateNewMessage updates
     */
    public int32 sending_id { get; construct set; }

    /**
     * Pass true to get a fake message instead of actually sending them
     */
    public bool only_preview { get; construct set; }

    public MessageSendOptions (
        InputSuggestedPostInfo suggested_post_info,
        bool disable_notification,
        bool from_background,
        bool protect_content,
        bool allow_paid_broadcast,
        int64 paid_message_star_count,
        bool update_order_of_installed_sticker_sets,
        MessageSchedulingState scheduling_state,
        int64 effect_id,
        int32 sending_id,
        bool only_preview
    ) {
        Object (
            suggested_post_info: suggested_post_info,
            disable_notification: disable_notification,
            from_background: from_background,
            protect_content: protect_content,
            allow_paid_broadcast: allow_paid_broadcast,
            paid_message_star_count: paid_message_star_count,
            update_order_of_installed_sticker_sets: update_order_of_installed_sticker_sets,
            scheduling_state: scheduling_state,
            effect_id: effect_id,
            sending_id: sending_id,
            only_preview: only_preview,
            tdlib_type: "messageSendOptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
