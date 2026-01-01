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
 * Represents the type of file
 */
public abstract class TDLib.FileType : Error {}

/**
 * The data is not a file
 */
public class TDLib.FileTypeNone : FileType {

    public FileTypeNone () {
        Object (
            tdlib_type: "fileTypeNone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is an animation
 */
public class TDLib.FileTypeAnimation : FileType {

    public FileTypeAnimation () {
        Object (
            tdlib_type: "fileTypeAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is an audio file
 */
public class TDLib.FileTypeAudio : FileType {

    public FileTypeAudio () {
        Object (
            tdlib_type: "fileTypeAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a document
 */
public class TDLib.FileTypeDocument : FileType {

    public FileTypeDocument () {
        Object (
            tdlib_type: "fileTypeDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a notification sound
 */
public class TDLib.FileTypeNotificationSound : FileType {

    public FileTypeNotificationSound () {
        Object (
            tdlib_type: "fileTypeNotificationSound",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a photo
 */
public class TDLib.FileTypePhoto : FileType {

    public FileTypePhoto () {
        Object (
            tdlib_type: "fileTypePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a photo published as a story
 */
public class TDLib.FileTypePhotoStory : FileType {

    public FileTypePhotoStory () {
        Object (
            tdlib_type: "fileTypePhotoStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a profile photo
 */
public class TDLib.FileTypeProfilePhoto : FileType {

    public FileTypeProfilePhoto () {
        Object (
            tdlib_type: "fileTypeProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file was sent to a secret chat (the file type is not known to the
 * server)
 */
public class TDLib.FileTypeSecret : FileType {

    public FileTypeSecret () {
        Object (
            tdlib_type: "fileTypeSecret",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a thumbnail of a file from a secret chat
 */
public class TDLib.FileTypeSecretThumbnail : FileType {

    public FileTypeSecretThumbnail () {
        Object (
            tdlib_type: "fileTypeSecretThumbnail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a file from Secure storage used for storing Telegram
 * Passport files
 */
public class TDLib.FileTypeSecure : FileType {

    public FileTypeSecure () {
        Object (
            tdlib_type: "fileTypeSecure",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a self-destructing photo in a private chat
 */
public class TDLib.FileTypeSelfDestructingPhoto : FileType {

    public FileTypeSelfDestructingPhoto () {
        Object (
            tdlib_type: "fileTypeSelfDestructingPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a self-destructing video in a private chat
 */
public class TDLib.FileTypeSelfDestructingVideo : FileType {

    public FileTypeSelfDestructingVideo () {
        Object (
            tdlib_type: "fileTypeSelfDestructingVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a self-destructing video note in a private chat
 */
public class TDLib.FileTypeSelfDestructingVideoNote : FileType {

    public FileTypeSelfDestructingVideoNote () {
        Object (
            tdlib_type: "fileTypeSelfDestructingVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a self-destructing voice note in a private chat
 */
public class TDLib.FileTypeSelfDestructingVoiceNote : FileType {

    public FileTypeSelfDestructingVoiceNote () {
        Object (
            tdlib_type: "fileTypeSelfDestructingVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a sticker
 */
public class TDLib.FileTypeSticker : FileType {

    public FileTypeSticker () {
        Object (
            tdlib_type: "fileTypeSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a thumbnail of another file
 */
public class TDLib.FileTypeThumbnail : FileType {

    public FileTypeThumbnail () {
        Object (
            tdlib_type: "fileTypeThumbnail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file type is not yet known
 */
public class TDLib.FileTypeUnknown : FileType {

    public FileTypeUnknown () {
        Object (
            tdlib_type: "fileTypeUnknown",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a video
 */
public class TDLib.FileTypeVideo : FileType {

    public FileTypeVideo () {
        Object (
            tdlib_type: "fileTypeVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a video note
 */
public class TDLib.FileTypeVideoNote : FileType {

    public FileTypeVideoNote () {
        Object (
            tdlib_type: "fileTypeVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a video published as a story
 */
public class TDLib.FileTypeVideoStory : FileType {

    public FileTypeVideoStory () {
        Object (
            tdlib_type: "fileTypeVideoStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a voice note
 */
public class TDLib.FileTypeVoiceNote : FileType {

    public FileTypeVoiceNote () {
        Object (
            tdlib_type: "fileTypeVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file is a wallpaper or a background pattern
 */
public class TDLib.FileTypeWallpaper : FileType {

    public FileTypeWallpaper () {
        Object (
            tdlib_type: "fileTypeWallpaper",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
