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
 * Returns information about a tg:// deep link. Use
 * "tg://need_update_for_some_feature" or "tg:some_unsupported_feature"
 * for testing. Returns a 404 error for unknown links. Can be called
 * before authorization
 */
internal class TDLib.GetDeepLinkInfo : TDObject {

    /**
     * The link
     */
    public string link { get; construct set; }

    public GetDeepLinkInfo (
        string link
    ) {
        Object (
            link: link,
            tdlib_type: "getDeepLinkInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
