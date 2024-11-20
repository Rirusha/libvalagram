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
 * Represents result of checking whether the current session can be used
 * to transfer a chat ownership to another user
 */
public abstract class TDLib.CanTransferOwnershipResult : Error {}

/**
 * The session can be used
 */
public class TDLib.CanTransferOwnershipResultOk : CanTransferOwnershipResult {

    public CanTransferOwnershipResultOk () {
        Object (
            tdlib_type: "canTransferOwnershipResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The 2-step verification needs to be enabled first
 */
public class TDLib.CanTransferOwnershipResultPasswordNeeded : CanTransferOwnershipResult {

    public CanTransferOwnershipResultPasswordNeeded () {
        Object (
            tdlib_type: "canTransferOwnershipResultPasswordNeeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The 2-step verification was enabled recently, user needs to wait
 */
public class TDLib.CanTransferOwnershipResultPasswordTooFresh : CanTransferOwnershipResult {

    /**
     * Time left before the session can be used to transfer ownership of a
     * chat, in seconds
     */
    public int32 retry_after { get; construct set; }

    public CanTransferOwnershipResultPasswordTooFresh (
        int32 retry_after
    ) {
        Object (
            retry_after: retry_after,
            tdlib_type: "canTransferOwnershipResultPasswordTooFresh",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session was created recently, user needs to wait
 */
public class TDLib.CanTransferOwnershipResultSessionTooFresh : CanTransferOwnershipResult {

    /**
     * Time left before the session can be used to transfer ownership of a
     * chat, in seconds
     */
    public int32 retry_after { get; construct set; }

    public CanTransferOwnershipResultSessionTooFresh (
        int32 retry_after
    ) {
        Object (
            retry_after: retry_after,
            tdlib_type: "canTransferOwnershipResultSessionTooFresh",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
