class TicketAttachment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :ticket
end
