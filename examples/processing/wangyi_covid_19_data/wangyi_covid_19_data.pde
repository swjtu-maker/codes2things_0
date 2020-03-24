import http.requests.*;

JSONObject json;


public void setup() 
{
  size(400,400);
  smooth();
  
  GetRequest get = new GetRequest("https://c.m.163.com/ug/api/wuhan/app/data/list-total");
  get.send();
  String res = get.getContent();
  println("Reponse Content: " + res);
  println("Reponse Content-Length Header: " + get.getHeader("Content-Length"));
  
  json = loadJSONObject(res);
  JSONObject data = json.getJSONObject("data");
  JSONObject chinaTotal = data.getJSONObject("chinaTotal");
  JSONObject today = chinaTotal.getJSONObject("today");
  

  
}
