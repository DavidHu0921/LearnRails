# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  storage :file
  
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted: 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}" 
  end

  # 添加一个白名单，指定允许上传的图像类型 
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
