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
 * Represents a bot, which can be added to attachment or side menu
 */
public class TDLib.AttachmentMenuBot : Error {

    /**
     * User identifier of the bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * True, if the bot supports opening from attachment menu in the chat
     * with the bot
     */
    public bool supports_self_chat { get; construct set; }

    /**
     * True, if the bot supports opening from attachment menu in private
     * chats with ordinary users
     */
    public bool supports_user_chats { get; construct set; }

    /**
     * True, if the bot supports opening from attachment menu in private
     * chats with other bots
     */
    public bool supports_bot_chats { get; construct set; }

    /**
     * True, if the bot supports opening from attachment menu in basic group
     * and supergroup chats
     */
    public bool supports_group_chats { get; construct set; }

    /**
     * True, if the bot supports opening from attachment menu in channel
     * chats
     */
    public bool supports_channel_chats { get; construct set; }

    /**
     * True, if the user must be asked for the permission to send messages to
     * the bot
     */
    public bool request_write_access { get; construct set; }

    /**
     * True, if the bot was explicitly added by the user. If the bot isn't
     * added, then on the first bot launch toggleBotIsAddedToAttachmentMenu
     * must be called and the bot must be added or removed
     */
    public bool is_added { get; construct set; }

    /**
     * True, if the bot must be shown in the attachment menu
     */
    public bool show_in_attachment_menu { get; construct set; }

    /**
     * True, if the bot must be shown in the side menu
     */
    public bool show_in_side_menu { get; construct set; }

    /**
     * True, if a disclaimer, why the bot is shown in the side menu, is
     * needed
     */
    public bool show_disclaimer_in_side_menu { get; construct set; }

    /**
     * Name for the bot in attachment menu
     */
    public string name { get; construct set; }

    /**
     * Color to highlight selected name of the bot if appropriate; may be
     * null
     */
    public AttachmentMenuBotColor? name_color { get; construct set; }

    /**
     * Default icon for the bot in SVG format; may be null
     */
    public File? default_icon { get; construct set; }

    /**
     * Icon for the bot in SVG format for the official iOS app; may be null
     */
    public File? ios_static_icon { get; construct set; }

    /**
     * Icon for the bot in TGS format for the official iOS app; may be null
     */
    public File? ios_animated_icon { get; construct set; }

    /**
     * Icon for the bot in PNG format for the official iOS app side menu; may
     * be null
     */
    public File? ios_side_menu_icon { get; construct set; }

    /**
     * Icon for the bot in TGS format for the official Android app; may be
     * null
     */
    public File? android_icon { get; construct set; }

    /**
     * Icon for the bot in SVG format for the official Android app side menu;
     * may be null
     */
    public File? android_side_menu_icon { get; construct set; }

    /**
     * Icon for the bot in TGS format for the official native macOS app; may
     * be null
     */
    public File? macos_icon { get; construct set; }

    /**
     * Icon for the bot in PNG format for the official macOS app side menu;
     * may be null
     */
    public File? macos_side_menu_icon { get; construct set; }

    /**
     * Color to highlight selected icon of the bot if appropriate; may be
     * null
     */
    public AttachmentMenuBotColor? icon_color { get; construct set; }

    /**
     * Default placeholder for opened Web Apps in SVG format; may be null
     */
    public File? web_app_placeholder { get; construct set; }

    public AttachmentMenuBot (
        int64 bot_user_id,
        bool supports_self_chat,
        bool supports_user_chats,
        bool supports_bot_chats,
        bool supports_group_chats,
        bool supports_channel_chats,
        bool request_write_access,
        bool is_added,
        bool show_in_attachment_menu,
        bool show_in_side_menu,
        bool show_disclaimer_in_side_menu,
        string name,
        AttachmentMenuBotColor? name_color,
        File? default_icon,
        File? ios_static_icon,
        File? ios_animated_icon,
        File? ios_side_menu_icon,
        File? android_icon,
        File? android_side_menu_icon,
        File? macos_icon,
        File? macos_side_menu_icon,
        AttachmentMenuBotColor? icon_color,
        File? web_app_placeholder
    ) {
        Object (
            bot_user_id: bot_user_id,
            supports_self_chat: supports_self_chat,
            supports_user_chats: supports_user_chats,
            supports_bot_chats: supports_bot_chats,
            supports_group_chats: supports_group_chats,
            supports_channel_chats: supports_channel_chats,
            request_write_access: request_write_access,
            is_added: is_added,
            show_in_attachment_menu: show_in_attachment_menu,
            show_in_side_menu: show_in_side_menu,
            show_disclaimer_in_side_menu: show_disclaimer_in_side_menu,
            name: name,
            name_color: name_color,
            default_icon: default_icon,
            ios_static_icon: ios_static_icon,
            ios_animated_icon: ios_animated_icon,
            ios_side_menu_icon: ios_side_menu_icon,
            android_icon: android_icon,
            android_side_menu_icon: android_side_menu_icon,
            macos_icon: macos_icon,
            macos_side_menu_icon: macos_side_menu_icon,
            icon_color: icon_color,
            web_app_placeholder: web_app_placeholder,
            tdlib_type: "attachmentMenuBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
