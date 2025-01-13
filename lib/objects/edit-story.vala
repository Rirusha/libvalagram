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
 * Changes content and caption of a story. Can be called only if
 * story.can_be_edited == true
 */
public class TDLib.EditStory : TDObject {

    /**
     * Identifier of the chat that posted the story
     */
    public int64 story_sender_chat_id { get; construct set; }

    /**
     * Identifier of the story to edit
     */
    public int32 story_id { get; construct set; }

    /**
     * New content of the story; pass null to keep the current content
     */
    public InputStoryContent content { get; construct set; }

    /**
     * New clickable rectangle areas to be shown on the story media; pass
     * null to keep the current areas. Areas can't be edited if story content
     * isn't changed
     */
    public InputStoryAreas areas { get; construct set; }

    /**
     * New story caption; pass null to keep the current caption
     */
    public FormattedText caption { get; construct set; }

    public EditStory (
        int64 story_sender_chat_id,
        int32 story_id,
        InputStoryContent content,
        InputStoryAreas areas,
        FormattedText caption
    ) {
        Object (
            story_sender_chat_id: story_sender_chat_id,
            story_id: story_id,
            content: content,
            areas: areas,
            caption: caption,
            tdlib_type: "editStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
