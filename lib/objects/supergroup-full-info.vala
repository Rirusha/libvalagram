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
 * Contains full information about a supergroup or channel
 */
public class TDLib.SupergroupFullInfo : Error {

    /**
     * Chat photo; may be null if empty or unknown. If non-null, then it is
     * the same photo as in chat.photo
     */
    public ChatPhoto? photo { get; construct set; }

    /**
     * Supergroup or channel description
     */
    public string description { get; construct set; }

    /**
     * Number of members in the supergroup or channel; 0 if unknown
     */
    public int32 member_count { get; construct set; }

    /**
     * Number of privileged users in the supergroup or channel; 0 if unknown
     */
    public int32 administrator_count { get; construct set; }

    /**
     * Number of restricted users in the supergroup; 0 if unknown
     */
    public int32 restricted_count { get; construct set; }

    /**
     * Number of users banned from chat; 0 if unknown
     */
    public int32 banned_count { get; construct set; }

    /**
     * Chat identifier of a discussion group for the channel, or a channel,
     * for which the supergroup is the designated discussion group; 0 if none
     * or unknown
     */
    public int64 linked_chat_id { get; construct set; }

    /**
     * Delay between consecutive sent messages for non-administrator
     * supergroup members, in seconds
     */
    public int32 slow_mode_delay { get; construct set; }

    /**
     * Time left before next message can be sent in the supergroup, in
     * seconds. An updateSupergroupFullInfo update is not triggered when
     * value of this field changes, but both new and old values are non-zero
     */
    public double slow_mode_delay_expires_in { get; construct set; }

    /**
     * True, if paid reaction can be enabled in the channel chat; for
     * channels only
     */
    public bool can_enable_paid_reaction { get; construct set; }

    /**
     * True, if members of the chat can be retrieved via
     * {@link Client.get_supergroup_members} or
     * {@link Client.search_chat_members}
     */
    public bool can_get_members { get; construct set; }

    /**
     * True, if non-administrators can receive only administrators and bots
     * using {@link Client.get_supergroup_members} or
     * {@link Client.search_chat_members}
     */
    public bool has_hidden_members { get; construct set; }

    /**
     * True, if non-administrators and non-bots can be hidden in responses to
     * {@link Client.get_supergroup_members} and
     * {@link Client.search_chat_members} for non-administrators
     */
    public bool can_hide_members { get; construct set; }

    /**
     * True, if the supergroup sticker set can be changed
     */
    public bool can_set_sticker_set { get; construct set; }

    /**
     * True, if the supergroup location can be changed
     */
    public bool can_set_location { get; construct set; }

    /**
     * True, if the supergroup or channel statistics are available
     */
    public bool can_get_statistics { get; construct set; }

    /**
     * True, if the supergroup or channel revenue statistics are available
     */
    public bool can_get_revenue_statistics { get; construct set; }

    /**
     * True, if the supergroup or channel Telegram Star revenue statistics
     * are available
     */
    public bool can_get_star_revenue_statistics { get; construct set; }

    /**
     * True, if aggressive anti-spam checks can be enabled or disabled in the
     * supergroup
     */
    public bool can_toggle_aggressive_anti_spam { get; construct set; }

    /**
     * True, if new chat members will have access to old messages. In public,
     * discussion, of forum groups and all channels, old messages are always
     * available,
     * so this option affects only private non-forum supergroups without a
     * linked chat. The value of this field is only available to chat
     * administrators
     */
    public bool is_all_history_available { get; construct set; }

    /**
     * True, if the chat can have sponsored messages. The value of this field
     * is only available to the owner of the chat
     */
    public bool can_have_sponsored_messages { get; construct set; }

    /**
     * True, if aggressive anti-spam checks are enabled in the supergroup.
     * The value of this field is only available to chat administrators
     */
    public bool has_aggressive_anti_spam_enabled { get; construct set; }

    /**
     * True, if paid media can be sent and forwarded to the channel chat; for
     * channels only
     */
    public bool has_paid_media_allowed { get; construct set; }

    /**
     * True, if the supergroup or channel has pinned stories
     */
    public bool has_pinned_stories { get; construct set; }

    /**
     * Number of times the current user boosted the supergroup or channel
     */
    public int32 my_boost_count { get; construct set; }

    /**
     * Number of times the supergroup must be boosted by a user to ignore
     * slow mode and chat permission restrictions; 0 if unspecified
     */
    public int32 unrestrict_boost_count { get; construct set; }

