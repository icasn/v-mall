package pojo;


import java.io.Serializable;

/**
 * 浏览记录类
 */
public class VBrowsinghistory implements Serializable {

  private long vHistoryId; //记录id
  private long vUserId; //用户id
  private long vProductId; //商品id
  private VProduct vProduct; //商品对象

  public VProduct getvProduct() {
    return vProduct;
  }

  public void setvProduct(VProduct vProduct) {
    this.vProduct = vProduct;
  }

  public long getVHistoryId() {
    return vHistoryId;
  }

  public void setVHistoryId(long vHistoryId) {
    this.vHistoryId = vHistoryId;
  }


  public long getVUserId() {
    return vUserId;
  }

  public void setVUserId(long vUserId) {
    this.vUserId = vUserId;
  }


  public long getVProductId() {
    return vProductId;
  }

  public void setVProductId(long vProductId) {
    this.vProductId = vProductId;
  }

}
