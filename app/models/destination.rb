class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts


#     The most recent 5 posts written about this destination
# 

#sort posts about destination
# Record.where(category: :animal).order(value: :desc).first

def newest_five
    Post.where(destination_id: self.id).order(created_at: :desc).limit(5)
end


def most_likes
    Post.where(destination_id: self.id).order(likes: :desc).limit(1)
end

def avg_age 
    self.bloggers.distinct.average(:age).round()
end


end
