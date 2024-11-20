/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Represents type of button in results of inline query
 */
public abstract class TDLib.InlineQueryResultsButtonType : Error {}

/**
 * Describes the button that opens a private chat with the bot and sends
 * a start message to the bot with the given parameter
 */
public class TDLib.InlineQueryResultsButtonTypeStartBot : InlineQueryResultsButtonType {

    /**
     * The parameter for the bot start message
     */
    public string parameter { get; construct set; }

    public InlineQueryResultsButtonTypeStartBot (
        string parameter
    ) {
        Object (
            parameter: parameter,
            tdlib_type: "inlineQueryResultsButtonTypeStartBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes the button that opens a Web App by calling getWebAppUrl
 */
public class TDLib.InlineQueryResultsButtonTypeWebApp : InlineQueryResultsButtonType {

    /**
     * An HTTP URL to pass to getWebAppUrl
     */
    public string url { get; construct set; }

    public InlineQueryResultsButtonTypeWebApp (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "inlineQueryResultsButtonTypeWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
