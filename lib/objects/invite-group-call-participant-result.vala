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
 * Describes result of group call participant invitation
 */
public abstract class TDLib.InviteGroupCallParticipantResult : Error {}

/**
 * The user can't be invited due to their privacy settings
 */
public class TDLib.InviteGroupCallParticipantResultUserPrivacyRestricted : InviteGroupCallParticipantResult {

    public InviteGroupCallParticipantResultUserPrivacyRestricted () {
        Object (
            tdlib_type: "inviteGroupCallParticipantResultUserPrivacyRestricted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't be invited because they are already a participant of
 * the call
 */
public class TDLib.InviteGroupCallParticipantResultUserAlreadyParticipant : InviteGroupCallParticipantResult {

    public InviteGroupCallParticipantResultUserAlreadyParticipant () {
        Object (
            tdlib_type: "inviteGroupCallParticipantResultUserAlreadyParticipant",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't be invited because they were banned by the owner of the
 * call and can be invited back only by the owner of the group call
 */
public class TDLib.InviteGroupCallParticipantResultUserWasBanned : InviteGroupCallParticipantResult {

    public InviteGroupCallParticipantResultUserWasBanned () {
        Object (
            tdlib_type: "inviteGroupCallParticipantResultUserWasBanned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user was invited and a service message of the type
 * messageGroupCall was sent which can be used in
 * {@link Client.decline_group_call_invitation} to cancel the invitation
 */
public class TDLib.InviteGroupCallParticipantResultSuccess : InviteGroupCallParticipantResult {

    /**
     * Identifier of the chat with the invitation message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    public InviteGroupCallParticipantResultSuccess (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "inviteGroupCallParticipantResultSuccess",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
