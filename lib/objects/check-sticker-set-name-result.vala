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
 * Represents result of checking whether a name can be used for a new
 * sticker set
 */
public abstract class TDLib.CheckStickerSetNameResult : Error {}

/**
 * The name can be set
 */
public class TDLib.CheckStickerSetNameResultOk : CheckStickerSetNameResult {

    public CheckStickerSetNameResultOk () {
        Object (
            tdlib_type: "checkStickerSetNameResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The name is invalid
 */
public class TDLib.CheckStickerSetNameResultNameInvalid : CheckStickerSetNameResult {

    public CheckStickerSetNameResultNameInvalid () {
        Object (
            tdlib_type: "checkStickerSetNameResultNameInvalid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The name is occupied
 */
public class TDLib.CheckStickerSetNameResultNameOccupied : CheckStickerSetNameResult {

    public CheckStickerSetNameResultNameOccupied () {
        Object (
            tdlib_type: "checkStickerSetNameResultNameOccupied",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
