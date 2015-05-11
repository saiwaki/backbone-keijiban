json.array! @boards do |board|
  json.merge! board.attributes
  json.comments board.comments
end