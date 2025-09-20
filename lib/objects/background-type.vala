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
 * Describes the type of background
 */
public abstract class TDLib.BackgroundType : Error {}

/**
 * A wallpaper in JPEG format
 */
public class TDLib.BackgroundTypeWallpaper : BackgroundType {

    /**
     * True, if the wallpaper must be downscaled to fit in 450x450 square and
     * then box-blurred with radius 12
     */
    public bool is_blurred { get; construct set; }

    /**
     * True, if the background needs to be slightly moved when device is
     * tilted
     */
    public bool is_moving { get; construct set; }

    public BackgroundTypeWallpaper (
        bool is_blurred,
        bool is_moving
    ) {
        Object (
            is_blurred: is_blurred,
            is_moving: is_moving,
            tdlib_type: "backgroundTypeWallpaper",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A PNG or TGV (gzipped subset of SVG with MIME type
 * "application/x-tgwallpattern") pattern to be combined with the
 * background fill chosen by the user
 */
public class TDLib.BackgroundTypePattern : BackgroundType {

    /**
     * Fill of the background
     */
    public BackgroundFill fill { get; construct set; }

    /**
     * Intensity of the pattern when it is shown above the filled background;
     * 0-100
     */
    public int32 intensity { get; construct set; }

    /**
     * True, if the background fill must be applied only to the pattern
     * itself. All other pixels are black in this case. For dark themes only
     */
    public bool is_inverted { get; construct set; }

    /**
     * True, if the background needs to be slightly moved when device is
     * tilted
     */
    public bool is_moving { get; construct set; }

    public BackgroundTypePattern (
        BackgroundFill fill,
        int32 intensity,
        bool is_inverted,
        bool is_moving
    ) {
        Object (
            fill: fill,
            intensity: intensity,
            is_inverted: is_inverted,
            is_moving: is_moving,
            tdlib_type: "backgroundTypePattern",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A filled background
 */
public class TDLib.BackgroundTypeFill : BackgroundType {

    /**
     * The background fill
     */
    public BackgroundFill fill { get; construct set; }

    public BackgroundTypeFill (
        BackgroundFill fill
    ) {
        Object (
            fill: fill,
            tdlib_type: "backgroundTypeFill",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A background from a chat theme based on an emoji; can be used only as
 * a chat background in channels
 */
public class TDLib.BackgroundTypeChatTheme : BackgroundType {

    /**
     * Name of the emoji chat theme
     */
    public string theme_name { get; construct set; }

    public BackgroundTypeChatTheme (
        string theme_name
    ) {
        Object (
            theme_name: theme_name,
            tdlib_type: "backgroundTypeChatTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
