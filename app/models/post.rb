class Post < ApplicationRecord
    validates :title, :description, presence: true
    validates :title, length:{ minimum: 5 }
    validates :description, length:{ minimum: 5 }

    # função para alterar titulo
    before_save do
        self.title = "Post - " + self.title
    end
end
