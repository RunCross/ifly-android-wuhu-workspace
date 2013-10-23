首先新建类
class per{
  int id;
  String name;
  ……

  
  public get/set ……
  

}

然后在函数里调用

Gson gson = new Gson();
Person per = gson.fromJson(result,Person.class);

result 是 String 也可是 Reader