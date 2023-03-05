# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :integer
#  user_id    :integer
#
class Bookmark < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })

  belongs_to(:store, { :required => true, :class_name => "Store", :foreign_key => "store_id" })
end
