package shopping.product.bean;

public class Product {
	private int num ;
	private String name ;
	private String image ;
	private int stock ; 
	private int price ;
	private int gram;
	private String category ;
	private String contents ;
	private int point ;
	private String inputdate  ; // 날짜 타입
	private String remark;
	
	@Override
	public String toString() {
		return "Product [num=" + num + ", name=" + name + ", image=" + image + ", stock=" + stock + ", price=" + price
				+ ", gram=" + gram + ", category=" + category + ", contents=" + contents + ", point=" + point
				+ ", inputdate=" + inputdate + ", remark=" + remark + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getGram() {
		return gram;
	}

	public void setGram(int gram) {
		this.gram = gram;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
