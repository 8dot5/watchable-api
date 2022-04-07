class Watchable < ApplicationRecord
    belongs_to :category
    belongs_to :user
    # belongs_to :service
end
