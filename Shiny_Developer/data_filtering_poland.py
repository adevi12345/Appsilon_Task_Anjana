final_index=0
with open("poland_data.csv", "a+",encoding="utf8") as fwo:
  with open('D:\\FL\\Appsilon\\biodiversity-data.tar\\biodiversity-data\\occurence.csv',encoding="utf8") as fo:
  for index, i in enumerate(fo):
  final_index = index

try:
  if "poland" in i.lower():
  fwo.writelines([i])
except Exception as e:
  print(e)
pass
print(final_index)
