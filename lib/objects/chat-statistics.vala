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
 * Contains a detailed statistics about a chat
 */
public abstract class TDLib.ChatStatistics : Error {}

/**
 * A detailed statistics about a supergroup chat
 */
public class TDLib.ChatStatisticsSupergroup : ChatStatistics {

    /**
     * A period to which the statistics applies
     */
    public DateRange period { get; construct set; }

    /**
     * Number of members in the chat
     */
    public StatisticalValue member_count { get; construct set; }

    /**
     * Number of messages sent to the chat
     */
    public StatisticalValue message_count { get; construct set; }

    /**
     * Number of users who viewed messages in the chat
     */
    public StatisticalValue viewer_count { get; construct set; }

    /**
     * Number of users who sent messages to the chat
     */
    public StatisticalValue sender_count { get; construct set; }

    /**
     * A graph containing number of members in the chat
     */
    public StatisticalGraph member_count_graph { get; construct set; }

    /**
     * A graph containing number of members joined and left the chat
     */
    public StatisticalGraph join_graph { get; construct set; }

    /**
     * A graph containing number of new member joins per source
     */
    public StatisticalGraph join_by_source_graph { get; construct set; }

    /**
     * A graph containing distribution of active users per language
     */
    public StatisticalGraph language_graph { get; construct set; }

    /**
     * A graph containing distribution of sent messages by content type
     */
    public StatisticalGraph message_content_graph { get; construct set; }

    /**
     * A graph containing number of different actions in the chat
     */
    public StatisticalGraph action_graph { get; construct set; }

    /**
     * A graph containing distribution of message views per hour
     */
    public StatisticalGraph day_graph { get; construct set; }

    /**
     * A graph containing distribution of message views per day of week
     */
    public StatisticalGraph week_graph { get; construct set; }

    /**
     * List of users sent most messages in the last week
     */
    public Gee.ArrayList<ChatStatisticsMessageSenderInfo?> top_senders { get; construct set; default = new Gee.ArrayList<ChatStatisticsMessageSenderInfo?> (); }

    /**
     * List of most active administrators in the last week
     */
    public Gee.ArrayList<ChatStatisticsAdministratorActionsInfo?> top_administrators { get; construct set; default = new Gee.ArrayList<ChatStatisticsAdministratorActionsInfo?> (); }

    /**
     * List of most active inviters of new members in the last week
     */
    public Gee.ArrayList<ChatStatisticsInviterInfo?> top_inviters { get; construct set; default = new Gee.ArrayList<ChatStatisticsInviterInfo?> (); }

