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
 * Returns invite link to a video chat in a public chat
 */
public class TDLib.GetVideoChatInviteLink : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Pass true if the invite link needs to contain an invite hash, passing
     * which to {@link Client.join_video_chat} would allow the invited user
     * to unmute themselves. Requires groupCall.can_be_managed right
     */
    public bool can_self_unmute { get; construct set; }

    public GetVideoChatInviteLink (
        int32 group_call_id,
        bool can_self_unmute
    ) {
        Object (
            group_call_id: group_call_id,
            can_self_unmute: can_self_unmute,
            tdlib_type: "getVideoChatInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
