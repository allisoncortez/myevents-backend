class Api::V1::CommentsController < ApplicationController
    before_action :set_event#, except: [:destroy]

    def index
        comments = @event.comments
        render json: CommentSerializer.new(comments)
    end

    def create 
        comment = @event.comments.build(comment_params)
        if comment.save
            # render json: CommentSerializer.new(comment), status: :accepted
            render json: EventSerializer.new(@event), status: :accepted
        else
            render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy 
        comment = Comment.find_by(id: params[:id]) 
        comment.destroy
        # render json: CommentSerializer.new(comment)

    end

    private 
    def set_event
        @event = Event.find(params[:event_id])
    end

    def comment_params
        params.require(:comment).permit(:description, :event_id)
    end
end
