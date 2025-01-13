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
 * Reports a chat photo to the Telegram moderators. A chat photo can be
 * reported only if chat.can_be_reported
 */
internal class TDLib.ReportChatPhoto : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the photo to report. Only full photos from chatPhoto can
     * be reported
     */
    public int32 file_id { get; construct set; }

    /**
     * The reason for reporting the chat photo
     */
    public ReportReason reason { get; construct set; }

    /**
     * Additional report details; 0-1024 characters
     */
    public string text { get; construct set; }

    public ReportChatPhoto (
        int64 chat_id,
        int32 file_id,
        ReportReason reason,
        string text
    ) {
        Object (
            chat_id: chat_id,
            file_id: file_id,
            reason: reason,
            text: text,
            tdlib_type: "reportChatPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
