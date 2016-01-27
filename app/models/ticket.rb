class Ticket < ActiveRecord::Base
    has_many :ticket_attachments
   accepts_nested_attributes_for :ticket_attachments
end
