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
 * Describes why the current user can't add reactions to the message,
 * despite some other users can
 */
public abstract class TDLib.ReactionUnavailabilityReason : Error {}

/**
 * The user is an anonymous administrator in the supergroup, but isn't a
 * creator of it, so they can't vote on behalf of the supergroup
 */
public class TDLib.ReactionUnavailabilityReasonAnonymousAdministrator : ReactionUnavailabilityReason {

    public ReactionUnavailabilityReasonAnonymousAdministrator () {
        Object (
            tdlib_type: "reactionUnavailabilityReasonAnonymousAdministrator",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user isn't a member of the supergroup and can't send messages and
 * reactions there without joining
 */
public class TDLib.ReactionUnavailabilityReasonGuest : ReactionUnavailabilityReason {

    public ReactionUnavailabilityReasonGuest () {
        Object (
            tdlib_type: "reactionUnavailabilityReasonGuest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
