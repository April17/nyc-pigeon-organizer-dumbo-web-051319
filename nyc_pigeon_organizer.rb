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
  data.each do |dataCgl, dataCglVal|
    dataCglVal.each do |dataCglKey, dataPig|
      for i in 0...dataPig.length
        datalist.each do |listPigKey, listPigValue|
          listPigValue.each do |listCglKey, listCglValue|
            if listCglKey.to_s == dataCgl.to_s && listPigKey.to_s == dataPig[i]
              datalist[listPigKey][listCglKey] << dataCglKey.to_s
            end
          end
        end
      end
    end
  end
  binding.pry
  return dataList
end
