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
 * Options to be used when a message content is copied without reference
 * to the original sender. Service messages, messages with
 * messageInvoice, messagePaidMedia, messageGiveaway, or
 * messageGiveawayWinners content can't be copied
 */
public class TDLib.MessageCopyOptions : Error {

    /**
     * True, if content of the message needs to be copied without reference
     * to the original sender. Always true if the message is forwarded to a
     * secret chat or is local.
     * Use messageProperties.can_be_copied and
     * messageProperties.can_be_copied_to_secret_chat to check whether the
     * message is suitable
     */
    public bool send_copy { get; construct set; }

    /**
     * True, if media caption of the message copy needs to be replaced.
     * Ignored if send_copy is false
     */
    public bool replace_caption { get; construct set; }

    /**
     * New message caption; pass null to copy message without caption.
     * Ignored if replace_caption is false
     */
    public FormattedText new_caption { get; construct set; }

    /**
     * True, if new caption must be shown above the media; otherwise, new
     * caption must be shown below the media; not supported in secret chats.
     * Ignored if replace_caption is false
     */
    public bool new_show_caption_above_media { get; construct set; }

    public MessageCopyOptions (
        bool send_copy,
        bool replace_caption,
        FormattedText new_caption,
        bool new_show_caption_above_media
    ) {
        Object (
            send_copy: send_copy,
            replace_caption: replace_caption,
            new_caption: new_caption,
            new_show_caption_above_media: new_show_caption_above_media,
            tdlib_type: "messageCopyOptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
