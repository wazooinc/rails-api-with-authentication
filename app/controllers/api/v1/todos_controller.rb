class Api::V1::TodosController < ApplicationController

    def index
        @todos = Todo.all
        render json: @todos
    end

    def show
        @todo = Todo.find(params[:id])
        render json: @todo
    end

    def create
        @todo = Todo.new(valid_params)
        if @todo.save
            render json: @todo, status: 200
        else
            render json: @todo.errors, status: :unprocessable_entity
        end
    end

    def update
        @todo = Todo.find(params[:id])
        if @todo
            @todo.update(valid_params)
            render json: {message: 'Todo updated'}, status: 200
        else 
            render json: {error: 'Unable to update Todo'}, status: 500
        end
    end

    def destroy
        @todo = Todo.find(params[:id])
        if @todo
            @todo.destroy
            render json: {message: 'Todo destroyed'}, status: 200
        else
            render json: {error: 'Unable to destroy'}, status: 500
        end
    end

end
