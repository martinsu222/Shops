# == Schema Information
#
# Table name: stores
#
#  id          :integer          not null, primary key
#  description :string
#  location    :string
#  style       :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Store < ApplicationRecord

  has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "store_id", :dependent => :destroy })

  
end
