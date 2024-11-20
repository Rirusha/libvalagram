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
 * Returns an HTTP URL which can be used to automatically authorize the
 * current user on a website after clicking an HTTP link. Use the method
 * getExternalLinkInfo to find whether a prior user confirmation is
 * needed
 */
internal class TDLib.GetExternalLink : TDObject {

    /**
     * The HTTP link
     */
    public string link { get; construct set; }

    /**
     * Pass true if the current user allowed the bot, returned in
     * getExternalLinkInfo, to send them messages
     */
    public bool allow_write_access { get; construct set; }

    public GetExternalLink (
        string link,
        bool allow_write_access
    ) {
        Object (
            link: link,
            allow_write_access: allow_write_access,
            tdlib_type: "getExternalLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
