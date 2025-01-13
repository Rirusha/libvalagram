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
 * Describes the type of chat to which points an invite link
 */
public abstract class TDLib.InviteLinkChatType : Error {}

/**
 * The link is an invite link for a basic group
 */
public class TDLib.InviteLinkChatTypeBasicGroup : InviteLinkChatType {

    public InviteLinkChatTypeBasicGroup () {
        Object (
            tdlib_type: "inviteLinkChatTypeBasicGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is an invite link for a supergroup
 */
public class TDLib.InviteLinkChatTypeSupergroup : InviteLinkChatType {

    public InviteLinkChatTypeSupergroup () {
        Object (
            tdlib_type: "inviteLinkChatTypeSupergroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is an invite link for a channel
 */
public class TDLib.InviteLinkChatTypeChannel : InviteLinkChatType {

    public InviteLinkChatTypeChannel () {
        Object (
            tdlib_type: "inviteLinkChatTypeChannel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
