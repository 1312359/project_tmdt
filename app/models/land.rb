class Land < ApplicationRecord
    attr_accessor :images
    mount_uploaders :images, ImageUploader
end