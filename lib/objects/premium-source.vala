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
 * Describes a source from which the Premium features screen is opened
 */
public abstract class TDLib.PremiumSource : Error {}

/**
 * A limit was exceeded
 */
public class TDLib.PremiumSourceLimitExceeded : PremiumSource {

    /**
     * Type of the exceeded limit
     */
    public PremiumLimitType limit_type { get; construct set; }

    public PremiumSourceLimitExceeded (
        PremiumLimitType limit_type
    ) {
        Object (
            limit_type: limit_type,
            tdlib_type: "premiumSourceLimitExceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user tried to use a Premium feature
 */
public class TDLib.PremiumSourceFeature : PremiumSource {

    /**
     * The used feature
     */
    public PremiumFeature feature { get; construct set; }

    public PremiumSourceFeature (
        PremiumFeature feature
    ) {
        Object (
            feature: feature,
            tdlib_type: "premiumSourceFeature",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user tried to use a Business feature
 */
public class TDLib.PremiumSourceBusinessFeature : PremiumSource {

    /**
     * The used feature; pass null if none specific feature was used
     */
    public BusinessFeature feature { get; construct set; }

    public PremiumSourceBusinessFeature (
        BusinessFeature feature
    ) {
        Object (
            feature: feature,
            tdlib_type: "premiumSourceBusinessFeature",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user tried to use a Premium story feature
 */
public class TDLib.PremiumSourceStoryFeature : PremiumSource {

    /**
     * The used feature
     */
    public PremiumStoryFeature feature { get; construct set; }

    public PremiumSourceStoryFeature (
        PremiumStoryFeature feature
    ) {
        Object (
            feature: feature,
            tdlib_type: "premiumSourceStoryFeature",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user opened an internal link of the type
 * internalLinkTypePremiumFeatures
 */
public class TDLib.PremiumSourceLink : PremiumSource {

    /**
     * The referrer from the link
     */
    public string referrer { get; construct set; }

    public PremiumSourceLink (
        string referrer
    ) {
        Object (
            referrer: referrer,
            tdlib_type: "premiumSourceLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user opened the Premium features screen from settings
 */
public class TDLib.PremiumSourceSettings : PremiumSource {

    public PremiumSourceSettings () {
        Object (
            tdlib_type: "premiumSourceSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
