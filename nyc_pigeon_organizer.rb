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
  end
  data.each do |cgl, cglVal|
    cglVal.each do |cglData, pig|
      pig.each do |ele|
        dataList[ele][cgl] = []
      end
    end
  end
  #List, pigKey = data, aryEle
  #List, cglKey = data, cglKey
  #List, cglVal = data, aryEleKey
  dataList.each do |pigKey, pigValue|
    pigValue.each do |listCglKey, listCglValue|
      data.each do |cgl, cglVal|
        if listCglKey.to_s == cgl.to_s
          cglVal.each do |cglKey, ary|
            for i in 0...ary.length
              if pigKey.to_s == ary[0]
                dataList[pigKey][listCglKey] << cglKey.to_s
              end
            end
          end
        end
      end
    end
  end
  binding.pry
  return dataList
end
