class SongSerializer
  include JSONAPI::Serializer
  attributes  :file_name,
              :hour,
              :id,
              :music_uri,
              :weather
end