    public ChatStatisticsSupergroup (
        DateRange period,
        StatisticalValue member_count,
        StatisticalValue message_count,
        StatisticalValue viewer_count,
        StatisticalValue sender_count,
        StatisticalGraph member_count_graph,
        StatisticalGraph join_graph,
        StatisticalGraph join_by_source_graph,
        StatisticalGraph language_graph,
        StatisticalGraph message_content_graph,
        StatisticalGraph action_graph,
        StatisticalGraph day_graph,
        StatisticalGraph week_graph,
        Gee.ArrayList<ChatStatisticsMessageSenderInfo?> top_senders,
        Gee.ArrayList<ChatStatisticsAdministratorActionsInfo?> top_administrators,
        Gee.ArrayList<ChatStatisticsInviterInfo?> top_inviters
    ) {
        Object (
            period: period,
            member_count: member_count,
            message_count: message_count,
            viewer_count: viewer_count,
            sender_count: sender_count,
            member_count_graph: member_count_graph,
            join_graph: join_graph,
            join_by_source_graph: join_by_source_graph,
            language_graph: language_graph,
            message_content_graph: message_content_graph,
            action_graph: action_graph,
            day_graph: day_graph,
            week_graph: week_graph,
            top_senders: top_senders,
            top_administrators: top_administrators,
            top_inviters: top_inviters,
            tdlib_type: "chatStatisticsSupergroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A detailed statistics about a channel chat
 */
public class TDLib.ChatStatisticsChannel : ChatStatistics {

    /**
     * A period to which the statistics applies
     */
    public DateRange period { get; construct set; }

    /**
     * Number of members in the chat
     */
    public StatisticalValue member_count { get; construct set; }

    /**
     * Mean number of times the recently sent messages were viewed
     */
    public StatisticalValue mean_message_view_count { get; construct set; }

    /**
     * Mean number of times the recently sent messages were shared
     */
    public StatisticalValue mean_message_share_count { get; construct set; }

    /**
     * Mean number of times reactions were added to the recently sent
     * messages
     */
    public StatisticalValue mean_message_reaction_count { get; construct set; }

    /**
     * Mean number of times the recently posted stories were viewed
     */
    public StatisticalValue mean_story_view_count { get; construct set; }

    /**
     * Mean number of times the recently posted stories were shared
     */
    public StatisticalValue mean_story_share_count { get; construct set; }

    /**
     * Mean number of times reactions were added to the recently posted
     * stories
     */
    public StatisticalValue mean_story_reaction_count { get; construct set; }

    /**
     * A percentage of users with enabled notifications for the chat; 0-100
     */
    public double enabled_notifications_percentage { get; construct set; }

    /**
     * A graph containing number of members in the chat
     */
    public StatisticalGraph member_count_graph { get; construct set; }

    /**
     * A graph containing number of members joined and left the chat
     */
    public StatisticalGraph join_graph { get; construct set; }

    /**
     * A graph containing number of members muted and unmuted the chat
     */
    public StatisticalGraph mute_graph { get; construct set; }

    /**
     * A graph containing number of message views in a given hour in the last
     * two weeks
     */
    public StatisticalGraph view_count_by_hour_graph { get; construct set; }

    /**
     * A graph containing number of message views per source
     */
    public StatisticalGraph view_count_by_source_graph { get; construct set; }

    /**
     * A graph containing number of new member joins per source
     */
    public StatisticalGraph join_by_source_graph { get; construct set; }

    /**
     * A graph containing number of users viewed chat messages per language
     */
    public StatisticalGraph language_graph { get; construct set; }

    /**
     * A graph containing number of chat message views and shares
     */
    public StatisticalGraph message_interaction_graph { get; construct set; }

    /**
     * A graph containing number of reactions on messages
     */
    public StatisticalGraph message_reaction_graph { get; construct set; }

    /**
     * A graph containing number of story views and shares
     */
    public StatisticalGraph story_interaction_graph { get; construct set; }

    /**
     * A graph containing number of reactions on stories
     */
    public StatisticalGraph story_reaction_graph { get; construct set; }

    /**
     * A graph containing number of views of associated with the chat instant
     * views
     */
    public StatisticalGraph instant_view_interaction_graph { get; construct set; }

    /**
     * Detailed statistics about number of views and shares of recently sent
     * messages and posted stories
     */
    public Gee.ArrayList<ChatStatisticsInteractionInfo?> recent_interactions { get; construct set; default = new Gee.ArrayList<ChatStatisticsInteractionInfo?> (); }

    public ChatStatisticsChannel (
        DateRange period,
        StatisticalValue member_count,
        StatisticalValue mean_message_view_count,
        StatisticalValue mean_message_share_count,
        StatisticalValue mean_message_reaction_count,
        StatisticalValue mean_story_view_count,
        StatisticalValue mean_story_share_count,
        StatisticalValue mean_story_reaction_count,
        double enabled_notifications_percentage,
        StatisticalGraph member_count_graph,
        StatisticalGraph join_graph,
        StatisticalGraph mute_graph,
        StatisticalGraph view_count_by_hour_graph,
        StatisticalGraph view_count_by_source_graph,
        StatisticalGraph join_by_source_graph,
        StatisticalGraph language_graph,
        StatisticalGraph message_interaction_graph,
        StatisticalGraph message_reaction_graph,
        StatisticalGraph story_interaction_graph,
        StatisticalGraph story_reaction_graph,
        StatisticalGraph instant_view_interaction_graph,
        Gee.ArrayList<ChatStatisticsInteractionInfo?> recent_interactions
    ) {
        Object (
            period: period,
            member_count: member_count,
            mean_message_view_count: mean_message_view_count,
            mean_message_share_count: mean_message_share_count,
            mean_message_reaction_count: mean_message_reaction_count,
            mean_story_view_count: mean_story_view_count,
            mean_story_share_count: mean_story_share_count,
            mean_story_reaction_count: mean_story_reaction_count,
            enabled_notifications_percentage: enabled_notifications_percentage,
            member_count_graph: member_count_graph,
            join_graph: join_graph,
            mute_graph: mute_graph,
            view_count_by_hour_graph: view_count_by_hour_graph,
            view_count_by_source_graph: view_count_by_source_graph,
            join_by_source_graph: join_by_source_graph,
            language_graph: language_graph,
            message_interaction_graph: message_interaction_graph,
            message_reaction_graph: message_reaction_graph,
            story_interaction_graph: story_interaction_graph,
            story_reaction_graph: story_reaction_graph,
            instant_view_interaction_graph: instant_view_interaction_graph,
            recent_interactions: recent_interactions,
            tdlib_type: "chatStatisticsChannel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
