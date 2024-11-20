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
 * Changes the notification settings of a forum topic
 */
internal class TDLib.SetForumTopicNotificationSettings : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message thread identifier of the forum topic
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * New notification settings for the forum topic. If the topic is muted
     * for more than 366 days, it is considered to be muted forever
     */
    public ChatNotificationSettings notification_settings { get; construct set; }

    public SetForumTopicNotificationSettings (
        int64 chat_id,
        int64 message_thread_id,
        ChatNotificationSettings notification_settings
    ) {
        Object (
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            notification_settings: notification_settings,
            tdlib_type: "setForumTopicNotificationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
