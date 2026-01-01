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
 * Contains information about a bot
 */
public class TDLib.BotInfo : Error {

    /**
     * The text that is shown on the bot's profile page and is sent together
     * with the link when users share the bot
     */
    public string short_description { get; construct set; }

    /**
     * The text shown in the chat with the bot if the chat is empty
     */
    public string description { get; construct set; }

    /**
     * Photo shown in the chat with the bot if the chat is empty; may be null
     */
    public Photo? photo { get; construct set; }

    /**
     * Animation shown in the chat with the bot if the chat is empty; may be
     * null
     */
    public Animation? animation { get; construct set; }

    /**
     * Information about a button to show instead of the bot commands menu
     * button; may be null if ordinary bot commands menu must be shown
     */
    public BotMenuButton? menu_button { get; construct set; }

    /**
     * List of the bot commands
     */
    public Gee.ArrayList<BotCommand?> commands { get; construct set; default = new Gee.ArrayList<BotCommand?> (); }

    /**
     * The HTTP link to the privacy policy of the bot. If empty, then
     * /privacy command must be used if supported by the bot. If the command
     * isn't supported, then [[https://telegram.org/privacy-tpa]] must be
     * opened
     */
    public string privacy_policy_url { get; construct set; }

    /**
     * Default administrator rights for adding the bot to basic group and
     * supergroup chats; may be null
     */
    public ChatAdministratorRights? default_group_administrator_rights { get; construct set; }

    /**
     * Default administrator rights for adding the bot to channels; may be
     * null
     */
    public ChatAdministratorRights? default_channel_administrator_rights { get; construct set; }

    /**
     * Information about the affiliate program of the bot; may be null if
     * none
     */
    public AffiliateProgramInfo? affiliate_program { get; construct set; }

    /**
     * Default light background color for bot Web Apps; -1 if not specified
     */
    public int32 web_app_background_light_color { get; construct set; }

    /**
     * Default dark background color for bot Web Apps; -1 if not specified
     */
    public int32 web_app_background_dark_color { get; construct set; }

    /**
     * Default light header color for bot Web Apps; -1 if not specified
     */
    public int32 web_app_header_light_color { get; construct set; }

    /**
     * Default dark header color for bot Web Apps; -1 if not specified
     */
    public int32 web_app_header_dark_color { get; construct set; }

    /**
     * Parameters of the verification that can be provided by the bot; may be
     * null if none or the current user isn't the owner of the bot
     */
    public BotVerificationParameters? verification_parameters { get; construct set; }

    /**
     * True, if the bot's revenue statistics are available to the current
     * user
     */
    public bool can_get_revenue_statistics { get; construct set; }

    /**
     * True, if the bot can manage emoji status of the current user
     */
    public bool can_manage_emoji_status { get; construct set; }

    /**
     * True, if the bot has media previews
     */
    public bool has_media_previews { get; construct set; }

    /**
     * The internal link, which can be used to edit bot commands; may be null
     */
    public InternalLinkType? edit_commands_link { get; construct set; }

    /**
     * The internal link, which can be used to edit bot description; may be
     * null
     */
    public InternalLinkType? edit_description_link { get; construct set; }

    /**
     * The internal link, which can be used to edit the photo or animation
     * shown in the chat with the bot if the chat is empty; may be null
     */
    public InternalLinkType? edit_description_media_link { get; construct set; }

    /**
     * The internal link, which can be used to edit bot settings; may be null
     */
    public InternalLinkType? edit_settings_link { get; construct set; }

    public BotInfo (
        string short_description,
        string description,
        Photo? photo,
        Animation? animation,
        BotMenuButton? menu_button,
        Gee.ArrayList<BotCommand?> commands,
        string privacy_policy_url,
        ChatAdministratorRights? default_group_administrator_rights,
        ChatAdministratorRights? default_channel_administrator_rights,
        AffiliateProgramInfo? affiliate_program,
        int32 web_app_background_light_color,
        int32 web_app_background_dark_color,
        int32 web_app_header_light_color,
        int32 web_app_header_dark_color,
        BotVerificationParameters? verification_parameters,
        bool can_get_revenue_statistics,
        bool can_manage_emoji_status,
        bool has_media_previews,
        InternalLinkType? edit_commands_link,
        InternalLinkType? edit_description_link,
        InternalLinkType? edit_description_media_link,
        InternalLinkType? edit_settings_link
    ) {
        Object (
            short_description: short_description,
            description: description,
            photo: photo,
            animation: animation,
            menu_button: menu_button,
            commands: commands,
            privacy_policy_url: privacy_policy_url,
            default_group_administrator_rights: default_group_administrator_rights,
            default_channel_administrator_rights: default_channel_administrator_rights,
            affiliate_program: affiliate_program,
            web_app_background_light_color: web_app_background_light_color,
            web_app_background_dark_color: web_app_background_dark_color,
            web_app_header_light_color: web_app_header_light_color,
            web_app_header_dark_color: web_app_header_dark_color,
            verification_parameters: verification_parameters,
            can_get_revenue_statistics: can_get_revenue_statistics,
            can_manage_emoji_status: can_manage_emoji_status,
            has_media_previews: has_media_previews,
            edit_commands_link: edit_commands_link,
            edit_description_link: edit_description_link,
            edit_description_media_link: edit_description_media_link,
            edit_settings_link: edit_settings_link,
            tdlib_type: "botInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
