package pojo;


import java.io.Serializable;

/**
 * 品牌类
 */
public class VBrand implements Serializable {

  private long vBrandId;
  private String vBrandName;


  public long getVBrandId() {
    return vBrandId;
  }

  public void setVBrandId(long vBrandId) {
    this.vBrandId = vBrandId;
  }


  public String getVBrandName() {
    return vBrandName;
  }

  public void setVBrandName(String vBrandName) {
    this.vBrandName = vBrandName;
  }

}
