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
 * Describes a story feature available to Premium users
 */
public abstract class TDLib.PremiumStoryFeature : Error {}

/**
 * Stories of the current user are displayed before stories of
 * non-Premium contacts, supergroups, and channels
 */
public class TDLib.PremiumStoryFeaturePriorityOrder : PremiumStoryFeature {

    public PremiumStoryFeaturePriorityOrder () {
        Object (
            tdlib_type: "premiumStoryFeaturePriorityOrder",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to hide the fact that the user viewed other's stories
 */
public class TDLib.PremiumStoryFeatureStealthMode : PremiumStoryFeature {

    public PremiumStoryFeatureStealthMode () {
        Object (
            tdlib_type: "premiumStoryFeatureStealthMode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to check who opened the current user's stories after they
 * expire
 */
public class TDLib.PremiumStoryFeaturePermanentViewsHistory : PremiumStoryFeature {

    public PremiumStoryFeaturePermanentViewsHistory () {
        Object (
            tdlib_type: "premiumStoryFeaturePermanentViewsHistory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to set custom expiration duration for stories
 */
public class TDLib.PremiumStoryFeatureCustomExpirationDuration : PremiumStoryFeature {

    public PremiumStoryFeatureCustomExpirationDuration () {
        Object (
            tdlib_type: "premiumStoryFeatureCustomExpirationDuration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to save other's unprotected stories
 */
public class TDLib.PremiumStoryFeatureSaveStories : PremiumStoryFeature {

    public PremiumStoryFeatureSaveStories () {
        Object (
            tdlib_type: "premiumStoryFeatureSaveStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to use links and formatting in story caption, and use
 * inputStoryAreaTypeLink areas
 */
public class TDLib.PremiumStoryFeatureLinksAndFormatting : PremiumStoryFeature {

    public PremiumStoryFeatureLinksAndFormatting () {
        Object (
            tdlib_type: "premiumStoryFeatureLinksAndFormatting",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to choose better quality for viewed stories
 */
public class TDLib.PremiumStoryFeatureVideoQuality : PremiumStoryFeature {

    public PremiumStoryFeatureVideoQuality () {
        Object (
            tdlib_type: "premiumStoryFeatureVideoQuality",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
