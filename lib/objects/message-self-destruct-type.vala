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
 * Describes when a message will be self-destructed
 */
public abstract class TDLib.MessageSelfDestructType : Error {}

/**
 * The message will be self-destructed in the specified time after its
 * content was opened
 */
public class TDLib.MessageSelfDestructTypeTimer : MessageSelfDestructType {

    /**
     * The message's self-destruct time, in seconds; must be between 0 and 60
     * in private chats
     */
    public int32 self_destruct_time { get; construct set; }

    public MessageSelfDestructTypeTimer (
        int32 self_destruct_time
    ) {
        Object (
            self_destruct_time: self_destruct_time,
            tdlib_type: "messageSelfDestructTypeTimer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message can be opened only once and will be self-destructed once
 * closed
 */
public class TDLib.MessageSelfDestructTypeImmediately : MessageSelfDestructType {

    public MessageSelfDestructTypeImmediately () {
        Object (
            tdlib_type: "messageSelfDestructTypeImmediately",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
