package pojo;


import java.io.Serializable;

/**
 * 购物车商品对象
 */
public class VCartproduct implements Serializable {

  private long vCartProductId; //购物车商品id
  private long vProductId; //商品id
  private long vNum; //商品数量
  private VProduct vProduct; //商品对象

  public VProduct getvProduct()  {
    return vProduct;
  }

  public void setvProduct(VProduct vProduct) {
    this.vProduct = vProduct;
  }

  public long getVCartProductId() {
    return vCartProductId;
  }

  public void setVCartProductId(long vCartProductId) {
    this.vCartProductId = vCartProductId;
  }


  public long getVProductId() {
    return vProductId;
  }

  public void setVProductId(long vProductId) {
    this.vProductId = vProductId;
  }


  public long getVNum() {
    return vNum;
  }

  public void setVNum(long vNum) {
    this.vNum = vNum;
  }

}
