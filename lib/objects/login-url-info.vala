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
 * Contains information about an inline button of type
 * inlineKeyboardButtonTypeLoginUrl
 */
public abstract class TDLib.LoginUrlInfo : Error {}

/**
 * An HTTP URL needs to be open
 */
public class TDLib.LoginUrlInfoOpen : LoginUrlInfo {

    /**
     * The URL to open
     */
    public string url { get; construct set; }

    /**
     * True, if there is no need to show an ordinary open URL confirmation
     */
    public bool skip_confirmation { get; construct set; }

    public LoginUrlInfoOpen (
        string url,
        bool skip_confirmation
    ) {
        Object (
            url: url,
            skip_confirmation: skip_confirmation,
            tdlib_type: "loginUrlInfoOpen",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An authorization confirmation dialog needs to be shown to the user
 */
public class TDLib.LoginUrlInfoRequestConfirmation : LoginUrlInfo {

    /**
     * An HTTP URL to be opened
     */
    public string url { get; construct set; }

    /**
     * A domain of the URL
     */
    public string domain { get; construct set; }

    /**
     * User identifier of a bot linked with the website
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * True, if the user must be asked for the permission to the bot to send
     * them messages
     */
    public bool request_write_access { get; construct set; }

    public LoginUrlInfoRequestConfirmation (
        string url,
        string domain,
        int64 bot_user_id,
        bool request_write_access
    ) {
        Object (
            url: url,
            domain: domain,
            bot_user_id: bot_user_id,
            request_write_access: request_write_access,
            tdlib_type: "loginUrlInfoRequestConfirmation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
