# frozen_string_literal: true

class Like < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
end
