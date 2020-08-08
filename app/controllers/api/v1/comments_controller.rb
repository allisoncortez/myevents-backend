class Api::V1::CommentsController < ApplicationController

    # before_action :set_event
    # # api/v1/events/1/comments
    # def index
    #     comments = @event.comments
    #     render json: comments
    # end

    # def create 
    #     comment = @event.comments.build(comment_params)
    #     if comment.save
    #         render json: comment, status: :accepted
    #     end
    # end

    # private 

    # def set_event
    #     @event = Event.find(params[:event_id])
    # end

    # def comment_params
    #     params.require(:comment).permit(:description, :event_id)
    # end
end
