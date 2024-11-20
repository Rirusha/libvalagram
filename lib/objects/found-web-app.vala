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
 * Contains information about a Web App found by its short name
 */
public class TDLib.FoundWebApp : Error {

    /**
     * The Web App
     */
    public WebApp web_app { get; construct set; }

    /**
     * True, if the user must be asked for the permission to the bot to send
     * them messages
     */
    public bool request_write_access { get; construct set; }

    /**
     * True, if there is no need to show an ordinary open URL confirmation
     * before opening the Web App. The field must be ignored and confirmation
     * must be shown anyway if the Web App link was hidden
     */
    public bool skip_confirmation { get; construct set; }

    public FoundWebApp (
        WebApp web_app,
        bool request_write_access,
        bool skip_confirmation
    ) {
        Object (
            web_app: web_app,
            request_write_access: request_write_access,
            skip_confirmation: skip_confirmation,
            tdlib_type: "foundWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
