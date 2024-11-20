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
 * Describes a chat administrator with a number of active and revoked
 * chat invite links
 */
public class TDLib.ChatInviteLinkCount : Error {

    /**
     * Administrator's user identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Number of active invite links
     */
    public int32 invite_link_count { get; construct set; }

    /**
     * Number of revoked invite links
     */
    public int32 revoked_invite_link_count { get; construct set; }

    public ChatInviteLinkCount (
        int64 user_id,
        int32 invite_link_count,
        int32 revoked_invite_link_count
    ) {
        Object (
            user_id: user_id,
            invite_link_count: invite_link_count,
            revoked_invite_link_count: revoked_invite_link_count,
            tdlib_type: "chatInviteLinkCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
