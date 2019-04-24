package pojo;


import java.io.Serializable;

/**
 * 秒杀订单表
 */
public class VSeckillOrder implements Serializable {

  private long vSeckillOrderId; //秒杀订单id
  private long vSeckillProductId; //秒杀商品id
  private long vSeckillUserId; //秒杀用户id
  private java.sql.Timestamp vSeckillCreateDate; //秒杀订单创建时间
  private VProduct vProduct; //商品对象

  public VProduct getvProduct() {
    return vProduct;
  }

  public void setvProduct(VProduct vProduct) {
    this.vProduct = vProduct;
  }

  public long getVSeckillOrderId() {
    return vSeckillOrderId;
  }

  public void setVSeckillOrderId(long vSeckillOrderId) {
    this.vSeckillOrderId = vSeckillOrderId;
  }


  public long getVSeckillProductId() {
    return vSeckillProductId;
  }

  public void setVSeckillProductId(long vSeckillProductId) {
    this.vSeckillProductId = vSeckillProductId;
  }


  public long getVSeckillUserId() {
    return vSeckillUserId;
  }

  public void setVSeckillUserId(long vSeckillUserId) {
    this.vSeckillUserId = vSeckillUserId;
  }


  public java.sql.Timestamp getVSeckillCreateDate() {
    return vSeckillCreateDate;
  }

  public void setVSeckillCreateDate(java.sql.Timestamp vSeckillCreateDate) {
    this.vSeckillCreateDate = vSeckillCreateDate;
  }

}
