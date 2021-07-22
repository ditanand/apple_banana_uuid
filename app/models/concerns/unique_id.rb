module UniqueId
  extend ActiveSupport::Concern

  included do
    before_create :populate_uuid
    private

    def populate_uuid
      begin
        self.id = UUIDTools::UUID.md5_create(UUIDTools::UUID.timestamp_create, UUIDTools::UUID.random_create)
      end while self.class.exists?(id: id)
    end
  end
end