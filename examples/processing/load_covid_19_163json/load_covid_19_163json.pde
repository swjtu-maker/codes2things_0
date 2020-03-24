JSONObject json;

public void setup() 
{
  json = loadJSONObject("0324.json");
  JSONObject data = json.getJSONObject("data");
  JSONObject chinaTotal = data.getJSONObject("chinaTotal");
  JSONObject today = chinaTotal.getJSONObject("today");
  int confirm = today.getInt("confirm");
  println(confirm);
  
}
