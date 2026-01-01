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
 * Represents result of checking whether the current user can post a
 * story on behalf of the specific chat
 */
public abstract class TDLib.CanPostStoryResult : Error {}

/**
 * A story can be sent
 */
public class TDLib.CanPostStoryResultOk : CanPostStoryResult {

    /**
     * Number of stories that can be posted by the user
     */
    public int32 story_count { get; construct set; }

    public CanPostStoryResultOk (
        int32 story_count
    ) {
        Object (
            story_count: story_count,
            tdlib_type: "canPostStoryResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must subscribe to Telegram Premium to be able to post stories
 */
public class TDLib.CanPostStoryResultPremiumNeeded : CanPostStoryResult {

    public CanPostStoryResultPremiumNeeded () {
        Object (
            tdlib_type: "canPostStoryResultPremiumNeeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat must be boosted first by Telegram Premium subscribers to post
 * more stories. Call {@link Client.get_chat_boost_status} to get current
 * boost status of the chat
 */
public class TDLib.CanPostStoryResultBoostNeeded : CanPostStoryResult {

    public CanPostStoryResultBoostNeeded () {
        Object (
            tdlib_type: "canPostStoryResultBoostNeeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The limit for the number of active stories exceeded. The user can buy
 * Telegram Premium, delete an active story, or wait for the oldest story
 * to expire
 */
public class TDLib.CanPostStoryResultActiveStoryLimitExceeded : CanPostStoryResult {

    public CanPostStoryResultActiveStoryLimitExceeded () {
        Object (
            tdlib_type: "canPostStoryResultActiveStoryLimitExceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The weekly limit for the number of posted stories exceeded. The user
 * needs to buy Telegram Premium or wait specified time
 */
public class TDLib.CanPostStoryResultWeeklyLimitExceeded : CanPostStoryResult {

    /**
     * Time left before the user can post the next story
     */
    public int32 retry_after { get; construct set; }

    public CanPostStoryResultWeeklyLimitExceeded (
        int32 retry_after
    ) {
        Object (
            retry_after: retry_after,
            tdlib_type: "canPostStoryResultWeeklyLimitExceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The monthly limit for the number of posted stories exceeded. The user
 * needs to buy Telegram Premium or wait specified time
 */
public class TDLib.CanPostStoryResultMonthlyLimitExceeded : CanPostStoryResult {

    /**
     * Time left before the user can post the next story
     */
    public int32 retry_after { get; construct set; }

    public CanPostStoryResultMonthlyLimitExceeded (
        int32 retry_after
    ) {
        Object (
            retry_after: retry_after,
            tdlib_type: "canPostStoryResultMonthlyLimitExceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user or the chat has an active live story. The live story must be
 * deleted first
 */
public class TDLib.CanPostStoryResultLiveStoryIsActive : CanPostStoryResult {

    /**
     * Identifier of the active live story
     */
    public int32 story_id { get; construct set; }

    public CanPostStoryResultLiveStoryIsActive (
        int32 story_id
    ) {
        Object (
            story_id: story_id,
            tdlib_type: "canPostStoryResultLiveStoryIsActive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
