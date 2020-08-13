class Api::V1::CommentsController < ApplicationController
    before_action :set_event

    def index
        comments = @event.comments
        render json: CommentSerializer.new(comments)
    end

    def create 
        comment = @event.comments.build(comment_params)
        if comment.save
            render json: CommentSerializer.new(comment), status: :accepted
        else
            render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private 
    def set_event
        @event = Event.find(params[:event_id])
    end

    def comment_params
        params.require(:comment).permit(:description, :event_id)
    end
end
