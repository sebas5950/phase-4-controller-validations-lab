class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_error


        private

        def unprocessable_entity_error(invalid)
            render json: {errors: invalid.record.errors}, status: :unprocessable_entity
        end
end
