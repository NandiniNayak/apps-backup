class Menu < ApplicationRecord
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  has_many :orders

  mount_uploader :picture, MenuPictureUploader

  def self.latest
    Menu.order(:updated_at).last
  end
  private

    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base,'Line Items Present')
        throw :abort
      end
    end

    def exists?
      if @menu
        return true
      end
    end
end
