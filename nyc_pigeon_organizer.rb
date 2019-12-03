require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |first_level, other|
    other.each do |stats, names|
      names.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
# colour assignment
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      pigeon_list.keys.each do |bird|
        if bird_name === bird
          pigeon_list[bird][:color] << bird_color.to_s
        end
      end
    end
  end


  pigeon_list
end
# binding.pry
