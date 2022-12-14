class ApplicationController < ActionController::Base
        before_action do
                I18n.locale = :ja
        end
        protect_from_forgery with: :null_session
        include DeviseTokenAuth::Concerns::SetUserByToken

end
