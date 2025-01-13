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
 * Describes the current call state
 */
public abstract class TDLib.CallState : Error {}

/**
 * The call is pending, waiting to be accepted by a user
 */
public class TDLib.CallStatePending : CallState {

    /**
     * True, if the call has already been created by the server
     */
    public bool is_created { get; construct set; }

    /**
     * True, if the call has already been received by the other party
     */
    public bool is_received { get; construct set; }

    public CallStatePending (
        bool is_created,
        bool is_received
    ) {
        Object (
            is_created: is_created,
            is_received: is_received,
            tdlib_type: "callStatePending",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call has been answered and encryption keys are being exchanged
 */
public class TDLib.CallStateExchangingKeys : CallState {

    public CallStateExchangingKeys () {
        Object (
            tdlib_type: "callStateExchangingKeys",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call is ready to use
 */
public class TDLib.CallStateReady : CallState {

    /**
     * Call protocols supported by the other call participant
     */
    public CallProtocol protocol { get; construct set; }

    /**
     * List of available call servers
     */
    public Gee.ArrayList<CallServer?> servers { get; construct set; default = new Gee.ArrayList<CallServer?> (); }

    /**
     * A JSON-encoded call config
     */
    public string config { get; construct set; }

    /**
     * Call encryption key
     */
    public Bytes encryption_key { get; construct set; }

    /**
     * Encryption key fingerprint represented as 4 emoji
     */
    public Gee.ArrayList<string?> emojis { get; construct set; default = new Gee.ArrayList<string?> (); }

    /**
     * True, if peer-to-peer connection is allowed by users privacy settings
     */
    public bool allow_p2p { get; construct set; }

    /**
     * Custom JSON-encoded call parameters to be passed to tgcalls
     */
    public string custom_parameters { get; construct set; }

    public CallStateReady (
        CallProtocol protocol,
        Gee.ArrayList<CallServer?> servers,
        string config,
        Bytes encryption_key,
        Gee.ArrayList<string?> emojis,
        bool allow_p2p,
        string custom_parameters
    ) {
        Object (
            protocol: protocol,
            servers: servers,
            config: config,
            encryption_key: encryption_key,
            emojis: emojis,
            allow_p2p: allow_p2p,
            custom_parameters: custom_parameters,
            tdlib_type: "callStateReady",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call is hanging up after {@link Client.discard_call} has been
 * called
 */
public class TDLib.CallStateHangingUp : CallState {

    public CallStateHangingUp () {
        Object (
            tdlib_type: "callStateHangingUp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call has ended successfully
 */
public class TDLib.CallStateDiscarded : CallState {

    /**
     * The reason why the call has ended
     */
    public CallDiscardReason reason { get; construct set; }

    /**
     * True, if the call rating must be sent to the server
     */
    public bool need_rating { get; construct set; }

    /**
     * True, if the call debug information must be sent to the server
     */
    public bool need_debug_information { get; construct set; }

    /**
     * True, if the call log must be sent to the server
     */
    public bool need_log { get; construct set; }

    public CallStateDiscarded (
        CallDiscardReason reason,
        bool need_rating,
        bool need_debug_information,
        bool need_log
    ) {
        Object (
            reason: reason,
            need_rating: need_rating,
            need_debug_information: need_debug_information,
            need_log: need_log,
            tdlib_type: "callStateDiscarded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call has ended with an error
 */
public class TDLib.CallStateError : CallState {

    /**
     * Error. An error with the code 4005000 will be returned if an outgoing
     * call is missed because of an expired timeout
     */
    public Error error { get; construct set; }

    public CallStateError (
        Error error
    ) {
        Object (
            error: error,
            tdlib_type: "callStateError",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
