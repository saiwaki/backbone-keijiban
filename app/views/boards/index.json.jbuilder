json.array! @boards do |board|
  json.merge! board.attributes
end