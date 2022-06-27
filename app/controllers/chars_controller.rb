class CharsController < ApplicationController
  def index
    chars = Char.all.map do |char|
      challenges = char.char_challenges.order(:id).map do |char_challenge|
        char_challenge.as_json.merge(char_challenge.challenge.as_json)
      end

      char.as_json.merge({ challenges: challenges })
    end

    render json: chars
  end

  def mark_challenge
    char_challenge = CharChallenge.find_by(char_id: params[:id], challenge_id: params[:challenge])
    marks = params[:marks]
    char_challenge.update(completed_times: marks)

    render json: char_challenge.as_json.merge(char_challenge.challenge.as_json)
  end
end
