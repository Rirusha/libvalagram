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
 * Describes a reason why a bot was allowed to write messages to the
 * current user
 */
public abstract class TDLib.BotWriteAccessAllowReason : Error {}

/**
 * The user connected a website by logging in using Telegram Login Widget
 * on it
 */
public class TDLib.BotWriteAccessAllowReasonConnectedWebsite : BotWriteAccessAllowReason {

    /**
     * Domain name of the connected website
     */
    public string domain_name { get; construct set; }

    public BotWriteAccessAllowReasonConnectedWebsite (
        string domain_name
    ) {
        Object (
            domain_name: domain_name,
            tdlib_type: "botWriteAccessAllowReasonConnectedWebsite",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user added the bot to attachment or side menu using
 * {@link Client.toggle_bot_is_added_to_attachment_menu}
 */
public class TDLib.BotWriteAccessAllowReasonAddedToAttachmentMenu : BotWriteAccessAllowReason {

    public BotWriteAccessAllowReasonAddedToAttachmentMenu () {
        Object (
            tdlib_type: "botWriteAccessAllowReasonAddedToAttachmentMenu",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user launched a Web App using {@link Client.get_web_app_link_url}
 */
public class TDLib.BotWriteAccessAllowReasonLaunchedWebApp : BotWriteAccessAllowReason {

    /**
     * Information about the Web App
     */
    public WebApp web_app { get; construct set; }

    public BotWriteAccessAllowReasonLaunchedWebApp (
        WebApp web_app
    ) {
        Object (
            web_app: web_app,
            tdlib_type: "botWriteAccessAllowReasonLaunchedWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user accepted bot's request to send messages with
 * {@link Client.allow_bot_to_send_messages}
 */
public class TDLib.BotWriteAccessAllowReasonAcceptedRequest : BotWriteAccessAllowReason {

    public BotWriteAccessAllowReasonAcceptedRequest () {
        Object (
            tdlib_type: "botWriteAccessAllowReasonAcceptedRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
