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
 * Describes the reason why a call was discarded
 */
public abstract class TDLib.CallDiscardReason : Error {}

/**
 * The call wasn't discarded, or the reason is unknown
 */
public class TDLib.CallDiscardReasonEmpty : CallDiscardReason {

    public CallDiscardReasonEmpty () {
        Object (
            tdlib_type: "callDiscardReasonEmpty",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call was ended before the conversation started. It was canceled by
 * the caller or missed by the other party
 */
public class TDLib.CallDiscardReasonMissed : CallDiscardReason {

    public CallDiscardReasonMissed () {
        Object (
            tdlib_type: "callDiscardReasonMissed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call was ended before the conversation started. It was declined by
 * the other party
 */
public class TDLib.CallDiscardReasonDeclined : CallDiscardReason {

    public CallDiscardReasonDeclined () {
        Object (
            tdlib_type: "callDiscardReasonDeclined",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call was ended during the conversation because the users were
 * disconnected
 */
public class TDLib.CallDiscardReasonDisconnected : CallDiscardReason {

    public CallDiscardReasonDisconnected () {
        Object (
            tdlib_type: "callDiscardReasonDisconnected",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call was ended because one of the parties hung up
 */
public class TDLib.CallDiscardReasonHungUp : CallDiscardReason {

    public CallDiscardReasonHungUp () {
        Object (
            tdlib_type: "callDiscardReasonHungUp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call was ended because it has been upgraded to a group call
 */
public class TDLib.CallDiscardReasonUpgradeToGroupCall : CallDiscardReason {

    /**
     * Invite link for the group call
     */
    public string invite_link { get; construct set; }

    public CallDiscardReasonUpgradeToGroupCall (
        string invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "callDiscardReasonUpgradeToGroupCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
