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
 * Returns information about a non-bundled message that is replied by a
 * given message. Also, returns the pinned message for messagePinMessage,
 * the game message for messageGameScore, the invoice message for
 * messagePaymentSuccessful, the message with a previously set same
 * background for messageChatSetBackground,
 * the giveaway message for messageGiveawayCompleted, the checklist
 * message for messageChecklistTasksDone, messageChecklistTasksAdded, the
 * message with suggested post information
 * for messageSuggestedPostApprovalFailed, messageSuggestedPostApproved,
 * messageSuggestedPostDeclined, messageSuggestedPostPaid,
 * messageSuggestedPostRefunded,
 * the message with the regular gift that was upgraded for
 * messageUpgradedGift with origin of the type upgradedGiftOriginUpgrade,
 * and the topic creation message for topic messages without non-bundled
 * replied message. Returns a 404 error if the message doesn't exist
 */
public class TDLib.GetRepliedMessage : TDObject {

    /**
     * Identifier of the chat the message belongs to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the reply message
     */
    public int64 message_id { get; construct set; }

    public GetRepliedMessage (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "getRepliedMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
