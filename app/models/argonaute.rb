class Argonaute < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3, message: 'should include at least 3 caracters'}
end
