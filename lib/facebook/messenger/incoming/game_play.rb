module Facebook
  module Messenger
    module Incoming
      #
      # This callback occurs after a person played a round of Instant Games.
      # @see https://developers.facebook.com/docs/messenger-platform/reference/webhook-events/messaging_game_plays
      #
      class GamePlay
        include Facebook::Messenger::Incoming::Common

        #
        # Function return game id.
        #
        # @return [String] Game ID.
        #
        def game_id
          @messaging['game_play']['game_id']
        end

        #
        # Function return player id.
        #
        # @return [String] Player ID.
        #
        def player_id
          @messaging['game_play']['player_id']
        end

        #
        # Function return context id.
        #
        # @return [String] Context ID.
        #
        def context_id
          @messaging['game_play']['context_id']
        end

        #
        # Get the type of context of the game.
        #
        # @return [String] Context type.
        #
        def context_type
          @messaging['game_play']['context_type']
        end

        #
        # Get the actual score in the game.
        #
        # @return [String] Score.
        #
        def score
          @messaging['game_play']['score']
        end

        #
        # Get the payload associated to the game.
        #
        # @return [String] payload.
        #
        def payload
          @messaging['game_play']['payload']
        end
      end
    end
  end
end
