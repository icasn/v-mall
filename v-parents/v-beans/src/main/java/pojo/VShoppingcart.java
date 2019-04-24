package pojo;


import java.io.Serializable;

/**
 * 购物车类
 */
public class VShoppingcart implements Serializable {

  private long vCartId; //购物车id
  private long vCartProductId; //购物车商品对象id
  private long vUserId; //用户id
  private VCartproduct vCartproduct; //购物车商品对象


  public VCartproduct getvCartproduct() {
    return vCartproduct;
  }

  public void setvCartproduct(VCartproduct vCartproduct) {
    this.vCartproduct = vCartproduct;
  }

  public long getVCartId() {
    return vCartId;
  }

  public void setVCartId(long vCartId) {
    this.vCartId = vCartId;
  }


  public long getVCartProductId() {
    return vCartProductId;
  }

  public void setVCartProductId(long vCartProductId) {
    this.vCartProductId = vCartProductId;
  }


  public long getVUserId() {
    return vUserId;
  }

  public void setVUserId(long vUserId) {
    this.vUserId = vUserId;
  }

}
