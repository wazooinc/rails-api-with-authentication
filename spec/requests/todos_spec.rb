require 'swagger_helper'

describe 'Todos API' do

    path '/api/v1/todos' do

        post 'Creates a Todo' do
            tags 'Todos'
            consumes 'application/json'
            parameter name: :todo, in: :body, schema: {
                type: :object,
                properties: {
                    title: { type: :string},
                    status: { type: :string},
                    is_completed: { type: :boolean}
                },
                required: ['title']
            }

            response '201', 'Todo created' do
                let(:todo){ {title: 'new todo', is_completed: false }}
                run_test!
            end

            response '422', 'invalid request' do
                let(:todo) { {is_completed: false}}
                run_test!
            end
        end
    end
end
