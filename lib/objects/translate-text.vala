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
 * Translates a text to the given language. If the current user is a
 * Telegram Premium user, then text formatting is preserved
 */
internal class TDLib.TranslateText : TDObject {

    /**
     * Text to translate
     */
    public FormattedText text { get; construct set; }

    /**
     * Language code of the language to which the message is translated. Must
     * be one of
     * "af", "sq", "am", "ar", "hy", "az", "eu", "be", "bn", "bs", "bg",
     * "ca", "ceb", "zh-CN", "zh", "zh-Hans", "zh-TW", "zh-Hant", "co", "hr",
     * "cs", "da", "nl", "en", "eo", "et",
     * "fi", "fr", "fy", "gl", "ka", "de", "el", "gu", "ht", "ha", "haw",
     * "he", "iw", "hi", "hmn", "hu", "is", "ig", "id", "in", "ga", "it",
     * "ja", "jv", "kn", "kk", "km", "rw", "ko",
     * "ku", "ky", "lo", "la", "lv", "lt", "lb", "mk", "mg", "ms", "ml",
     * "mt", "mi", "mr", "mn", "my", "ne", "no", "ny", "or", "ps", "fa",
     * "pl", "pt", "pa", "ro", "ru", "sm", "gd", "sr",
     * "st", "sn", "sd", "si", "sk", "sl", "so", "es", "su", "sw", "sv",
     * "tl", "tg", "ta", "tt", "te", "th", "tr", "tk", "uk", "ur", "ug",
     * "uz", "vi", "cy", "xh", "yi", "ji", "yo", "zu"
     */
    public string to_language_code { get; construct set; }

    public TranslateText (
        FormattedText text,
        string to_language_code
    ) {
        Object (
            text: text,
            to_language_code: to_language_code,
            tdlib_type: "translateText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
