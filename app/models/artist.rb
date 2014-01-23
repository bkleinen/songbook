class Artist < ActiveRecord::Base
  has_many :songs
  def list_name
    "#{last}, #{first} #{middle}"
  end
  def name
    "#{first} #{middle} #{last}"
  end
end
