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
 * Describes data channel for a group call
 */
public abstract class TDLib.GroupCallDataChannel : Error {}

/**
 * The main data channel for audio and video data
 */
public class TDLib.GroupCallDataChannelMain : GroupCallDataChannel {

    public GroupCallDataChannelMain () {
        Object (
            tdlib_type: "groupCallDataChannelMain",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The data channel for screen sharing
 */
public class TDLib.GroupCallDataChannelScreenSharing : GroupCallDataChannel {

    public GroupCallDataChannelScreenSharing () {
        Object (
            tdlib_type: "groupCallDataChannelScreenSharing",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
