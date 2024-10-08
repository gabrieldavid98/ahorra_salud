# == Schema Information
#
# Table name: health_centers
#
#  id         :bigint           not null, primary key
#  name       :string
#  address    :string
#  phone      :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class HealthCenter < ApplicationRecord
end
