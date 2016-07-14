class Node < ApplicationRecord
  has_many :attachments, inverse_of: :node, dependent: :destroy

  accepts_nested_attributes_for :attachments, reject_if: proc { |a| a[:file].blank? }, allow_destroy: true

  validates :name, presence: true
end
