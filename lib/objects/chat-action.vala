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
 * Describes the different types of activity in a chat
 */
public abstract class TDLib.ChatAction : Error {}

/**
 * The user is typing a message
 */
public class TDLib.ChatActionTyping : ChatAction {

    public ChatActionTyping () {
        Object (
            tdlib_type: "chatActionTyping",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is recording a video
 */
public class TDLib.ChatActionRecordingVideo : ChatAction {

    public ChatActionRecordingVideo () {
        Object (
            tdlib_type: "chatActionRecordingVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is uploading a video
 */
public class TDLib.ChatActionUploadingVideo : ChatAction {

    /**
     * Upload progress, as a percentage
     */
    public int32 progress { get; construct set; }

    public ChatActionUploadingVideo (
        int32 progress
    ) {
        Object (
            progress: progress,
            tdlib_type: "chatActionUploadingVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is recording a voice note
 */
public class TDLib.ChatActionRecordingVoiceNote : ChatAction {

    public ChatActionRecordingVoiceNote () {
        Object (
            tdlib_type: "chatActionRecordingVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is uploading a voice note
 */
public class TDLib.ChatActionUploadingVoiceNote : ChatAction {

    /**
     * Upload progress, as a percentage
     */
    public int32 progress { get; construct set; }

    public ChatActionUploadingVoiceNote (
        int32 progress
    ) {
        Object (
            progress: progress,
            tdlib_type: "chatActionUploadingVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is uploading a photo
 */
public class TDLib.ChatActionUploadingPhoto : ChatAction {

    /**
     * Upload progress, as a percentage
     */
    public int32 progress { get; construct set; }

    public ChatActionUploadingPhoto (
        int32 progress
    ) {
        Object (
            progress: progress,
            tdlib_type: "chatActionUploadingPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is uploading a document
 */
public class TDLib.ChatActionUploadingDocument : ChatAction {

    /**
     * Upload progress, as a percentage
     */
    public int32 progress { get; construct set; }

    public ChatActionUploadingDocument (
        int32 progress
    ) {
        Object (
            progress: progress,
            tdlib_type: "chatActionUploadingDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is picking a sticker to send
 */
public class TDLib.ChatActionChoosingSticker : ChatAction {

    public ChatActionChoosingSticker () {
        Object (
            tdlib_type: "chatActionChoosingSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is picking a location or venue to send
 */
public class TDLib.ChatActionChoosingLocation : ChatAction {

    public ChatActionChoosingLocation () {
        Object (
            tdlib_type: "chatActionChoosingLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is picking a contact to send
 */
public class TDLib.ChatActionChoosingContact : ChatAction {

    public ChatActionChoosingContact () {
        Object (
            tdlib_type: "chatActionChoosingContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user has started to play a game
 */
public class TDLib.ChatActionStartPlayingGame : ChatAction {

    public ChatActionStartPlayingGame () {
        Object (
            tdlib_type: "chatActionStartPlayingGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is recording a video note
 */
public class TDLib.ChatActionRecordingVideoNote : ChatAction {

    public ChatActionRecordingVideoNote () {
        Object (
            tdlib_type: "chatActionRecordingVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is uploading a video note
 */
public class TDLib.ChatActionUploadingVideoNote : ChatAction {

    /**
     * Upload progress, as a percentage
     */
    public int32 progress { get; construct set; }

    public ChatActionUploadingVideoNote (
        int32 progress
    ) {
        Object (
            progress: progress,
            tdlib_type: "chatActionUploadingVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is watching animations sent by the other party by clicking on
 * an animated emoji
 */
public class TDLib.ChatActionWatchingAnimations : ChatAction {

    /**
     * The animated emoji
     */
    public string emoji { get; construct set; }

    public ChatActionWatchingAnimations (
        string emoji
    ) {
        Object (
            emoji: emoji,
            tdlib_type: "chatActionWatchingAnimations",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user has canceled the previous action
 */
public class TDLib.ChatActionCancel : ChatAction {

    public ChatActionCancel () {
        Object (
            tdlib_type: "chatActionCancel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
