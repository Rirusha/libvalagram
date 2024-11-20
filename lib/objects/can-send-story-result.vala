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
 * Represents result of checking whether the current user can send a
 * story in the specific chat
 */
public abstract class TDLib.CanSendStoryResult : Error {}

/**
 * A story can be sent
 */
public class TDLib.CanSendStoryResultOk : CanSendStoryResult {

    public CanSendStoryResultOk () {
        Object (
            tdlib_type: "canSendStoryResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must subscribe to Telegram Premium to be able to post stories
 */
public class TDLib.CanSendStoryResultPremiumNeeded : CanSendStoryResult {

    public CanSendStoryResultPremiumNeeded () {
        Object (
            tdlib_type: "canSendStoryResultPremiumNeeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat must be boosted first by Telegram Premium subscribers to post
 * more stories. Call getChatBoostStatus to get current boost status of
 * the chat
 */
public class TDLib.CanSendStoryResultBoostNeeded : CanSendStoryResult {

    public CanSendStoryResultBoostNeeded () {
        Object (
            tdlib_type: "canSendStoryResultBoostNeeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The limit for the number of active stories exceeded. The user can buy
 * Telegram Premium, delete an active story, or wait for the oldest story
 * to expire
 */
public class TDLib.CanSendStoryResultActiveStoryLimitExceeded : CanSendStoryResult {

    public CanSendStoryResultActiveStoryLimitExceeded () {
        Object (
            tdlib_type: "canSendStoryResultActiveStoryLimitExceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The weekly limit for the number of posted stories exceeded. The user
 * needs to buy Telegram Premium or wait specified time
 */
public class TDLib.CanSendStoryResultWeeklyLimitExceeded : CanSendStoryResult {

    /**
     * Time left before the user can send the next story
     */
    public int32 retry_after { get; construct set; }

    public CanSendStoryResultWeeklyLimitExceeded (
        int32 retry_after
    ) {
        Object (
            retry_after: retry_after,
            tdlib_type: "canSendStoryResultWeeklyLimitExceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The monthly limit for the number of posted stories exceeded. The user
 * needs to buy Telegram Premium or wait specified time
 */
public class TDLib.CanSendStoryResultMonthlyLimitExceeded : CanSendStoryResult {

    /**
     * Time left before the user can send the next story
     */
    public int32 retry_after { get; construct set; }

    public CanSendStoryResultMonthlyLimitExceeded (
        int32 retry_after
    ) {
        Object (
            retry_after: retry_after,
            tdlib_type: "canSendStoryResultMonthlyLimitExceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
