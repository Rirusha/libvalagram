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
 * Describes reason for refund of the payment for a suggested post
 */
public abstract class TDLib.SuggestedPostRefundReason : Error {}

/**
 * The post was refunded, because it was deleted by channel
 * administrators in less than getOption("suggested_post_lifetime_min")
 * seconds
 */
public class TDLib.SuggestedPostRefundReasonPostDeleted : SuggestedPostRefundReason {

    public SuggestedPostRefundReasonPostDeleted () {
        Object (
            tdlib_type: "suggestedPostRefundReasonPostDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The post was refunded, because the payment for the post was refunded
 */
public class TDLib.SuggestedPostRefundReasonPaymentRefunded : SuggestedPostRefundReason {

    public SuggestedPostRefundReasonPaymentRefunded () {
        Object (
            tdlib_type: "suggestedPostRefundReasonPaymentRefunded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
