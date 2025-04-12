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
 * Describes rights of a business bot
 */
public class TDLib.BusinessBotRights : Error {

    /**
     * True, if the bot can send and edit messages in the private chats that
     * had incoming messages in the last 24 hours
     */
    public bool can_reply { get; construct set; }

    /**
     * True, if the bot can mark incoming private messages as read
     */
    public bool can_read_messages { get; construct set; }

    /**
     * True, if the bot can delete sent messages
     */
    public bool can_delete_sent_messages { get; construct set; }

    /**
     * True, if the bot can delete any message
     */
    public bool can_delete_all_messages { get; construct set; }

    /**
     * True, if the bot can edit name of the business account
     */
    public bool can_edit_name { get; construct set; }

    /**
     * True, if the bot can edit bio of the business account
     */
    public bool can_edit_bio { get; construct set; }

    /**
     * True, if the bot can edit profile photo of the business account
     */
    public bool can_edit_profile_photo { get; construct set; }

    /**
     * True, if the bot can edit username of the business account
     */
    public bool can_edit_username { get; construct set; }

    /**
     * True, if the bot can view gifts and amount of Telegram Stars owned by
     * the business account
     */
    public bool can_view_gifts_and_stars { get; construct set; }

    /**
     * True, if the bot can sell regular gifts received by the business
     * account
     */
    public bool can_sell_gifts { get; construct set; }

    /**
     * True, if the bot can change gift receiving settings of the business
     * account
     */
    public bool can_change_gift_settings { get; construct set; }

    /**
     * True, if the bot can transfer and upgrade gifts received by the
     * business account
     */
    public bool can_transfer_and_upgrade_gifts { get; construct set; }

    /**
     * True, if the bot can transfer Telegram Stars received by the business
     * account to account of the bot, or use them to upgrade and transfer
     * gifts
     */
    public bool can_transfer_stars { get; construct set; }

    /**
     * True, if the bot can send, edit and delete stories
     */
    public bool can_manage_stories { get; construct set; }

    public BusinessBotRights (
        bool can_reply,
        bool can_read_messages,
        bool can_delete_sent_messages,
        bool can_delete_all_messages,
        bool can_edit_name,
        bool can_edit_bio,
        bool can_edit_profile_photo,
        bool can_edit_username,
        bool can_view_gifts_and_stars,
        bool can_sell_gifts,
        bool can_change_gift_settings,
        bool can_transfer_and_upgrade_gifts,
        bool can_transfer_stars,
        bool can_manage_stories
    ) {
        Object (
            can_reply: can_reply,
            can_read_messages: can_read_messages,
            can_delete_sent_messages: can_delete_sent_messages,
            can_delete_all_messages: can_delete_all_messages,
            can_edit_name: can_edit_name,
            can_edit_bio: can_edit_bio,
            can_edit_profile_photo: can_edit_profile_photo,
            can_edit_username: can_edit_username,
            can_view_gifts_and_stars: can_view_gifts_and_stars,
            can_sell_gifts: can_sell_gifts,
            can_change_gift_settings: can_change_gift_settings,
            can_transfer_and_upgrade_gifts: can_transfer_and_upgrade_gifts,
            can_transfer_stars: can_transfer_stars,
            can_manage_stories: can_manage_stories,
            tdlib_type: "businessBotRights",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
