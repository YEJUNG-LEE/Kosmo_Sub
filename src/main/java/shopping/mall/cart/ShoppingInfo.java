package shopping.mall.cart;

//고객이 주문한 상품 1개에 대한 정보를 담고 있는 Bean 클래스
public class ShoppingInfo {
	private int mid ;	// 장바구니 번호
	private String id;
	private int pnum ; // 상품 번호
	private String pname ; // 상품 이름
	private int qty ; // 주문 수량
	private int price ; // 단가
	private String image ; // 상품 이미지 이름
	private int point ; // 회원에게 적립할 포인트
	private int gram; // 배송희망 날짜
	
	// getter, setter, toString() 구현하기
	
	
	public int getPnum() {
		return pnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	
	public int getGram() {
		return gram;
	}
	public void setGram(int gram) {
		this.gram = gram;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	@Override
	public String toString() {
		return "ShoppingInfo [mid=" + mid + ", id=" + id + ", pnum=" + pnum + ", pname=" + pname + ", qty=" + qty
				+ ", price=" + price + ", image=" + image + ", point=" + point + ", gram=" + gram + "]";
	}
	
	
	
	
	
}
