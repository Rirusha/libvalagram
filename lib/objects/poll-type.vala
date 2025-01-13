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
 * Describes the type of poll
 */
public abstract class TDLib.PollType : Error {}

/**
 * A regular poll
 */
public class TDLib.PollTypeRegular : PollType {

    /**
     * True, if multiple answer options can be chosen simultaneously
     */
    public bool allow_multiple_answers { get; construct set; }

    public PollTypeRegular (
        bool allow_multiple_answers
    ) {
        Object (
            allow_multiple_answers: allow_multiple_answers,
            tdlib_type: "pollTypeRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A poll in quiz mode, which has exactly one correct answer option and
 * can be answered only once
 */
public class TDLib.PollTypeQuiz : PollType {

    /**
     * 0-based identifier of the correct answer option; -1 for a yet
     * unanswered poll
     */
    public int32 correct_option_id { get; construct set; }

    /**
     * Text that is shown when the user chooses an incorrect answer or taps
     * on the lamp icon; 0-200 characters with at most 2 line feeds; empty
     * for a yet unanswered poll
     */
    public FormattedText explanation { get; construct set; }

    public PollTypeQuiz (
        int32 correct_option_id,
        FormattedText explanation
    ) {
        Object (
            correct_option_id: correct_option_id,
            explanation: explanation,
            tdlib_type: "pollTypeQuiz",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
