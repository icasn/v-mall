package pojo;


import java.io.Serializable;
import java.util.List;

/**
 * 商品分类对象
 */
public class VCategory implements Serializable {

  private long vCategoryId;  //分类id
  private String vCategoryName; // 分类名
  private long vParentCategoryId; //父级分类id
  private long vType; //分类类型（1-2-3级分类）
  private String vIconClass; //分类图片路径
  private List<VCategory> childrenCategories;  //子分类


  public List<VCategory> getChildrenCategories() {
    return childrenCategories;
  }

  public void setChildrenCategories(List<VCategory> childrenCategories) {
    this.childrenCategories = childrenCategories;
  }

  public long getVCategoryId() {
    return vCategoryId;
  }

  public void setVCategoryId(long vCategoryId) {
    this.vCategoryId = vCategoryId;
  }


  public String getVCategoryName() {
    return vCategoryName;
  }

  public void setVCategoryName(String vCategoryName) {
    this.vCategoryName = vCategoryName;
  }


  public long getVParentCategoryId() {
    return vParentCategoryId;
  }

  public void setVParentCategoryId(long vParentCategoryId) {
    this.vParentCategoryId = vParentCategoryId;
  }


  public long getVType() {
    return vType;
  }

  public void setVType(long vType) {
    this.vType = vType;
  }


  public String getVIconClass() {
    return vIconClass;
  }

  public void setVIconClass(String vIconClass) {
    this.vIconClass = vIconClass;
  }

}
