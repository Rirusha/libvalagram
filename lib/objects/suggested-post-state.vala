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
 * Describes state of a suggested post
 */
public abstract class TDLib.SuggestedPostState : Error {}

/**
 * The post must be approved or declined
 */
public class TDLib.SuggestedPostStatePending : SuggestedPostState {

    public SuggestedPostStatePending () {
        Object (
            tdlib_type: "suggestedPostStatePending",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The post was approved
 */
public class TDLib.SuggestedPostStateApproved : SuggestedPostState {

    public SuggestedPostStateApproved () {
        Object (
            tdlib_type: "suggestedPostStateApproved",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The post was declined
 */
public class TDLib.SuggestedPostStateDeclined : SuggestedPostState {

    public SuggestedPostStateDeclined () {
        Object (
            tdlib_type: "suggestedPostStateDeclined",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