    /**
     * Identifier of the supergroup sticker set that must be shown before
     * user sticker sets; 0 if none
     */
    public int64 sticker_set_id { get; construct set; }

    /**
     * Identifier of the custom emoji sticker set that can be used in the
     * supergroup without Telegram Premium subscription; 0 if none
     */
    public int64 custom_emoji_sticker_set_id { get; construct set; }

    /**
     * Location to which the supergroup is connected; may be null if none
     */
    public ChatLocation? location { get; construct set; }

    /**
     * Primary invite link for the chat; may be null. For chat administrators
     * with can_invite_users right only
     */
    public ChatInviteLink? invite_link { get; construct set; }

    /**
     * List of commands of bots in the group
     */
    public Gee.ArrayList<BotCommands?> bot_commands { get; construct set; default = new Gee.ArrayList<BotCommands?> (); }

    /**
     * Information about verification status of the supergroup or the channel
     * provided by a bot; may be null if none or unknown
     */
    public BotVerification? bot_verification { get; construct set; }

    /**
     * Identifier of the basic group from which supergroup was upgraded; 0 if
     * none
     */
    public int64 upgraded_from_basic_group_id { get; construct set; }

    /**
     * Identifier of the last message in the basic group from which
     * supergroup was upgraded; 0 if none
     */
    public int64 upgraded_from_max_message_id { get; construct set; }

    public SupergroupFullInfo (
        ChatPhoto? photo,
        string description,
        int32 member_count,
        int32 administrator_count,
        int32 restricted_count,
        int32 banned_count,
        int64 linked_chat_id,
        int32 slow_mode_delay,
        double slow_mode_delay_expires_in,
        bool can_enable_paid_reaction,
        bool can_get_members,
        bool has_hidden_members,
        bool can_hide_members,
        bool can_set_sticker_set,
        bool can_set_location,
        bool can_get_statistics,
        bool can_get_revenue_statistics,
        bool can_get_star_revenue_statistics,
        bool can_toggle_aggressive_anti_spam,
        bool is_all_history_available,
        bool can_have_sponsored_messages,
        bool has_aggressive_anti_spam_enabled,
        bool has_paid_media_allowed,
        bool has_pinned_stories,
        int32 my_boost_count,
        int32 unrestrict_boost_count,
        int64 sticker_set_id,
        int64 custom_emoji_sticker_set_id,
        ChatLocation? location,
        ChatInviteLink? invite_link,
        Gee.ArrayList<BotCommands?> bot_commands,
        BotVerification? bot_verification,
        int64 upgraded_from_basic_group_id,
        int64 upgraded_from_max_message_id
    ) {
        Object (
            photo: photo,
            description: description,
            member_count: member_count,
            administrator_count: administrator_count,
            restricted_count: restricted_count,
            banned_count: banned_count,
            linked_chat_id: linked_chat_id,
            slow_mode_delay: slow_mode_delay,
            slow_mode_delay_expires_in: slow_mode_delay_expires_in,
            can_enable_paid_reaction: can_enable_paid_reaction,
            can_get_members: can_get_members,
            has_hidden_members: has_hidden_members,
            can_hide_members: can_hide_members,
            can_set_sticker_set: can_set_sticker_set,
            can_set_location: can_set_location,
            can_get_statistics: can_get_statistics,
            can_get_revenue_statistics: can_get_revenue_statistics,
            can_get_star_revenue_statistics: can_get_star_revenue_statistics,
            can_toggle_aggressive_anti_spam: can_toggle_aggressive_anti_spam,
            is_all_history_available: is_all_history_available,
            can_have_sponsored_messages: can_have_sponsored_messages,
            has_aggressive_anti_spam_enabled: has_aggressive_anti_spam_enabled,
            has_paid_media_allowed: has_paid_media_allowed,
            has_pinned_stories: has_pinned_stories,
            my_boost_count: my_boost_count,
            unrestrict_boost_count: unrestrict_boost_count,
            sticker_set_id: sticker_set_id,
            custom_emoji_sticker_set_id: custom_emoji_sticker_set_id,
            location: location,
            invite_link: invite_link,
            bot_commands: bot_commands,
            bot_verification: bot_verification,
            upgraded_from_basic_group_id: upgraded_from_basic_group_id,
            upgraded_from_max_message_id: upgraded_from_max_message_id,
            tdlib_type: "supergroupFullInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
