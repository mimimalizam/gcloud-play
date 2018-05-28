class GoogleCloudClient
  FILE_NAME = "tmp.json"

  def fetch_costs(file_location)
    download_file(file_location)
    JSON.parse(File.read(FILE_NAME))
  end

  private

  def download_file(file_location)
    connect_to_bucket
    .file(file_location)
    .download(FILE_NAME)
  end
  
  def connect_to_bucket
    storage = Google::Cloud::Storage.new(
      project_id: ENV['GC_PROJECT_ID'],
      credentials: ENV['GC_JSON_FILE']
    )

    bucket = storage.bucket ENV['GC_BUCKET_NAME']
  end
end
