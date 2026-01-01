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
 * Describes a tab shown in a user or a chat profile
 */
public abstract class TDLib.ProfileTab : Error {}

/**
 * A tab with stories posted by the user or the channel chat and saved to
 * profile
 */
public class TDLib.ProfileTabPosts : ProfileTab {

    public ProfileTabPosts () {
        Object (
            tdlib_type: "profileTabPosts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A tab with gifts received by the user or the channel chat
 */
public class TDLib.ProfileTabGifts : ProfileTab {

    public ProfileTabGifts () {
        Object (
            tdlib_type: "profileTabGifts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A tab with photos and videos posted by the channel
 */
public class TDLib.ProfileTabMedia : ProfileTab {

    public ProfileTabMedia () {
        Object (
            tdlib_type: "profileTabMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A tab with documents posted by the channel
 */
public class TDLib.ProfileTabFiles : ProfileTab {

    public ProfileTabFiles () {
        Object (
            tdlib_type: "profileTabFiles",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A tab with messages posted by the channel and containing links
 */
public class TDLib.ProfileTabLinks : ProfileTab {

    public ProfileTabLinks () {
        Object (
            tdlib_type: "profileTabLinks",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A tab with audio messages posted by the channel
 */
public class TDLib.ProfileTabMusic : ProfileTab {

    public ProfileTabMusic () {
        Object (
            tdlib_type: "profileTabMusic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A tab with voice notes posted by the channel
 */
public class TDLib.ProfileTabVoice : ProfileTab {

    public ProfileTabVoice () {
        Object (
            tdlib_type: "profileTabVoice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A tab with animations posted by the channel
 */
public class TDLib.ProfileTabGifs : ProfileTab {

    public ProfileTabGifs () {
        Object (
            tdlib_type: "profileTabGifs",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
