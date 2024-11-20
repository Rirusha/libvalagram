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
 * Imports messages exported from another app
 */
internal class TDLib.ImportMessages : TDObject {

    /**
     * Identifier of a chat to which the messages will be imported. It must
     * be an identifier of a private chat with a mutual contact or an
     * identifier of a supergroup chat with can_change_info member right
     */
    public int64 chat_id { get; construct set; }

    /**
     * File with messages to import. Only inputFileLocal and
     * inputFileGenerated are supported. The file must not be previously
     * uploaded
     */
    public InputFile message_file { get; construct set; }

    /**
     * Files used in the imported messages. Only inputFileLocal and
     * inputFileGenerated are supported. The files must not be previously
     * uploaded
     */
    public Gee.ArrayList<InputFile?> attached_files { get; construct set; default = new Gee.ArrayList<InputFile?> (); }

    public ImportMessages (
        int64 chat_id,
        InputFile message_file,
        Gee.ArrayList<InputFile?> attached_files
    ) {
        Object (
            chat_id: chat_id,
            message_file: message_file,
            attached_files: attached_files,
            tdlib_type: "importMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
