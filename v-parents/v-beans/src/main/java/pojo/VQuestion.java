package pojo;


import java.io.Serializable;

/**
 * 用户密保问题类
 */
public class VQuestion implements Serializable {

  private long vQuestionId; //问题id
  private String vQuestionTitle; //问题题目


  public long getVQuestionId() {
    return vQuestionId;
  }

  public void setVQuestionId(long vQuestionId) {
    this.vQuestionId = vQuestionId;
  }


  public String getVQuestionTitle() {
    return vQuestionTitle;
  }

  public void setVQuestionTitle(String vQuestionTitle) {
    this.vQuestionTitle = vQuestionTitle;
  }

}
