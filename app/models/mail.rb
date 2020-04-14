class Mail < ApplicationRecord
    validates :content, {presence: true, length:{maximum: 300}}
    validates :content, exclusion: { in: %w(しね)} 
end
