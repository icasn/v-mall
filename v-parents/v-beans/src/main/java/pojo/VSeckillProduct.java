package pojo;


import java.io.Serializable;

public class VSeckillProduct implements Serializable {

  private long vSeckillId;
  private long vSeckillProductId;
  private long vSeckillQuantity;
  private double vSeckillPrice;
  private java.sql.Timestamp vSeckillStartDate;
  private java.sql.Timestamp vSeckillEndDate;
  private VProduct vProduct;

  public VProduct getvProduct() {
    return vProduct;
  }

  public void setvProduct(VProduct vProduct) {
    this.vProduct = vProduct;
  }

  public long getVSeckillId() {
    return vSeckillId;
  }

  public void setVSeckillId(long vSeckillId) {
    this.vSeckillId = vSeckillId;
  }


  public long getVSeckillProductId() {
    return vSeckillProductId;
  }

  public void setVSeckillProductId(long vSeckillProductId) {
    this.vSeckillProductId = vSeckillProductId;
  }


  public long getVSeckillQuantity() {
    return vSeckillQuantity;
  }

  public void setVSeckillQuantity(long vSeckillQuantity) {
    this.vSeckillQuantity = vSeckillQuantity;
  }


  public double getVSeckillPrice() {
    return vSeckillPrice;
  }

  public void setVSeckillPrice(double vSeckillPrice) {
    this.vSeckillPrice = vSeckillPrice;
  }


  public java.sql.Timestamp getVSeckillStartDate() {
    return vSeckillStartDate;
  }

  public void setVSeckillStartDate(java.sql.Timestamp vSeckillStartDate) {
    this.vSeckillStartDate = vSeckillStartDate;
  }


  public java.sql.Timestamp getVSeckillEndDate() {
    return vSeckillEndDate;
  }

  public void setVSeckillEndDate(java.sql.Timestamp vSeckillEndDate) {
    this.vSeckillEndDate = vSeckillEndDate;
  }

}
