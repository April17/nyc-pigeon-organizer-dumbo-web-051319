require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  dataList = {}
  data.each do |cgl, cglVal|
    cglVal.each do |cglData, pig|
      pig.each do |ele|
        dataList[ele] = {}
      end
    end
    dataList[ele][cgl] = []
  end
  binding.pry
  return dataList
end
