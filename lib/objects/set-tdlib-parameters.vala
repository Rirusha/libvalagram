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
 * Sets the parameters for TDLib initialization. Works only when the
 * current authorization state is authorizationStateWaitTdlibParameters
 */
public class TDLib.SetTdlibParameters : TDObject {

    /**
     * Pass true to use Telegram test environment instead of the production
     * environment
     */
    public bool use_test_dc { get; construct set; }

    /**
     * The path to the directory for the persistent database; if empty, the
     * current working directory will be used
     */
    public string database_directory { get; construct set; }

    /**
     * The path to the directory for storing files; if empty,
     * database_directory will be used
     */
    public string files_directory { get; construct set; }

    /**
     * Encryption key for the database. If the encryption key is invalid,
     * then an error with code 401 will be returned
     */
    public Bytes database_encryption_key { get; construct set; }

    /**
     * Pass true to keep information about downloaded and uploaded files
     * between application restarts
     */
    public bool use_file_database { get; construct set; }

    /**
     * Pass true to keep cache of users, basic groups, supergroups, channels
     * and secret chats between restarts. Implies use_file_database
     */
    public bool use_chat_info_database { get; construct set; }

    /**
     * Pass true to keep cache of chats and messages between restarts.
     * Implies use_chat_info_database
     */
    public bool use_message_database { get; construct set; }

    /**
     * Pass true to enable support for secret chats
     */
    public bool use_secret_chats { get; construct set; }

    /**
     * Application identifier for Telegram API access, which can be obtained
     * at [[https://my.telegram.org]]
     */
    public int32 api_id { get; construct set; }

    /**
     * Application identifier hash for Telegram API access, which can be
     * obtained at [[https://my.telegram.org]]
     */
    public string api_hash { get; construct set; }

    /**
     * IETF language tag of the user's operating system language; must be
     * non-empty
     */
    public string system_language_code { get; construct set; }

    /**
     * Model of the device the application is being run on; must be non-empty
     */
    public string device_model { get; construct set; }

    /**
     * Version of the operating system the application is being run on. If
     * empty, the version is automatically detected by TDLib
     */
    public string system_version { get; construct set; }

    /**
     * Application version; must be non-empty
     */
    public string application_version { get; construct set; }

    public SetTdlibParameters (
        bool use_test_dc,
        string database_directory,
        string files_directory,
        Bytes database_encryption_key,
        bool use_file_database,
        bool use_chat_info_database,
        bool use_message_database,
        bool use_secret_chats,
        int32 api_id,
        string api_hash,
        string system_language_code,
        string device_model,
        string system_version,
        string application_version
    ) {
        Object (
            use_test_dc: use_test_dc,
            database_directory: database_directory,
            files_directory: files_directory,
            database_encryption_key: database_encryption_key,
            use_file_database: use_file_database,
            use_chat_info_database: use_chat_info_database,
            use_message_database: use_message_database,
            use_secret_chats: use_secret_chats,
            api_id: api_id,
            api_hash: api_hash,
            system_language_code: system_language_code,
            device_model: device_model,
            system_version: system_version,
            application_version: application_version,
            tdlib_type: "setTdlibParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
