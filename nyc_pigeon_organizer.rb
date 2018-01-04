def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, types|
    types.each do |type, names|
      names.each do |name|
        pigeon_list[name] = {} if pigeon_list[name] == nil
        pigeon_list[name][category] = [] if pigeon_list[name][category] == nil
        pigeon_list[name][category] << type.to_s
      end
    end
  end
  pigeon_list
end
