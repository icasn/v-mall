package pojo;


import java.io.Serializable;

public class VOrderDetails implements Serializable {

  private long vOrderDetailId;
  private long vProductId;
  private long vQuantity;
  private double vCost;
  private VProduct vProduct;

  public VProduct getvProduct() {
    return vProduct;
  }

  public void setvProduct(VProduct vProduct) {
    this.vProduct = vProduct;
  }

  public long getVOrderDetailId() {
    return vOrderDetailId;
  }

  public void setVOrderDetailId(long vOrderDetailId) {
    this.vOrderDetailId = vOrderDetailId;
  }


  public long getVProductId() {
    return vProductId;
  }

  public void setVProductId(long vProductId) {
    this.vProductId = vProductId;
  }


  public long getVQuantity() {
    return vQuantity;
  }

  public void setVQuantity(long vQuantity) {
    this.vQuantity = vQuantity;
  }


  public double getVCost() {
    return vCost;
  }

  public void setVCost(double vCost) {
    this.vCost = vCost;
  }

}
