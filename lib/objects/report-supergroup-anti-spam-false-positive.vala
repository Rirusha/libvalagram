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
 * Reports a false deletion of a message by aggressive anti-spam checks;
 * requires administrator rights in the supergroup. Can be called only
 * for messages from chatEventMessageDeleted with
 * can_report_anti_spam_false_positive == true
 */
internal class TDLib.ReportSupergroupAntiSpamFalsePositive : TDObject {

    /**
     * Supergroup identifier
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * Identifier of the erroneously deleted message from
     * chatEventMessageDeleted
     */
    public int64 message_id { get; construct set; }

    public ReportSupergroupAntiSpamFalsePositive (
        int64 supergroup_id,
        int64 message_id
    ) {
        Object (
            supergroup_id: supergroup_id,
            message_id: message_id,
            tdlib_type: "reportSupergroupAntiSpamFalsePositive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
