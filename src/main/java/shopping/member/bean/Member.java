package shopping.member.bean;

public class Member {
	private String cId ;
	private String cPassword ;
	private String cName ;
	private String cGender ;
	
	// 날짜 형식이지만 문자열로 처리합니다.
	private String cBirth ;
		
	public Member() {
		
	}
	@Override
	public String toString() {
		return "Member [cId=" + cId + ", cPassword=" + cPassword + ", cName=" + cName + ", cGender=" + cGender
				+ ", cBirth=" + cBirth + "]";
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getcPassword() {
		return cPassword;
	}

	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cCname) {
		this.cName = cCname;
	}

	public String getcGender() {
		return cGender;
	}

	public void setcGender(String cGender) {
		this.cGender = cGender;
	}

	public String getcBirth() {
		return cBirth;
	}

	public void setcBirth(String cBirth) {
		this.cBirth = cBirth;
	}
	
}