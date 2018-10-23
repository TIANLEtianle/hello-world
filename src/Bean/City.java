package Bean;

public class City {
   private int cityId;
   private int provinceId;
   private String cityCode;
   private String cityName;

   public City() {
       super();
   }

   public City(int cityId,int provinceId,String cityCode,String cityName) {
       super();
       this.cityId = cityId;
       this.provinceId = provinceId;
       this.cityCode = cityCode;
       this.cityName = cityName;
   }

   public void setCityId(int Id) {
       this.cityId = Id;
   }

   public int getCityId() {
       return this.cityId;
   }

   public void setProvinceId(int Id) {
       this.provinceId = Id;
   }

   public int getProvinceId() {
       return this.provinceId;
   }

   public void setCityCode(String Code) {
       this.cityCode = Code;
   }

   public String getCityCode() {
       return this.cityCode;
   }

   public void setCityName(String Name) {
       this.cityName = Name;
   }

   public String getCityName() {
       return this.cityName;
   }
}
