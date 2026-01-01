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
 * Contains detailed information about a notification
 */
public abstract class TDLib.NotificationType : Error {}

/**
 * New message was received
 */
public class TDLib.NotificationTypeNewMessage : NotificationType {

    /**
     * The message
     */
    public new Message message { get; construct set; }

    /**
     * True, if message content must be displayed in notifications
     */
    public bool show_preview { get; construct set; }

    public NotificationTypeNewMessage (
        Message message,
        bool show_preview
    ) {
        Object (
            message: message,
            show_preview: show_preview,
            tdlib_type: "notificationTypeNewMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New secret chat was created
 */
public class TDLib.NotificationTypeNewSecretChat : NotificationType {

    public NotificationTypeNewSecretChat () {
        Object (
            tdlib_type: "notificationTypeNewSecretChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New call was received
 */
public class TDLib.NotificationTypeNewCall : NotificationType {

    /**
     * Call identifier
     */
    public int32 call_id { get; construct set; }

    public NotificationTypeNewCall (
        int32 call_id
    ) {
        Object (
            call_id: call_id,
            tdlib_type: "notificationTypeNewCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New message was received through a push notification
 */
public class TDLib.NotificationTypeNewPushMessage : NotificationType {

    /**
     * The message identifier. The message will not be available in the chat
     * history, but the identifier can be used in
     * {@link Client.view_messages} or as a message to be replied in the same
     * chat
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the sender of the message. Corresponding user or chat
     * may be inaccessible
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * Name of the sender
     */
    public string sender_name { get; construct set; }

    /**
     * True, if the message is outgoing
     */
    public bool is_outgoing { get; construct set; }

    /**
     * Push message content
     */
    public PushMessageContent content { get; construct set; }

    public NotificationTypeNewPushMessage (
        int64 message_id,
        MessageSender sender_id,
        string sender_name,
        bool is_outgoing,
        PushMessageContent content
    ) {
        Object (
            message_id: message_id,
            sender_id: sender_id,
            sender_name: sender_name,
            is_outgoing: is_outgoing,
            content: content,
            tdlib_type: "notificationTypeNewPushMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
