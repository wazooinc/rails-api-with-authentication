class Api::V1::TodosController < ApplicationController
    before_action :authenticate_user!
    before_action :set_todo, only: %i[show update destroy]

    def index
        @todos = Todo.by_user(current_user)
        render json: @todos
    end

    def show
        render json: @todo
    end

    def create
        @todo = Todo.new(valid_params)
        if @todo.save
            render json: @todo, status: 201
        else
            render json: @todo.errors, status: :unprocessable_entity
        end
    end

    def update

        if @todo
            @todo.update(valid_params)
            render json: {message: 'Todo updated'}, status: 200
        else 
            render json: {error: 'Unable to update Todo'}, status: 500
        end
    end

    def destroy

        if @todo
            @todo.destroy
            render json: {message: 'Todo destroyed'}, status: 200
        else
            render json: {error: 'Unable to destroy'}, status: 500
        end
    end

    private

    def set_todo
        @todo = Todo.by_user(current_user).find(params[:id])
        rescue ActiveRecord::RecordNotFound
            render json: {error: 'Unable to find Todo'}, status: 404
    end

    def valid_params
        params.require(:todo).permit(:title, :status, :is_completed)
    end


end
