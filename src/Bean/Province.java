package Bean;

public class Province {
    private int provinceId;
    private String provinceCode;
    private String provinceName;
    private String provinceNum;


    public Province() {
        super();
    }

    public Province(int provinceId,String provinceCode,String provinceName,String provinceNum) {
        super();
        this.provinceId = provinceId;
        this.provinceCode = provinceCode;
        this.provinceName = provinceName;
        this.provinceNum = provinceNum;
    }
    public void setProvinceId(int Id) {
        this.provinceId = Id;
    }

    public int getProvinceId() {
        return this.provinceId;
    }

    public void setProvinceCode(String Code) {
        this.provinceCode = Code;
    }

    public String getProvinceCode() {
        return this.provinceCode;
    }

    public void setProvinceName(String Name) {
        this.provinceName = Name;
    }

    public String getProvinceName() {
        return this.provinceName;
    }

    public void setProvinceNum(String Num) {
        this.provinceNum = Num;
    }

    public String getProvinceNum() {
        return this.provinceNum;
    }
}
