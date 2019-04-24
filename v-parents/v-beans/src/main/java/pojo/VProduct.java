package pojo;


import java.io.Serializable;

/**
 * 商品类
 */
public class VProduct implements Serializable {

  private long vProductId; //商品id
  private String vProductName; //商品名
  private long vCategoryLevel1; //商品分类等级1
  private long vCategoryLevel2; //商品分类等级2
  private long vCategoryLevel3;//商品分类等级3
  private long vStore; //商品库存
  private double vPrice; //商品价格
  private String vImgUrl; //商品图片路径
  private double vGrade; //商品积分
  private long vIsDelete; //是否上下架(0上架 1下架)
  private long vBrandId; //品牌id


  public long getVProductId() {
    return vProductId;
  }

  public void setVProductId(long vProductId) {
    this.vProductId = vProductId;
  }


  public String getVProductName() {
    return vProductName;
  }

  public void setVProductName(String vProductName) {
    this.vProductName = vProductName;
  }


  public long getVCategoryLevel1() {
    return vCategoryLevel1;
  }

  public void setVCategoryLevel1(long vCategoryLevel1) {
    this.vCategoryLevel1 = vCategoryLevel1;
  }


  public long getVCategoryLevel2() {
    return vCategoryLevel2;
  }

  public void setVCategoryLevel2(long vCategoryLevel2) {
    this.vCategoryLevel2 = vCategoryLevel2;
  }


  public long getVCategoryLevel3() {
    return vCategoryLevel3;
  }

  public void setVCategoryLevel3(long vCategoryLevel3) {
    this.vCategoryLevel3 = vCategoryLevel3;
  }


  public long getVStore() {
    return vStore;
  }

  public void setVStore(long vStore) {
    this.vStore = vStore;
  }


  public double getVPrice() {
    return vPrice;
  }

  public void setVPrice(double vPrice) {
    this.vPrice = vPrice;
  }


  public String getVImgUrl() {
    return vImgUrl;
  }

  public void setVImgUrl(String vImgUrl) {
    this.vImgUrl = vImgUrl;
  }


  public double getVGrade() {
    return vGrade;
  }

  public void setVGrade(double vGrade) {
    this.vGrade = vGrade;
  }


  public long getVIsDelete() {
    return vIsDelete;
  }

  public void setVIsDelete(long vIsDelete) {
    this.vIsDelete = vIsDelete;
  }


  public long getVBrandId() {
    return vBrandId;
  }

  public void setVBrandId(long vBrandId) {
    this.vBrandId = vBrandId;
  }

}
