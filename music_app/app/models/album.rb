class Album < ApplicationRecord

    validates :title, :year, :band_id, :live, presence: true
    validates :live, inclusion: {in: [true, false]}

    belongs_to :band,
        foreign_key: :band_id,
        class_name: :Band

end
