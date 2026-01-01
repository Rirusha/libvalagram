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
 * Describes a reason why an external chat is shown in a chat list
 */
public abstract class TDLib.ChatSource : Error {}

/**
 * The chat is sponsored by the user's MTProxy server
 */
public class TDLib.ChatSourceMtprotoProxy : ChatSource {

    public ChatSourceMtprotoProxy () {
        Object (
            tdlib_type: "chatSourceMtprotoProxy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat contains a public service announcement
 */
public class TDLib.ChatSourcePublicServiceAnnouncement : ChatSource {

    /**
     * The type of the announcement
     */
    public string type_ { get; construct set; }

    /**
     * The text of the announcement
     */
    public string text { get; construct set; }

    public ChatSourcePublicServiceAnnouncement (
        string type_,
        string text
    ) {
        Object (
            type_: type_,
            text: text,
            tdlib_type: "chatSourcePublicServiceAnnouncement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
