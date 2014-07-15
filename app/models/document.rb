class Document < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader

  searchable do
    integer :id
    time :created_at
    time :updated_at
    text :document_content, stored: true
  end

  def document_content
    if attachment.file.extension == 'pdf' then
      `pdftotext #{attachment.path} -`.squish
    else
      ''
    end
  end
end
