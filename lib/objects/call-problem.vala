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
 * Describes the exact type of problem with a call
 */
public abstract class TDLib.CallProblem : Error {}

/**
 * The user heard their own voice
 */
public class TDLib.CallProblemEcho : CallProblem {

    public CallProblemEcho () {
        Object (
            tdlib_type: "callProblemEcho",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user heard background noise
 */
public class TDLib.CallProblemNoise : CallProblem {

    public CallProblemNoise () {
        Object (
            tdlib_type: "callProblemNoise",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The other side kept disappearing
 */
public class TDLib.CallProblemInterruptions : CallProblem {

    public CallProblemInterruptions () {
        Object (
            tdlib_type: "callProblemInterruptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The speech was distorted
 */
public class TDLib.CallProblemDistortedSpeech : CallProblem {

    public CallProblemDistortedSpeech () {
        Object (
            tdlib_type: "callProblemDistortedSpeech",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user couldn't hear the other side
 */
public class TDLib.CallProblemSilentLocal : CallProblem {

    public CallProblemSilentLocal () {
        Object (
            tdlib_type: "callProblemSilentLocal",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The other side couldn't hear the user
 */
public class TDLib.CallProblemSilentRemote : CallProblem {

    public CallProblemSilentRemote () {
        Object (
            tdlib_type: "callProblemSilentRemote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The call ended unexpectedly
 */
public class TDLib.CallProblemDropped : CallProblem {

    public CallProblemDropped () {
        Object (
            tdlib_type: "callProblemDropped",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The video was distorted
 */
public class TDLib.CallProblemDistortedVideo : CallProblem {

    public CallProblemDistortedVideo () {
        Object (
            tdlib_type: "callProblemDistortedVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The video was pixelated
 */
public class TDLib.CallProblemPixelatedVideo : CallProblem {

    public CallProblemPixelatedVideo () {
        Object (
            tdlib_type: "callProblemPixelatedVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
