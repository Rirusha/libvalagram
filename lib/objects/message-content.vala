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
 * Contains the content of a message
 */
public abstract class TDLib.MessageContent : Error {}

/**
 * A text message
 */
public class TDLib.MessageText : MessageContent {

    /**
     * Text of the message
     */
    public FormattedText text { get; construct set; }

    /**
     * A link preview attached to the message; may be null
     */
    public LinkPreview? link_preview { get; construct set; }

    /**
     * Options which were used for generation of the link preview; may be
     * null if default options were used
     */
    public LinkPreviewOptions? link_preview_options { get; construct set; }

    public MessageText (
        FormattedText text,
        LinkPreview? link_preview,
        LinkPreviewOptions? link_preview_options
    ) {
        Object (
            text: text,
            link_preview: link_preview,
            link_preview_options: link_preview_options,
            tdlib_type: "messageText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An animation message (GIF-style).
 */
public class TDLib.MessageAnimation : MessageContent {

    /**
     * The animation description
     */
    public Animation animation { get; construct set; }

    /**
     * Animation caption
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the animation; otherwise, the
     * caption must be shown below the animation
     */
    public bool show_caption_above_media { get; construct set; }

    /**
     * True, if the animation preview must be covered by a spoiler animation
     */
    public bool has_spoiler { get; construct set; }

    /**
     * True, if the animation thumbnail must be blurred and the animation
     * must be shown only while tapped
     */
    public bool is_secret { get; construct set; }

    public MessageAnimation (
        Animation animation,
        FormattedText caption,
        bool show_caption_above_media,
        bool has_spoiler,
        bool is_secret
    ) {
        Object (
            animation: animation,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            has_spoiler: has_spoiler,
            is_secret: is_secret,
            tdlib_type: "messageAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An audio message
 */
public class TDLib.MessageAudio : MessageContent {

    /**
     * The audio description
     */
    public Audio audio { get; construct set; }

    /**
     * Audio caption
     */
    public FormattedText caption { get; construct set; }

    public MessageAudio (
        Audio audio,
        FormattedText caption
    ) {
        Object (
            audio: audio,
            caption: caption,
            tdlib_type: "messageAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A document message (general file)
 */
public class TDLib.MessageDocument : MessageContent {

    /**
     * The document description
     */
    public Document document { get; construct set; }

    /**
     * Document caption
     */
    public FormattedText caption { get; construct set; }

    public MessageDocument (
        Document document,
        FormattedText caption
    ) {
        Object (
            document: document,
            caption: caption,
            tdlib_type: "messageDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with paid media
 */
public class TDLib.MessagePaidMedia : MessageContent {

    /**
     * Number of Telegram Stars needed to buy access to the media in the
     * message
     */
    public int64 star_count { get; construct set; }

    /**
     * Information about the media
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    /**
     * Media caption
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the media; otherwise, the
     * caption must be shown below the media
     */
    public bool show_caption_above_media { get; construct set; }

    public MessagePaidMedia (
        int64 star_count,
        Gee.ArrayList<PaidMedia?> media,
        FormattedText caption,
        bool show_caption_above_media
    ) {
        Object (
            star_count: star_count,
            media: media,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            tdlib_type: "messagePaidMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A photo message
 */
public class TDLib.MessagePhoto : MessageContent {

    /**
     * The photo
     */
    public Photo photo { get; construct set; }

    /**
     * Photo caption
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the photo; otherwise, the
     * caption must be shown below the photo
     */
    public bool show_caption_above_media { get; construct set; }

    /**
     * True, if the photo preview must be covered by a spoiler animation
     */
    public bool has_spoiler { get; construct set; }

    /**
     * True, if the photo must be blurred and must be shown only while tapped
     */
    public bool is_secret { get; construct set; }

    public MessagePhoto (
        Photo photo,
        FormattedText caption,
        bool show_caption_above_media,
        bool has_spoiler,
        bool is_secret
    ) {
        Object (
            photo: photo,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            has_spoiler: has_spoiler,
            is_secret: is_secret,
            tdlib_type: "messagePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A sticker message
 */
public class TDLib.MessageSticker : MessageContent {

    /**
     * The sticker description
     */
    public Sticker sticker { get; construct set; }

    /**
     * True, if premium animation of the sticker must be played
     */
    public bool is_premium { get; construct set; }

    public MessageSticker (
        Sticker sticker,
        bool is_premium
    ) {
        Object (
            sticker: sticker,
            is_premium: is_premium,
            tdlib_type: "messageSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video message
 */
public class TDLib.MessageVideo : MessageContent {

    /**
     * The video description
     */
    public Video video { get; construct set; }

    /**
     * Alternative qualities of the video
     */
    public Gee.ArrayList<AlternativeVideo?> alternative_videos { get; construct set; default = new Gee.ArrayList<AlternativeVideo?> (); }

    /**
     * Available storyboards for the video
     */
    public Gee.ArrayList<VideoStoryboard?> storyboards { get; construct set; default = new Gee.ArrayList<VideoStoryboard?> (); }

    /**
     * Cover of the video; may be null if none
     */
    public Photo? cover { get; construct set; }

    /**
     * Timestamp from which the video playing must start, in seconds
     */
    public int32 start_timestamp { get; construct set; }

    /**
     * Video caption
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the video; otherwise, the
     * caption must be shown below the video
     */
    public bool show_caption_above_media { get; construct set; }

    /**
     * True, if the video preview must be covered by a spoiler animation
     */
    public bool has_spoiler { get; construct set; }

    /**
     * True, if the video thumbnail must be blurred and the video must be
     * shown only while tapped
     */
    public bool is_secret { get; construct set; }

    public MessageVideo (
        Video video,
        Gee.ArrayList<AlternativeVideo?> alternative_videos,
        Gee.ArrayList<VideoStoryboard?> storyboards,
        Photo? cover,
        int32 start_timestamp,
        FormattedText caption,
        bool show_caption_above_media,
        bool has_spoiler,
        bool is_secret
    ) {
        Object (
            video: video,
            alternative_videos: alternative_videos,
            storyboards: storyboards,
            cover: cover,
            start_timestamp: start_timestamp,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            has_spoiler: has_spoiler,
            is_secret: is_secret,
            tdlib_type: "messageVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video note message
 */
public class TDLib.MessageVideoNote : MessageContent {

    /**
     * The video note description
     */
    public VideoNote video_note { get; construct set; }

    /**
     * True, if at least one of the recipients has viewed the video note
     */
    public bool is_viewed { get; construct set; }

    /**
     * True, if the video note thumbnail must be blurred and the video note
     * must be shown only while tapped
     */
    public bool is_secret { get; construct set; }

    public MessageVideoNote (
        VideoNote video_note,
        bool is_viewed,
        bool is_secret
    ) {
        Object (
            video_note: video_note,
            is_viewed: is_viewed,
            is_secret: is_secret,
            tdlib_type: "messageVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A voice note message
 */
public class TDLib.MessageVoiceNote : MessageContent {

    /**
     * The voice note description
     */
    public VoiceNote voice_note { get; construct set; }

    /**
     * Voice note caption
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if at least one of the recipients has listened to the voice note
     */
    public bool is_listened { get; construct set; }

    public MessageVoiceNote (
        VoiceNote voice_note,
        FormattedText caption,
        bool is_listened
    ) {
        Object (
            voice_note: voice_note,
            caption: caption,
            is_listened: is_listened,
            tdlib_type: "messageVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A self-destructed photo message
 */
public class TDLib.MessageExpiredPhoto : MessageContent {

    public MessageExpiredPhoto () {
        Object (
            tdlib_type: "messageExpiredPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A self-destructed video message
 */
public class TDLib.MessageExpiredVideo : MessageContent {

    public MessageExpiredVideo () {
        Object (
            tdlib_type: "messageExpiredVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A self-destructed video note message
 */
public class TDLib.MessageExpiredVideoNote : MessageContent {

    public MessageExpiredVideoNote () {
        Object (
            tdlib_type: "messageExpiredVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A self-destructed voice note message
 */
public class TDLib.MessageExpiredVoiceNote : MessageContent {

    public MessageExpiredVoiceNote () {
        Object (
            tdlib_type: "messageExpiredVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a location
 */
public class TDLib.MessageLocation : MessageContent {

    /**
     * The location description
     */
    public Location location { get; construct set; }

    /**
     * Time relative to the message send date, for which the location can be
     * updated, in seconds; if 0x7FFFFFFF, then location can be updated
     * forever
     */
    public int32 live_period { get; construct set; }

    /**
     * Left time for which the location can be updated, in seconds. If 0,
     * then the location can't be updated anymore. The update
     * updateMessageContent is not sent when this field changes
     */
    public int32 expires_in { get; construct set; }

    /**
     * For live locations, a direction in which the location moves, in
     * degrees; 1-360. If 0 the direction is unknown
     */
    public int32 heading { get; construct set; }

    /**
     * For live locations, a maximum distance to another chat member for
     * proximity alerts, in meters (0-100000). 0 if the notification is
     * disabled. Available only to the message sender
     */
    public int32 proximity_alert_radius { get; construct set; }

    public MessageLocation (
        Location location,
        int32 live_period,
        int32 expires_in,
        int32 heading,
        int32 proximity_alert_radius
    ) {
        Object (
            location: location,
            live_period: live_period,
            expires_in: expires_in,
            heading: heading,
            proximity_alert_radius: proximity_alert_radius,
            tdlib_type: "messageLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with information about a venue
 */
public class TDLib.MessageVenue : MessageContent {

    /**
     * The venue description
     */
    public Venue venue { get; construct set; }

    public MessageVenue (
        Venue venue
    ) {
        Object (
            venue: venue,
            tdlib_type: "messageVenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a user contact
 */
public class TDLib.MessageContact : MessageContent {

    /**
     * The contact description
     */
    public Contact contact { get; construct set; }

    public MessageContact (
        Contact contact
    ) {
        Object (
            contact: contact,
            tdlib_type: "messageContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with an animated emoji
 */
public class TDLib.MessageAnimatedEmoji : MessageContent {

    /**
     * The animated emoji
     */
    public AnimatedEmoji animated_emoji { get; construct set; }

    /**
     * The corresponding emoji
     */
    public string emoji { get; construct set; }

    public MessageAnimatedEmoji (
        AnimatedEmoji animated_emoji,
        string emoji
    ) {
        Object (
            animated_emoji: animated_emoji,
            emoji: emoji,
            tdlib_type: "messageAnimatedEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A dice message. The dice value is randomly generated by the server
 */
public class TDLib.MessageDice : MessageContent {

    /**
     * The animated stickers with the initial dice animation; may be null if
     * unknown. The update updateMessageContent will be sent when the sticker
     * became known
     */
    public DiceStickers? initial_state { get; construct set; }

    /**
     * The animated stickers with the final dice animation; may be null if
     * unknown. The update updateMessageContent will be sent when the sticker
     * became known
     */
    public DiceStickers? final_state { get; construct set; }

    /**
     * Emoji on which the dice throw animation is based
     */
    public string emoji { get; construct set; }

    /**
     * The dice value. If the value is 0, then the dice don't have final
     * state yet
     */
    public int32 value { get; construct set; }

    /**
     * Number of frame after which a success animation like a shower of
     * confetti needs to be shown on updateMessageSendSucceeded
     */
    public int32 success_animation_frame_number { get; construct set; }

    public MessageDice (
        DiceStickers? initial_state,
        DiceStickers? final_state,
        string emoji,
        int32 value,
        int32 success_animation_frame_number
    ) {
        Object (
            initial_state: initial_state,
            final_state: final_state,
            emoji: emoji,
            value: value,
            success_animation_frame_number: success_animation_frame_number,
            tdlib_type: "messageDice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a game
 */
public class TDLib.MessageGame : MessageContent {

    /**
     * The game description
     */
    public Game game { get; construct set; }

    public MessageGame (
        Game game
    ) {
        Object (
            game: game,
            tdlib_type: "messageGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a poll
 */
public class TDLib.MessagePoll : MessageContent {

    /**
     * The poll description
     */
    public Poll poll { get; construct set; }

    public MessagePoll (
        Poll poll
    ) {
        Object (
            poll: poll,
            tdlib_type: "messagePoll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A stake dice message. The dice value is randomly generated by the
 * server
 */
public class TDLib.MessageStakeDice : MessageContent {

    /**
     * The animated stickers with the initial dice animation; may be null if
     * unknown. The update updateMessageContent will be sent when the sticker
     * became known
     */
    public DiceStickers? initial_state { get; construct set; }

    /**
     * The animated stickers with the final dice animation; may be null if
     * unknown. The update updateMessageContent will be sent when the sticker
     * became known
     */
    public DiceStickers? final_state { get; construct set; }

    /**
     * The dice value. If the value is 0, then the dice don't have final
     * state yet
     */
    public int32 value { get; construct set; }

    /**
     * The amount of Toncoins that were staked; in the smallest units of the
     * currency
     */
    public int64 stake_toncoin_amount { get; construct set; }

    /**
     * The amount of Toncoins that were gained from the roll; in the smallest
     * units of the currency; -1 if the dice don't have final state yet
     */
    public int64 prize_toncoin_amount { get; construct set; }

    public MessageStakeDice (
        DiceStickers? initial_state,
        DiceStickers? final_state,
        int32 value,
        int64 stake_toncoin_amount,
        int64 prize_toncoin_amount
    ) {
        Object (
            initial_state: initial_state,
            final_state: final_state,
            value: value,
            stake_toncoin_amount: stake_toncoin_amount,
            prize_toncoin_amount: prize_toncoin_amount,
            tdlib_type: "messageStakeDice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a forwarded story
 */
public class TDLib.MessageStory : MessageContent {

    /**
     * Identifier of the chat that posted the story
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    /**
     * True, if the story was automatically forwarded because of a mention of
     * the user
     */
    public bool via_mention { get; construct set; }

    public MessageStory (
        int64 story_poster_chat_id,
        int32 story_id,
        bool via_mention
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            story_id: story_id,
            via_mention: via_mention,
            tdlib_type: "messageStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a checklist
 */
public class TDLib.MessageChecklist : MessageContent {

    /**
     * The checklist description
     */
    public Checklist list { get; construct set; }

    public MessageChecklist (
        Checklist list
    ) {
        Object (
            list: list,
            tdlib_type: "messageChecklist",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with an invoice from a bot. Use
 * {@link Client.get_internal_link} with internalLinkTypeBotStart to
 * share the invoice
 */
public class TDLib.MessageInvoice : MessageContent {

    /**
     * Information about the product
     */
    public ProductInfo product_info { get; construct set; }

    /**
     * Currency for the product price
     */
    public string currency { get; construct set; }

    /**
     * Product total price in the smallest units of the currency
     */
    public int64 total_amount { get; construct set; }

    /**
     * Unique invoice bot start_parameter to be passed to
     * {@link Client.get_internal_link}
     */
    public string start_parameter { get; construct set; }

    /**
     * True, if the invoice is a test invoice
     */
    public bool is_test { get; construct set; }

    /**
     * True, if the shipping address must be specified
     */
    public bool need_shipping_address { get; construct set; }

    /**
     * The identifier of the message with the receipt, after the product has
     * been purchased
     */
    public int64 receipt_message_id { get; construct set; }

    /**
     * Extended media attached to the invoice; may be null if none
     */
    public PaidMedia? paid_media { get; construct set; }

    /**
     * Extended media caption; may be null if none
     */
    public FormattedText? paid_media_caption { get; construct set; }

    public MessageInvoice (
        ProductInfo product_info,
        string currency,
        int64 total_amount,
        string start_parameter,
        bool is_test,
        bool need_shipping_address,
        int64 receipt_message_id,
        PaidMedia? paid_media,
        FormattedText? paid_media_caption
    ) {
        Object (
            product_info: product_info,
            currency: currency,
            total_amount: total_amount,
            start_parameter: start_parameter,
            is_test: is_test,
            need_shipping_address: need_shipping_address,
            receipt_message_id: receipt_message_id,
            paid_media: paid_media,
            paid_media_caption: paid_media_caption,
            tdlib_type: "messageInvoice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with information about an ended call
 */
public class TDLib.MessageCall : MessageContent {

    /**
     * True, if the call was a video call
     */
    public bool is_video { get; construct set; }

    /**
     * Reason why the call was discarded
     */
    public CallDiscardReason discard_reason { get; construct set; }

    /**
     * Call duration, in seconds
     */
    public int32 duration { get; construct set; }

    public MessageCall (
        bool is_video,
        CallDiscardReason discard_reason,
        int32 duration
    ) {
        Object (
            is_video: is_video,
            discard_reason: discard_reason,
            duration: duration,
            tdlib_type: "messageCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with information about a group call not bound to a chat. If
 * the message is incoming, the call isn't active, isn't missed, and has
 * no duration,
 * and getOption("can_accept_calls") is true, then incoming call screen
 * must be shown to the user. Use
 * {@link Client.get_group_call_participants} to show current group call
 * participants on the screen.
 * Use {@link Client.join_group_call} to accept the call or
 * {@link Client.decline_group_call_invitation} to decline it. If the
 * call become active or missed, then the call screen must be hidden
 */
public class TDLib.MessageGroupCall : MessageContent {

    /**
     * True, if the call is active, i.e. the called user joined the call
     */
    public bool is_active { get; construct set; }

    /**
     * True, if the called user missed or declined the call
     */
    public bool was_missed { get; construct set; }

    /**
     * True, if the call is a video call
     */
    public bool is_video { get; construct set; }

    /**
     * Call duration, in seconds; for left calls only
     */
    public int32 duration { get; construct set; }

    /**
     * Identifiers of some other call participants
     */
    public Gee.ArrayList<MessageSender?> other_participant_ids { get; construct set; default = new Gee.ArrayList<MessageSender?> (); }

    public MessageGroupCall (
        bool is_active,
        bool was_missed,
        bool is_video,
        int32 duration,
        Gee.ArrayList<MessageSender?> other_participant_ids
    ) {
        Object (
            is_active: is_active,
            was_missed: was_missed,
            is_video: is_video,
            duration: duration,
            other_participant_ids: other_participant_ids,
            tdlib_type: "messageGroupCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new video chat was scheduled
 */
public class TDLib.MessageVideoChatScheduled : MessageContent {

    /**
     * Identifier of the video chat. The video chat can be received through
     * the method {@link Client.get_group_call}
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the group call is expected to be
     * started by an administrator
     */
    public int32 start_date { get; construct set; }

    public MessageVideoChatScheduled (
        int32 group_call_id,
        int32 start_date
    ) {
        Object (
            group_call_id: group_call_id,
            start_date: start_date,
            tdlib_type: "messageVideoChatScheduled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A newly created video chat
 */
public class TDLib.MessageVideoChatStarted : MessageContent {

    /**
     * Identifier of the video chat. The video chat can be received through
     * the method {@link Client.get_group_call}
     */
    public int32 group_call_id { get; construct set; }

    public MessageVideoChatStarted (
        int32 group_call_id
    ) {
        Object (
            group_call_id: group_call_id,
            tdlib_type: "messageVideoChatStarted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with information about an ended video chat
 */
public class TDLib.MessageVideoChatEnded : MessageContent {

    /**
     * Call duration, in seconds
     */
    public int32 duration { get; construct set; }

    public MessageVideoChatEnded (
        int32 duration
    ) {
        Object (
            duration: duration,
            tdlib_type: "messageVideoChatEnded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with information about an invitation to a video chat
 */
public class TDLib.MessageInviteVideoChatParticipants : MessageContent {

    /**
     * Identifier of the video chat. The video chat can be received through
     * the method {@link Client.get_group_call}
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Invited user identifiers
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public MessageInviteVideoChatParticipants (
        int32 group_call_id,
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            group_call_id: group_call_id,
            user_ids: user_ids,
            tdlib_type: "messageInviteVideoChatParticipants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A newly created basic group
 */
public class TDLib.MessageBasicGroupChatCreate : MessageContent {

    /**
     * Title of the basic group
     */
    public string title { get; construct set; }

    /**
     * User identifiers of members in the basic group
     */
    public Gee.ArrayList<int64?> member_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public MessageBasicGroupChatCreate (
        string title,
        Gee.ArrayList<int64?> member_user_ids
    ) {
        Object (
            title: title,
            member_user_ids: member_user_ids,
            tdlib_type: "messageBasicGroupChatCreate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A newly created supergroup or channel
 */
public class TDLib.MessageSupergroupChatCreate : MessageContent {

    /**
     * Title of the supergroup or channel
     */
    public string title { get; construct set; }

    public MessageSupergroupChatCreate (
        string title
    ) {
        Object (
            title: title,
            tdlib_type: "messageSupergroupChatCreate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An updated chat title
 */
public class TDLib.MessageChatChangeTitle : MessageContent {

    /**
     * New chat title
     */
    public string title { get; construct set; }

    public MessageChatChangeTitle (
        string title
    ) {
        Object (
            title: title,
            tdlib_type: "messageChatChangeTitle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An updated chat photo
 */
public class TDLib.MessageChatChangePhoto : MessageContent {

    /**
     * New chat photo
     */
    public ChatPhoto photo { get; construct set; }

    public MessageChatChangePhoto (
        ChatPhoto photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "messageChatChangePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A deleted chat photo
 */
public class TDLib.MessageChatDeletePhoto : MessageContent {

    public MessageChatDeletePhoto () {
        Object (
            tdlib_type: "messageChatDeletePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New chat members were added
 */
public class TDLib.MessageChatAddMembers : MessageContent {

    /**
     * User identifiers of the new members
     */
    public Gee.ArrayList<int64?> member_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public MessageChatAddMembers (
        Gee.ArrayList<int64?> member_user_ids
    ) {
        Object (
            member_user_ids: member_user_ids,
            tdlib_type: "messageChatAddMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new member joined the chat via an invite link
 */
public class TDLib.MessageChatJoinByLink : MessageContent {

    public MessageChatJoinByLink () {
        Object (
            tdlib_type: "messageChatJoinByLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new member was accepted to the chat by an administrator
 */
public class TDLib.MessageChatJoinByRequest : MessageContent {

    public MessageChatJoinByRequest () {
        Object (
            tdlib_type: "messageChatJoinByRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat member was deleted
 */
public class TDLib.MessageChatDeleteMember : MessageContent {

    /**
     * User identifier of the deleted chat member
     */
    public int64 user_id { get; construct set; }

    public MessageChatDeleteMember (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "messageChatDeleteMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A basic group was upgraded to a supergroup and was deactivated as the
 * result
 */
public class TDLib.MessageChatUpgradeTo : MessageContent {

    /**
     * Identifier of the supergroup to which the basic group was upgraded
     */
    public int64 supergroup_id { get; construct set; }

    public MessageChatUpgradeTo (
        int64 supergroup_id
    ) {
        Object (
            supergroup_id: supergroup_id,
            tdlib_type: "messageChatUpgradeTo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A supergroup has been created from a basic group
 */
public class TDLib.MessageChatUpgradeFrom : MessageContent {

    /**
     * Title of the newly created supergroup
     */
    public string title { get; construct set; }

    /**
     * The identifier of the original basic group
     */
    public int64 basic_group_id { get; construct set; }

    public MessageChatUpgradeFrom (
        string title,
        int64 basic_group_id
    ) {
        Object (
            title: title,
            basic_group_id: basic_group_id,
            tdlib_type: "messageChatUpgradeFrom",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message has been pinned
 */
public class TDLib.MessagePinMessage : MessageContent {

    /**
     * Identifier of the pinned message, can be an identifier of a deleted
     * message or 0
     */
    public int64 message_id { get; construct set; }

    public MessagePinMessage (
        int64 message_id
    ) {
        Object (
            message_id: message_id,
            tdlib_type: "messagePinMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A screenshot of a message in the chat has been taken
 */
public class TDLib.MessageScreenshotTaken : MessageContent {

    public MessageScreenshotTaken () {
        Object (
            tdlib_type: "messageScreenshotTaken",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new background was set in the chat
 */
public class TDLib.MessageChatSetBackground : MessageContent {

    /**
     * Identifier of the message with a previously set same background; 0 if
     * none. Can be an identifier of a deleted message
     */
    public int64 old_background_message_id { get; construct set; }

    /**
     * The new background
     */
    public ChatBackground background { get; construct set; }

    /**
     * True, if the background was set only for self
     */
    public bool only_for_self { get; construct set; }

    public MessageChatSetBackground (
        int64 old_background_message_id,
        ChatBackground background,
        bool only_for_self
    ) {
        Object (
            old_background_message_id: old_background_message_id,
            background: background,
            only_for_self: only_for_self,
            tdlib_type: "messageChatSetBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A theme in the chat has been changed
 */
public class TDLib.MessageChatSetTheme : MessageContent {

    /**
     * New theme for the chat; may be null if chat theme was reset to the
     * default one
     */
    public ChatTheme? theme { get; construct set; }

    public MessageChatSetTheme (
        ChatTheme? theme
    ) {
        Object (
            theme: theme,
            tdlib_type: "messageChatSetTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The auto-delete or self-destruct timer for messages in the chat has
 * been changed
 */
public class TDLib.MessageChatSetMessageAutoDeleteTime : MessageContent {

    /**
     * New value auto-delete or self-destruct time, in seconds; 0 if disabled
     */
    public int32 message_auto_delete_time { get; construct set; }

    /**
     * If not 0, a user identifier, which default setting was automatically
     * applied
     */
    public int64 from_user_id { get; construct set; }

    public MessageChatSetMessageAutoDeleteTime (
        int32 message_auto_delete_time,
        int64 from_user_id
    ) {
        Object (
            message_auto_delete_time: message_auto_delete_time,
            from_user_id: from_user_id,
            tdlib_type: "messageChatSetMessageAutoDeleteTime",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat was boosted by the sender of the message
 */
public class TDLib.MessageChatBoost : MessageContent {

    /**
     * Number of times the chat was boosted
     */
    public int32 boost_count { get; construct set; }

    public MessageChatBoost (
        int32 boost_count
    ) {
        Object (
            boost_count: boost_count,
            tdlib_type: "messageChatBoost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forum topic has been created
 */
public class TDLib.MessageForumTopicCreated : MessageContent {

    /**
     * Name of the topic
     */
    public string name { get; construct set; }

    /**
     * True, if the name of the topic wasn't added explicitly
     */
    public bool is_name_implicit { get; construct set; }

    /**
     * Icon of the topic
     */
    public ForumTopicIcon icon { get; construct set; }

    public MessageForumTopicCreated (
        string name,
        bool is_name_implicit,
        ForumTopicIcon icon
    ) {
        Object (
            name: name,
            is_name_implicit: is_name_implicit,
            icon: icon,
            tdlib_type: "messageForumTopicCreated",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forum topic has been edited
 */
public class TDLib.MessageForumTopicEdited : MessageContent {

    /**
     * If non-empty, the new name of the topic
     */
    public string name { get; construct set; }

    /**
     * True, if icon's custom_emoji_id is changed
     */
    public bool edit_icon_custom_emoji_id { get; construct set; }

    /**
     * New unique identifier of the custom emoji shown on the topic icon; 0
     * if none. Must be ignored if edit_icon_custom_emoji_id is false
     */
    public int64 icon_custom_emoji_id { get; construct set; }

    public MessageForumTopicEdited (
        string name,
        bool edit_icon_custom_emoji_id,
        int64 icon_custom_emoji_id
    ) {
        Object (
            name: name,
            edit_icon_custom_emoji_id: edit_icon_custom_emoji_id,
            icon_custom_emoji_id: icon_custom_emoji_id,
            tdlib_type: "messageForumTopicEdited",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forum topic has been closed or opened
 */
public class TDLib.MessageForumTopicIsClosedToggled : MessageContent {

    /**
     * True, if the topic was closed; otherwise, the topic was reopened
     */
    public bool is_closed { get; construct set; }

    public MessageForumTopicIsClosedToggled (
        bool is_closed
    ) {
        Object (
            is_closed: is_closed,
            tdlib_type: "messageForumTopicIsClosedToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A General forum topic has been hidden or unhidden
 */
public class TDLib.MessageForumTopicIsHiddenToggled : MessageContent {

    /**
     * True, if the topic was hidden; otherwise, the topic was unhidden
     */
    public bool is_hidden { get; construct set; }

    public MessageForumTopicIsHiddenToggled (
        bool is_hidden
    ) {
        Object (
            is_hidden: is_hidden,
            tdlib_type: "messageForumTopicIsHiddenToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A profile photo was suggested to a user in a private chat
 */
public class TDLib.MessageSuggestProfilePhoto : MessageContent {

    /**
     * The suggested chat photo. Use the method
     * {@link Client.set_profile_photo} with inputChatPhotoPrevious to apply
     * the photo
     */
    public ChatPhoto photo { get; construct set; }

    public MessageSuggestProfilePhoto (
        ChatPhoto photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "messageSuggestProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A birthdate was suggested to be set
 */
public class TDLib.MessageSuggestBirthdate : MessageContent {

    /**
     * The suggested birthdate. Use the method {@link Client.set_birthdate}
     * to apply the birthdate
     */
    public Birthdate birthdate { get; construct set; }

    public MessageSuggestBirthdate (
        Birthdate birthdate
    ) {
        Object (
            birthdate: birthdate,
            tdlib_type: "messageSuggestBirthdate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A non-standard action has happened in the chat
 */
public class TDLib.MessageCustomServiceAction : MessageContent {

    /**
     * Message text to be shown in the chat
     */
    public string text { get; construct set; }

    public MessageCustomServiceAction (
        string text
    ) {
        Object (
            text: text,
            tdlib_type: "messageCustomServiceAction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new high score was achieved in a game
 */
public class TDLib.MessageGameScore : MessageContent {

    /**
     * Identifier of the message with the game, can be an identifier of a
     * deleted message
     */
    public int64 game_message_id { get; construct set; }

    /**
     * Identifier of the game; may be different from the games presented in
     * the message with the game
     */
    public int64 game_id { get; construct set; }

    /**
     * New score
     */
    public int32 score { get; construct set; }

    public MessageGameScore (
        int64 game_message_id,
        int64 game_id,
        int32 score
    ) {
        Object (
            game_message_id: game_message_id,
            game_id: game_id,
            score: score,
            tdlib_type: "messageGameScore",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A payment has been sent to a bot or a business account
 */
public class TDLib.MessagePaymentSuccessful : MessageContent {

    /**
     * Identifier of the chat, containing the corresponding invoice message
     */
    public int64 invoice_chat_id { get; construct set; }

    /**
     * Identifier of the message with the corresponding invoice; may be 0 or
     * an identifier of a deleted message
     */
    public int64 invoice_message_id { get; construct set; }

    /**
     * Currency for the price of the product
     */
    public string currency { get; construct set; }

    /**
     * Total price for the product, in the smallest units of the currency
     */
    public int64 total_amount { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the subscription will expire; 0 if
     * unknown or the payment isn't recurring
     */
    public int32 subscription_until_date { get; construct set; }

    /**
     * True, if this is a recurring payment
     */
    public bool is_recurring { get; construct set; }

    /**
     * True, if this is the first recurring payment
     */
    public bool is_first_recurring { get; construct set; }

    /**
     * Name of the invoice; may be empty if unknown
     */
    public string invoice_name { get; construct set; }

    public MessagePaymentSuccessful (
        int64 invoice_chat_id,
        int64 invoice_message_id,
        string currency,
        int64 total_amount,
        int32 subscription_until_date,
        bool is_recurring,
        bool is_first_recurring,
        string invoice_name
    ) {
        Object (
            invoice_chat_id: invoice_chat_id,
            invoice_message_id: invoice_message_id,
            currency: currency,
            total_amount: total_amount,
            subscription_until_date: subscription_until_date,
            is_recurring: is_recurring,
            is_first_recurring: is_first_recurring,
            invoice_name: invoice_name,
            tdlib_type: "messagePaymentSuccessful",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A payment has been received by the bot or the business account
 */
public class TDLib.MessagePaymentSuccessfulBot : MessageContent {

    /**
     * Currency for price of the product
     */
    public string currency { get; construct set; }

    /**
     * Total price for the product, in the smallest units of the currency
     */
    public int64 total_amount { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the subscription will expire; 0 if
     * unknown or the payment isn't recurring
     */
    public int32 subscription_until_date { get; construct set; }

    /**
     * True, if this is a recurring payment
     */
    public bool is_recurring { get; construct set; }

    /**
     * True, if this is the first recurring payment
     */
    public bool is_first_recurring { get; construct set; }

    /**
     * Invoice payload
     */
    public Bytes invoice_payload { get; construct set; }

    /**
     * Identifier of the shipping option chosen by the user; may be empty if
     * not applicable; for bots only
     */
    public string shipping_option_id { get; construct set; }

    /**
     * Information about the order; may be null; for bots only
     */
    public OrderInfo? order_info { get; construct set; }

    /**
     * Telegram payment identifier
     */
    public string telegram_payment_charge_id { get; construct set; }

    /**
     * Provider payment identifier
     */
    public string provider_payment_charge_id { get; construct set; }

    public MessagePaymentSuccessfulBot (
        string currency,
        int64 total_amount,
        int32 subscription_until_date,
        bool is_recurring,
        bool is_first_recurring,
        Bytes invoice_payload,
        string shipping_option_id,
        OrderInfo? order_info,
        string telegram_payment_charge_id,
        string provider_payment_charge_id
    ) {
        Object (
            currency: currency,
            total_amount: total_amount,
            subscription_until_date: subscription_until_date,
            is_recurring: is_recurring,
            is_first_recurring: is_first_recurring,
            invoice_payload: invoice_payload,
            shipping_option_id: shipping_option_id,
            order_info: order_info,
            telegram_payment_charge_id: telegram_payment_charge_id,
            provider_payment_charge_id: provider_payment_charge_id,
            tdlib_type: "messagePaymentSuccessfulBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A payment has been refunded
 */
public class TDLib.MessagePaymentRefunded : MessageContent {

    /**
     * Identifier of the previous owner of the Telegram Stars that refunds
     * them
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Currency for the price of the product
     */
    public string currency { get; construct set; }

    /**
     * Total price for the product, in the smallest units of the currency
     */
    public int64 total_amount { get; construct set; }

    /**
     * Invoice payload; only for bots
     */
    public Bytes invoice_payload { get; construct set; }

    /**
     * Telegram payment identifier
     */
    public string telegram_payment_charge_id { get; construct set; }

    /**
     * Provider payment identifier
     */
    public string provider_payment_charge_id { get; construct set; }

    public MessagePaymentRefunded (
        MessageSender owner_id,
        string currency,
        int64 total_amount,
        Bytes invoice_payload,
        string telegram_payment_charge_id,
        string provider_payment_charge_id
    ) {
        Object (
            owner_id: owner_id,
            currency: currency,
            total_amount: total_amount,
            invoice_payload: invoice_payload,
            telegram_payment_charge_id: telegram_payment_charge_id,
            provider_payment_charge_id: provider_payment_charge_id,
            tdlib_type: "messagePaymentRefunded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Telegram Premium was gifted to a user
 */
public class TDLib.MessageGiftedPremium : MessageContent {

    /**
     * The identifier of a user that gifted Telegram Premium; 0 if the gift
     * was anonymous or is outgoing
     */
    public int64 gifter_user_id { get; construct set; }

    /**
     * The identifier of a user that received Telegram Premium; 0 if the gift
     * is incoming
     */
    public int64 receiver_user_id { get; construct set; }

    /**
     * Message added to the gifted Telegram Premium by the sender
     */
    public FormattedText text { get; construct set; }

    /**
     * Currency for the paid amount
     */
    public string currency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Cryptocurrency used to pay for the gift; may be empty if none
     */
    public string cryptocurrency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the cryptocurrency; 0 if
     * none
     */
    public int64 cryptocurrency_amount { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active
     * after code activation; 0 if the number of months isn't integer
     */
    public int32 month_count { get; construct set; }

    /**
     * Number of days the Telegram Premium subscription will be active
     */
    public int32 day_count { get; construct set; }

    /**
     * A sticker to be shown in the message; may be null if unknown
     */
    public Sticker? sticker { get; construct set; }

    public MessageGiftedPremium (
        int64 gifter_user_id,
        int64 receiver_user_id,
        FormattedText text,
        string currency,
        int64 amount,
        string cryptocurrency,
        int64 cryptocurrency_amount,
        int32 month_count,
        int32 day_count,
        Sticker? sticker
    ) {
        Object (
            gifter_user_id: gifter_user_id,
            receiver_user_id: receiver_user_id,
            text: text,
            currency: currency,
            amount: amount,
            cryptocurrency: cryptocurrency,
            cryptocurrency_amount: cryptocurrency_amount,
            month_count: month_count,
            day_count: day_count,
            sticker: sticker,
            tdlib_type: "messageGiftedPremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Premium gift code was created for the user
 */
public class TDLib.MessagePremiumGiftCode : MessageContent {

    /**
     * Identifier of a chat or a user that created the gift code; may be null
     * if unknown
     */
    public MessageSender? creator_id { get; construct set; }

    /**
     * Message added to the gift
     */
    public FormattedText text { get; construct set; }

    /**
     * True, if the gift code was created for a giveaway
     */
    public bool is_from_giveaway { get; construct set; }

    /**
     * True, if the winner for the corresponding Telegram Premium
     * subscription wasn't chosen
     */
    public bool is_unclaimed { get; construct set; }

    /**
     * Currency for the paid amount; empty if unknown
     */
    public string currency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the currency; 0 if unknown
     */
    public int64 amount { get; construct set; }

    /**
     * Cryptocurrency used to pay for the gift; may be empty if none or
     * unknown
     */
    public string cryptocurrency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the cryptocurrency; 0 if
     * unknown
     */
    public int64 cryptocurrency_amount { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active
     * after code activation; 0 if the number of months isn't integer
     */
    public int32 month_count { get; construct set; }

    /**
     * Number of days the Telegram Premium subscription will be active after
     * code activation
     */
    public int32 day_count { get; construct set; }

    /**
     * A sticker to be shown in the message; may be null if unknown
     */
    public Sticker? sticker { get; construct set; }

    /**
     * The gift code
     */
    public new string code { get; construct set; }

    public MessagePremiumGiftCode (
        MessageSender? creator_id,
        FormattedText text,
        bool is_from_giveaway,
        bool is_unclaimed,
        string currency,
        int64 amount,
        string cryptocurrency,
        int64 cryptocurrency_amount,
        int32 month_count,
        int32 day_count,
        Sticker? sticker,
        string code
    ) {
        Object (
            creator_id: creator_id,
            text: text,
            is_from_giveaway: is_from_giveaway,
            is_unclaimed: is_unclaimed,
            currency: currency,
            amount: amount,
            cryptocurrency: cryptocurrency,
            cryptocurrency_amount: cryptocurrency_amount,
            month_count: month_count,
            day_count: day_count,
            sticker: sticker,
            code: code,
            tdlib_type: "messagePremiumGiftCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A giveaway was created for the chat. Use
 * telegramPaymentPurposePremiumGiveaway,
 * storePaymentPurposePremiumGiveaway,
 * telegramPaymentPurposeStarGiveaway, or storePaymentPurposeStarGiveaway
 * to create a giveaway
 */
public class TDLib.MessageGiveawayCreated : MessageContent {

    /**
     * Number of Telegram Stars that will be shared by winners of the
     * giveaway; 0 for Telegram Premium giveaways
     */
    public int64 star_count { get; construct set; }

    public MessageGiveawayCreated (
        int64 star_count
    ) {
        Object (
            star_count: star_count,
            tdlib_type: "messageGiveawayCreated",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A giveaway
 */
public class TDLib.MessageGiveaway : MessageContent {

    /**
     * Giveaway parameters
     */
    public GiveawayParameters parameters { get; construct set; }

    /**
     * Number of users which will receive Telegram Premium subscription gift
     * codes
     */
    public int32 winner_count { get; construct set; }

    /**
     * Prize of the giveaway
     */
    public GiveawayPrize prize { get; construct set; }

    /**
     * A sticker to be shown in the message; may be null if unknown
     */
    public Sticker? sticker { get; construct set; }

    public MessageGiveaway (
        GiveawayParameters parameters,
        int32 winner_count,
        GiveawayPrize prize,
        Sticker? sticker
    ) {
        Object (
            parameters: parameters,
            winner_count: winner_count,
            prize: prize,
            sticker: sticker,
            tdlib_type: "messageGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A giveaway without public winners has been completed for the chat
 */
public class TDLib.MessageGiveawayCompleted : MessageContent {

    /**
     * Identifier of the message with the giveaway; may be 0 or an identifier
     * of a deleted message
     */
    public int64 giveaway_message_id { get; construct set; }

    /**
     * Number of winners in the giveaway
     */
    public int32 winner_count { get; construct set; }

    /**
     * True, if the giveaway is a Telegram Star giveaway
     */
    public bool is_star_giveaway { get; construct set; }

    /**
     * Number of undistributed prizes; for Telegram Premium giveaways only
     */
    public int32 unclaimed_prize_count { get; construct set; }

    public MessageGiveawayCompleted (
        int64 giveaway_message_id,
        int32 winner_count,
        bool is_star_giveaway,
        int32 unclaimed_prize_count
    ) {
        Object (
            giveaway_message_id: giveaway_message_id,
            winner_count: winner_count,
            is_star_giveaway: is_star_giveaway,
            unclaimed_prize_count: unclaimed_prize_count,
            tdlib_type: "messageGiveawayCompleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A giveaway with public winners has been completed for the chat
 */
public class TDLib.MessageGiveawayWinners : MessageContent {

    /**
     * Identifier of the supergroup or channel chat, which was automatically
     * boosted by the winners of the giveaway
     */
    public int64 boosted_chat_id { get; construct set; }

    /**
     * Identifier of the message with the giveaway in the boosted chat
     */
    public int64 giveaway_message_id { get; construct set; }

    /**
     * Number of other chats that participated in the giveaway
     */
    public int32 additional_chat_count { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the winners were selected. May be
     * bigger than winners selection date specified in parameters of the
     * giveaway
     */
    public int32 actual_winners_selection_date { get; construct set; }

    /**
     * True, if only new members of the chats were eligible for the giveaway
     */
    public bool only_new_members { get; construct set; }

    /**
     * True, if the giveaway was canceled and was fully refunded
     */
    public bool was_refunded { get; construct set; }

    /**
     * Prize of the giveaway
     */
    public GiveawayPrize prize { get; construct set; }

    /**
     * Additional description of the giveaway prize
     */
    public string prize_description { get; construct set; }

    /**
     * Total number of winners in the giveaway
     */
    public int32 winner_count { get; construct set; }

    /**
     * Up to 100 user identifiers of the winners of the giveaway
     */
    public Gee.ArrayList<int64?> winner_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Number of undistributed prizes; for Telegram Premium giveaways only
     */
    public int32 unclaimed_prize_count { get; construct set; }

    public MessageGiveawayWinners (
        int64 boosted_chat_id,
        int64 giveaway_message_id,
        int32 additional_chat_count,
        int32 actual_winners_selection_date,
        bool only_new_members,
        bool was_refunded,
        GiveawayPrize prize,
        string prize_description,
        int32 winner_count,
        Gee.ArrayList<int64?> winner_user_ids,
        int32 unclaimed_prize_count
    ) {
        Object (
            boosted_chat_id: boosted_chat_id,
            giveaway_message_id: giveaway_message_id,
            additional_chat_count: additional_chat_count,
            actual_winners_selection_date: actual_winners_selection_date,
            only_new_members: only_new_members,
            was_refunded: was_refunded,
            prize: prize,
            prize_description: prize_description,
            winner_count: winner_count,
            winner_user_ids: winner_user_ids,
            unclaimed_prize_count: unclaimed_prize_count,
            tdlib_type: "messageGiveawayWinners",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Telegram Stars were gifted to a user
 */
public class TDLib.MessageGiftedStars : MessageContent {

    /**
     * The identifier of a user that gifted Telegram Stars; 0 if the gift was
     * anonymous or is outgoing
     */
    public int64 gifter_user_id { get; construct set; }

    /**
     * The identifier of a user that received Telegram Stars; 0 if the gift
     * is incoming
     */
    public int64 receiver_user_id { get; construct set; }

    /**
     * Currency for the paid amount
     */
    public string currency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the currency
     */
    public int64 amount { get; construct set; }

    /**
     * Cryptocurrency used to pay for the gift; may be empty if none
     */
    public string cryptocurrency { get; construct set; }

    /**
     * The paid amount, in the smallest units of the cryptocurrency; 0 if
     * none
     */
    public int64 cryptocurrency_amount { get; construct set; }

    /**
     * Number of Telegram Stars that were gifted
     */
    public int64 star_count { get; construct set; }

    /**
     * Identifier of the transaction for Telegram Stars purchase; for
     * receiver only
     */
    public string transaction_id { get; construct set; }

    /**
     * A sticker to be shown in the message; may be null if unknown
     */
    public Sticker? sticker { get; construct set; }

    public MessageGiftedStars (
        int64 gifter_user_id,
        int64 receiver_user_id,
        string currency,
        int64 amount,
        string cryptocurrency,
        int64 cryptocurrency_amount,
        int64 star_count,
        string transaction_id,
        Sticker? sticker
    ) {
        Object (
            gifter_user_id: gifter_user_id,
            receiver_user_id: receiver_user_id,
            currency: currency,
            amount: amount,
            cryptocurrency: cryptocurrency,
            cryptocurrency_amount: cryptocurrency_amount,
            star_count: star_count,
            transaction_id: transaction_id,
            sticker: sticker,
            tdlib_type: "messageGiftedStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Toncoins were gifted to a user
 */
public class TDLib.MessageGiftedTon : MessageContent {

    /**
     * The identifier of a user that gifted Toncoins; 0 if the gift was
     * anonymous or is outgoing
     */
    public int64 gifter_user_id { get; construct set; }

    /**
     * The identifier of a user that received Toncoins; 0 if the gift is
     * incoming
     */
    public int64 receiver_user_id { get; construct set; }

    /**
     * The received amount of Toncoins, in the smallest units of the
     * cryptocurrency
     */
    public int64 ton_amount { get; construct set; }

    /**
     * Identifier of the transaction for Toncoin credit; for receiver only
     */
    public string transaction_id { get; construct set; }

    /**
     * A sticker to be shown in the message; may be null if unknown
     */
    public Sticker? sticker { get; construct set; }

    public MessageGiftedTon (
        int64 gifter_user_id,
        int64 receiver_user_id,
        int64 ton_amount,
        string transaction_id,
        Sticker? sticker
    ) {
        Object (
            gifter_user_id: gifter_user_id,
            receiver_user_id: receiver_user_id,
            ton_amount: ton_amount,
            transaction_id: transaction_id,
            sticker: sticker,
            tdlib_type: "messageGiftedTon",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Stars were received by the current user from a giveaway
 */
public class TDLib.MessageGiveawayPrizeStars : MessageContent {

    /**
     * Number of Telegram Stars that were received
     */
    public int64 star_count { get; construct set; }

    /**
     * Identifier of the transaction for Telegram Stars credit
     */
    public string transaction_id { get; construct set; }

    /**
     * Identifier of the supergroup or channel chat, which was automatically
     * boosted by the winners of the giveaway
     */
    public int64 boosted_chat_id { get; construct set; }

    /**
     * Identifier of the message with the giveaway in the boosted chat; may
     * be 0 or an identifier of a deleted message
     */
    public int64 giveaway_message_id { get; construct set; }

    /**
     * True, if the corresponding winner wasn't chosen and the Telegram Stars
     * were received by the owner of the boosted chat
     */
    public bool is_unclaimed { get; construct set; }

    /**
     * A sticker to be shown in the message; may be null if unknown
     */
    public Sticker? sticker { get; construct set; }

    public MessageGiveawayPrizeStars (
        int64 star_count,
        string transaction_id,
        int64 boosted_chat_id,
        int64 giveaway_message_id,
        bool is_unclaimed,
        Sticker? sticker
    ) {
        Object (
            star_count: star_count,
            transaction_id: transaction_id,
            boosted_chat_id: boosted_chat_id,
            giveaway_message_id: giveaway_message_id,
            is_unclaimed: is_unclaimed,
            sticker: sticker,
            tdlib_type: "messageGiveawayPrizeStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A regular gift was received or sent by the current user, or the
 * current user was notified about a channel gift
 */
public class TDLib.MessageGift : MessageContent {

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    /**
     * Sender of the gift; may be null for outgoing messages about prepaid
     * upgrade of gifts from unknown users
     */
    public MessageSender? sender_id { get; construct set; }

    /**
     * Receiver of the gift
     */
    public MessageSender receiver_id { get; construct set; }

    /**
     * Unique identifier of the received gift for the current user; only for
     * the receiver of the gift
     */
    public string received_gift_id { get; construct set; }

    /**
     * Message added to the gift
     */
    public FormattedText text { get; construct set; }

    /**
     * Unique number of the gift among gifts upgraded from the same gift
     * after upgrade; 0 if yet unassigned
     */
    public int32 unique_gift_number { get; construct set; }

    /**
     * Number of Telegram Stars that can be claimed by the receiver instead
     * of the regular gift; 0 if the gift can't be sold by the receiver
     */
    public int64 sell_star_count { get; construct set; }

    /**
     * Number of Telegram Stars that were paid by the sender for the ability
     * to upgrade the gift
     */
    public int64 prepaid_upgrade_star_count { get; construct set; }

    /**
     * True, if the upgrade was bought after the gift was sent. In this case,
     * prepaid upgrade cost must not be added to the gift cost
     */
    public bool is_upgrade_separate { get; construct set; }

    /**
     * True, if the message is a notification about a gift won on an auction
     */
    public bool is_from_auction { get; construct set; }

    /**
     * True, if the sender and gift text are shown only to the gift receiver;
     * otherwise, everyone will be able to see them
     */
    public bool is_private { get; construct set; }

    /**
     * True, if the gift is displayed on the user's or the channel's profile
     * page; only for the receiver of the gift
     */
    public bool is_saved { get; construct set; }

    /**
     * True, if the message is about prepaid upgrade of the gift by another
     * user
     */
    public bool is_prepaid_upgrade { get; construct set; }

    /**
     * True, if the gift can be upgraded to a unique gift; only for the
     * receiver of the gift
     */
    public bool can_be_upgraded { get; construct set; }

    /**
     * True, if the gift was converted to Telegram Stars; only for the
     * receiver of the gift
     */
    public bool was_converted { get; construct set; }

    /**
     * True, if the gift was upgraded to a unique gift
     */
    public bool was_upgraded { get; construct set; }

    /**
     * True, if the gift was refunded and isn't available anymore
     */
    public bool was_refunded { get; construct set; }

    /**
     * Identifier of the corresponding upgraded gift; may be empty if
     * unknown. Use {@link Client.get_received_gift} to get information about
     * the gift
     */
    public string upgraded_received_gift_id { get; construct set; }

    /**
     * If non-empty, then the user can pay for an upgrade of the gift using
     * {@link Client.buy_gift_upgrade}
     */
    public string prepaid_upgrade_hash { get; construct set; }

    public MessageGift (
        Gift gift,
        MessageSender? sender_id,
        MessageSender receiver_id,
        string received_gift_id,
        FormattedText text,
        int32 unique_gift_number,
        int64 sell_star_count,
        int64 prepaid_upgrade_star_count,
        bool is_upgrade_separate,
        bool is_from_auction,
        bool is_private,
        bool is_saved,
        bool is_prepaid_upgrade,
        bool can_be_upgraded,
        bool was_converted,
        bool was_upgraded,
        bool was_refunded,
        string upgraded_received_gift_id,
        string prepaid_upgrade_hash
    ) {
        Object (
            gift: gift,
            sender_id: sender_id,
            receiver_id: receiver_id,
            received_gift_id: received_gift_id,
            text: text,
            unique_gift_number: unique_gift_number,
            sell_star_count: sell_star_count,
            prepaid_upgrade_star_count: prepaid_upgrade_star_count,
            is_upgrade_separate: is_upgrade_separate,
            is_from_auction: is_from_auction,
            is_private: is_private,
            is_saved: is_saved,
            is_prepaid_upgrade: is_prepaid_upgrade,
            can_be_upgraded: can_be_upgraded,
            was_converted: was_converted,
            was_upgraded: was_upgraded,
            was_refunded: was_refunded,
            upgraded_received_gift_id: upgraded_received_gift_id,
            prepaid_upgrade_hash: prepaid_upgrade_hash,
            tdlib_type: "messageGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An upgraded gift was received or sent by the current user, or the
 * current user was notified about a channel gift
 */
public class TDLib.MessageUpgradedGift : MessageContent {

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    /**
     * Sender of the gift; may be null for anonymous gifts
     */
    public MessageSender? sender_id { get; construct set; }

    /**
     * Receiver of the gift
     */
    public MessageSender receiver_id { get; construct set; }

    /**
     * Origin of the upgraded gift
     */
    public UpgradedGiftOrigin origin { get; construct set; }

    /**
     * Unique identifier of the received gift for the current user; only for
     * the receiver of the gift
     */
    public string received_gift_id { get; construct set; }

    /**
     * True, if the gift is displayed on the user's or the channel's profile
     * page; only for the receiver of the gift
     */
    public bool is_saved { get; construct set; }

    /**
     * True, if the gift can be transferred to another owner; only for the
     * receiver of the gift
     */
    public bool can_be_transferred { get; construct set; }

    /**
     * True, if the gift has already been transferred to another owner; only
     * for the receiver of the gift
     */
    public bool was_transferred { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid to transfer the upgraded
     * gift; only for the receiver of the gift
     */
    public int64 transfer_star_count { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid to drop original details of
     * the upgraded gift; 0 if not available; only for the receiver of the
     * gift
     */
    public int64 drop_original_details_star_count { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be transferred to
     * another owner; can be in the past; 0 if the gift can be transferred
     * immediately or transfer isn't possible; only for the receiver of the
     * gift
     */
    public int32 next_transfer_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be resold to another
     * user; can be in the past; 0 if the gift can't be resold; only for the
     * receiver of the gift
     */
    public int32 next_resale_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be transferred to the
     * TON blockchain as an NFT; can be in the past; 0 if NFT export isn't
     * possible; only for the receiver of the gift
     */
    public int32 export_date { get; construct set; }

    public MessageUpgradedGift (
        UpgradedGift gift,
        MessageSender? sender_id,
        MessageSender receiver_id,
        UpgradedGiftOrigin origin,
        string received_gift_id,
        bool is_saved,
        bool can_be_transferred,
        bool was_transferred,
        int64 transfer_star_count,
        int64 drop_original_details_star_count,
        int32 next_transfer_date,
        int32 next_resale_date,
        int32 export_date
    ) {
        Object (
            gift: gift,
            sender_id: sender_id,
            receiver_id: receiver_id,
            origin: origin,
            received_gift_id: received_gift_id,
            is_saved: is_saved,
            can_be_transferred: can_be_transferred,
            was_transferred: was_transferred,
            transfer_star_count: transfer_star_count,
            drop_original_details_star_count: drop_original_details_star_count,
            next_transfer_date: next_transfer_date,
            next_resale_date: next_resale_date,
            export_date: export_date,
            tdlib_type: "messageUpgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A gift which purchase, upgrade or transfer were refunded
 */
public class TDLib.MessageRefundedUpgradedGift : MessageContent {

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    /**
     * Sender of the gift
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * Receiver of the gift
     */
    public MessageSender receiver_id { get; construct set; }

    /**
     * Origin of the upgraded gift
     */
    public UpgradedGiftOrigin origin { get; construct set; }

    public MessageRefundedUpgradedGift (
        Gift gift,
        MessageSender sender_id,
        MessageSender receiver_id,
        UpgradedGiftOrigin origin
    ) {
        Object (
            gift: gift,
            sender_id: sender_id,
            receiver_id: receiver_id,
            origin: origin,
            tdlib_type: "messageRefundedUpgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An offer to purchase an upgraded gift was sent or received
 */
public class TDLib.MessageUpgradedGiftPurchaseOffer : MessageContent {

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    /**
     * State of the offer
     */
    public GiftPurchaseOfferState state { get; construct set; }

    /**
     * The proposed price
     */
    public GiftResalePrice price { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the offer will expire or has
     * expired
     */
    public int32 expiration_date { get; construct set; }

    public MessageUpgradedGiftPurchaseOffer (
        UpgradedGift gift,
        GiftPurchaseOfferState state,
        GiftResalePrice price,
        int32 expiration_date
    ) {
        Object (
            gift: gift,
            state: state,
            price: price,
            expiration_date: expiration_date,
            tdlib_type: "messageUpgradedGiftPurchaseOffer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An offer to purchase a gift was rejected or expired
 */
public class TDLib.MessageUpgradedGiftPurchaseOfferRejected : MessageContent {

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    /**
     * The proposed price
     */
    public GiftResalePrice price { get; construct set; }

    /**
     * Identifier of the message with purchase offer which was rejected or
     * expired; may be 0 or an identifier of a deleted message
     */
    public int64 offer_message_id { get; construct set; }

    /**
     * True, if the offer has expired; otherwise, the offer was explicitly
     * rejected
     */
    public bool was_expired { get; construct set; }

    public MessageUpgradedGiftPurchaseOfferRejected (
        UpgradedGift gift,
        GiftResalePrice price,
        int64 offer_message_id,
        bool was_expired
    ) {
        Object (
            gift: gift,
            price: price,
            offer_message_id: offer_message_id,
            was_expired: was_expired,
            tdlib_type: "messageUpgradedGiftPurchaseOfferRejected",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Paid messages were refunded
 */
public class TDLib.MessagePaidMessagesRefunded : MessageContent {

    /**
     * The number of refunded messages
     */
    public int32 message_count { get; construct set; }

    /**
     * The number of refunded Telegram Stars
     */
    public int64 star_count { get; construct set; }

    public MessagePaidMessagesRefunded (
        int32 message_count,
        int64 star_count
    ) {
        Object (
            message_count: message_count,
            star_count: star_count,
            tdlib_type: "messagePaidMessagesRefunded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A price for paid messages was changed in the supergroup chat
 */
public class TDLib.MessagePaidMessagePriceChanged : MessageContent {

    /**
     * The new number of Telegram Stars that must be paid by
     * non-administrator users of the supergroup chat for each sent message
     */
    public int64 paid_message_star_count { get; construct set; }

    public MessagePaidMessagePriceChanged (
        int64 paid_message_star_count
    ) {
        Object (
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "messagePaidMessagePriceChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A price for direct messages was changed in the channel chat
 */
public class TDLib.MessageDirectMessagePriceChanged : MessageContent {

    /**
     * True, if direct messages group was enabled for the channel; false
     * otherwise
     */
    public bool is_enabled { get; construct set; }

    /**
     * The new number of Telegram Stars that must be paid by
     * non-administrator users of the channel chat for each message sent to
     * the direct messages group;
     * 0 if the direct messages group was disabled or the messages are free
     */
    public int64 paid_message_star_count { get; construct set; }

    public MessageDirectMessagePriceChanged (
        bool is_enabled,
        int64 paid_message_star_count
    ) {
        Object (
            is_enabled: is_enabled,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "messageDirectMessagePriceChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some tasks from a checklist were marked as done or not done
 */
public class TDLib.MessageChecklistTasksDone : MessageContent {

    /**
     * Identifier of the message with the checklist; may be 0 or an
     * identifier of a deleted message
     */
    public int64 checklist_message_id { get; construct set; }

    /**
     * Identifiers of tasks that were marked as done
     */
    public Gee.ArrayList<int32?> marked_as_done_task_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Identifiers of tasks that were marked as not done
     */
    public Gee.ArrayList<int32?> marked_as_not_done_task_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public MessageChecklistTasksDone (
        int64 checklist_message_id,
        Gee.ArrayList<int32?> marked_as_done_task_ids,
        Gee.ArrayList<int32?> marked_as_not_done_task_ids
    ) {
        Object (
            checklist_message_id: checklist_message_id,
            marked_as_done_task_ids: marked_as_done_task_ids,
            marked_as_not_done_task_ids: marked_as_not_done_task_ids,
            tdlib_type: "messageChecklistTasksDone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some tasks were added to a checklist
 */
public class TDLib.MessageChecklistTasksAdded : MessageContent {

    /**
     * Identifier of the message with the checklist; may be 0 or an
     * identifier of a deleted message
     */
    public int64 checklist_message_id { get; construct set; }

    /**
     * List of tasks added to the checklist
     */
    public Gee.ArrayList<ChecklistTask?> tasks { get; construct set; default = new Gee.ArrayList<ChecklistTask?> (); }

    public MessageChecklistTasksAdded (
        int64 checklist_message_id,
        Gee.ArrayList<ChecklistTask?> tasks
    ) {
        Object (
            checklist_message_id: checklist_message_id,
            tasks: tasks,
            tdlib_type: "messageChecklistTasksAdded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Approval of suggested post has failed, because the user which proposed
 * the post had no enough funds
 */
public class TDLib.MessageSuggestedPostApprovalFailed : MessageContent {

    /**
     * Identifier of the message with the suggested post; may be 0 or an
     * identifier of a deleted message
     */
    public int64 suggested_post_message_id { get; construct set; }

    /**
     * Price of the suggested post
     */
    public SuggestedPostPrice price { get; construct set; }

    public MessageSuggestedPostApprovalFailed (
        int64 suggested_post_message_id,
        SuggestedPostPrice price
    ) {
        Object (
            suggested_post_message_id: suggested_post_message_id,
            price: price,
            tdlib_type: "messageSuggestedPostApprovalFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A suggested post was approved
 */
public class TDLib.MessageSuggestedPostApproved : MessageContent {

    /**
     * Identifier of the message with the suggested post; may be 0 or an
     * identifier of a deleted message
     */
    public int64 suggested_post_message_id { get; construct set; }

    /**
     * Price of the suggested post; may be null if the post is non-paid
     */
    public SuggestedPostPrice? price { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the post is expected to be
     * published
     */
    public int32 send_date { get; construct set; }

    public MessageSuggestedPostApproved (
        int64 suggested_post_message_id,
        SuggestedPostPrice? price,
        int32 send_date
    ) {
        Object (
            suggested_post_message_id: suggested_post_message_id,
            price: price,
            send_date: send_date,
            tdlib_type: "messageSuggestedPostApproved",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A suggested post was declined
 */
public class TDLib.MessageSuggestedPostDeclined : MessageContent {

    /**
     * Identifier of the message with the suggested post; may be 0 or an
     * identifier of a deleted message
     */
    public int64 suggested_post_message_id { get; construct set; }

    /**
     * Comment added by administrator of the channel when the post was
     * declined
     */
    public string comment { get; construct set; }

    public MessageSuggestedPostDeclined (
        int64 suggested_post_message_id,
        string comment
    ) {
        Object (
            suggested_post_message_id: suggested_post_message_id,
            comment: comment,
            tdlib_type: "messageSuggestedPostDeclined",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A suggested post was published for
 * getOption("suggested_post_lifetime_min") seconds and payment for the
 * post was received
 */
public class TDLib.MessageSuggestedPostPaid : MessageContent {

    /**
     * Identifier of the message with the suggested post; may be 0 or an
     * identifier of a deleted message
     */
    public int64 suggested_post_message_id { get; construct set; }

    /**
     * The amount of received Telegram Stars
     */
    public StarAmount star_amount { get; construct set; }

    /**
     * The amount of received Toncoins; in the smallest units of the
     * cryptocurrency
     */
    public int64 ton_amount { get; construct set; }

    public MessageSuggestedPostPaid (
        int64 suggested_post_message_id,
        StarAmount star_amount,
        int64 ton_amount
    ) {
        Object (
            suggested_post_message_id: suggested_post_message_id,
            star_amount: star_amount,
            ton_amount: ton_amount,
            tdlib_type: "messageSuggestedPostPaid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A suggested post was refunded
 */
public class TDLib.MessageSuggestedPostRefunded : MessageContent {

    /**
     * Identifier of the message with the suggested post; may be 0 or an
     * identifier of a deleted message
     */
    public int64 suggested_post_message_id { get; construct set; }

    /**
     * Reason of the refund
     */
    public SuggestedPostRefundReason reason { get; construct set; }

    public MessageSuggestedPostRefunded (
        int64 suggested_post_message_id,
        SuggestedPostRefundReason reason
    ) {
        Object (
            suggested_post_message_id: suggested_post_message_id,
            reason: reason,
            tdlib_type: "messageSuggestedPostRefunded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A contact has registered with Telegram
 */
public class TDLib.MessageContactRegistered : MessageContent {

    public MessageContactRegistered () {
        Object (
            tdlib_type: "messageContactRegistered",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The current user shared users, which were requested by the bot
 */
public class TDLib.MessageUsersShared : MessageContent {

    /**
     * The shared users
     */
    public Gee.ArrayList<SharedUser?> users { get; construct set; default = new Gee.ArrayList<SharedUser?> (); }

    /**
     * Identifier of the keyboard button with the request
     */
    public int32 button_id { get; construct set; }

    public MessageUsersShared (
        Gee.ArrayList<SharedUser?> users,
        int32 button_id
    ) {
        Object (
            users: users,
            button_id: button_id,
            tdlib_type: "messageUsersShared",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The current user shared a chat, which was requested by the bot
 */
public class TDLib.MessageChatShared : MessageContent {

    /**
     * The shared chat
     */
    public SharedChat chat { get; construct set; }

    /**
     * Identifier of the keyboard button with the request
     */
    public int32 button_id { get; construct set; }

    public MessageChatShared (
        SharedChat chat,
        int32 button_id
    ) {
        Object (
            chat: chat,
            button_id: button_id,
            tdlib_type: "messageChatShared",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user allowed the bot to send messages
 */
public class TDLib.MessageBotWriteAccessAllowed : MessageContent {

    /**
     * The reason why the bot was allowed to write messages
     */
    public BotWriteAccessAllowReason reason { get; construct set; }

    public MessageBotWriteAccessAllowed (
        BotWriteAccessAllowReason reason
    ) {
        Object (
            reason: reason,
            tdlib_type: "messageBotWriteAccessAllowed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Data from a Web App has been sent to a bot
 */
public class TDLib.MessageWebAppDataSent : MessageContent {

    /**
     * Text of the keyboardButtonTypeWebApp button, which opened the Web App
     */
    public string button_text { get; construct set; }

    public MessageWebAppDataSent (
        string button_text
    ) {
        Object (
            button_text: button_text,
            tdlib_type: "messageWebAppDataSent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Data from a Web App has been received; for bots only
 */
public class TDLib.MessageWebAppDataReceived : MessageContent {

    /**
     * Text of the keyboardButtonTypeWebApp button, which opened the Web App
     */
    public string button_text { get; construct set; }

    /**
     * The data
     */
    public string data { get; construct set; }

    public MessageWebAppDataReceived (
        string button_text,
        string data
    ) {
        Object (
            button_text: button_text,
            data: data,
            tdlib_type: "messageWebAppDataReceived",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Telegram Passport data has been sent to a bot
 */
public class TDLib.MessagePassportDataSent : MessageContent {

    /**
     * List of Telegram Passport element types sent
     */
    public Gee.ArrayList<PassportElementType?> types { get; construct set; default = new Gee.ArrayList<PassportElementType?> (); }

    public MessagePassportDataSent (
        Gee.ArrayList<PassportElementType?> types
    ) {
        Object (
            types: types,
            tdlib_type: "messagePassportDataSent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Telegram Passport data has been received; for bots only
 */
public class TDLib.MessagePassportDataReceived : MessageContent {

    /**
     * List of received Telegram Passport elements
     */
    public Gee.ArrayList<EncryptedPassportElement?> elements { get; construct set; default = new Gee.ArrayList<EncryptedPassportElement?> (); }

    /**
     * Encrypted data credentials
     */
    public EncryptedCredentials credentials { get; construct set; }

    public MessagePassportDataReceived (
        Gee.ArrayList<EncryptedPassportElement?> elements,
        EncryptedCredentials credentials
    ) {
        Object (
            elements: elements,
            credentials: credentials,
            tdlib_type: "messagePassportDataReceived",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user in the chat came within proximity alert range
 */
public class TDLib.MessageProximityAlertTriggered : MessageContent {

    /**
     * The identifier of a user or chat that triggered the proximity alert
     */
    public MessageSender traveler_id { get; construct set; }

    /**
     * The identifier of a user or chat that subscribed for the proximity
     * alert
     */
    public MessageSender watcher_id { get; construct set; }

    /**
     * The distance between the users
     */
    public int32 distance { get; construct set; }

    public MessageProximityAlertTriggered (
        MessageSender traveler_id,
        MessageSender watcher_id,
        int32 distance
    ) {
        Object (
            traveler_id: traveler_id,
            watcher_id: watcher_id,
            distance: distance,
            tdlib_type: "messageProximityAlertTriggered",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message content that is not supported in the current TDLib version
 */
public class TDLib.MessageUnsupported : MessageContent {

    public MessageUnsupported () {
        Object (
            tdlib_type: "messageUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
