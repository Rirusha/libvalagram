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
 * Describes a button to be shown instead of bot commands menu button
 */
public class TDLib.BotMenuButton : Error {

    /**
     * Text of the button
     */
    public string text { get; construct set; }

    /**
     * URL of a Web App to open when the button is pressed. If the link is of
     * the type internalLinkTypeWebApp, then it must be processed
     * accordingly. Otherwise, the link must be passed to
     * {@link Client.open_web_app}
     */
    public string url { get; construct set; }

    public BotMenuButton (
        string text,
        string url
    ) {
        Object (
            text: text,
            url: url,
            tdlib_type: "botMenuButton",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
