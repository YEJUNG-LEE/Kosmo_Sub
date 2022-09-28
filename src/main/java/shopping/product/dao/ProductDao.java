package shopping.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shopping.common.dao.SuperDao;
import shopping.product.bean.Product;

public class ProductDao extends SuperDao{	
	public ProductDao() {
		
	}
	
	public List<Product> SelectAll() {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		String sql = " select * from products " ;
		sql += " order by num asc " ; 
		
		List<Product> lists = new ArrayList<Product>() ;
		
		try {			
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
					
			rs = pstmt.executeQuery();				
			
			// while 구문을 사용하여 데이터 넣어 주기
			while(rs.next()) {
				Product bean = new Product(); 
				bean.setCategory(rs.getString("category"));
				bean.setImage(rs.getString("image"));
				bean.setInputdate(String.valueOf(rs.getDate("inputdate")));
				bean.setName(rs.getString("name"));
				bean.setNum(rs.getInt("num"));
				bean.setPoint(rs.getInt("point"));
				bean.setPrice(rs.getInt("price"));
				bean.setStock(rs.getInt("stock"));
				
				lists.add(bean) ;
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return lists;		
	}
	
	public List<Product> SelectPok(String str1) {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		String sql = " select * from products " ;
		sql += " where category = ? " ; 
		sql += " order by num asc " ; 
		
		List<Product> lists = new ArrayList<Product>() ;
		
		try {			
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, str1);
			
			rs = pstmt.executeQuery();				
			
			// while 구문을 사용하여 데이터 넣어 주기
			while(rs.next()) {
			   Product bean = new Product(); 
				
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setImage(rs.getString("image"));
				bean.setStock(rs.getInt("stock"));
				bean.setPrice(rs.getInt("price"));
				bean.setGram(rs.getInt("gram"));
				bean.setCategory(rs.getString("category"));
				bean.setPoint(rs.getInt("point"));
				bean.setInputdate(String.valueOf(rs.getDate("inputdate")));
				
				lists.add(bean) ;
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return lists;		
	}
	
	
	public int UpdateData(Product bean) {
		// 특정 상품에 대한 정보를 수정합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		
		String sql = " update products set " ;
		sql += " name=?, image=?, stock=?, price=?, gram=?, category=?, point=?, inputdate=?, remark=? " ;
		sql += " where num = ? " ;
		
		int cnt = -999 ; 
		
		try {
			conn = super.getConnection() ;
			conn.setAutoCommit(false);
			
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, bean.getName()) ;
			pstmt.setString(2, bean.getImage()) ;
			pstmt.setInt(3, bean.getStock()) ;
			pstmt.setInt(4, bean.getPrice()) ;
			pstmt.setInt(5, bean.getGram()) ;
			pstmt.setString(6, bean.getCategory()) ;
			pstmt.setInt(7, bean.getPoint()) ;
			pstmt.setString(8, bean.getInputdate()) ;
			pstmt.setString(9, bean.getRemark()) ;
			pstmt.setInt(10, bean.getNum()) ;
					
			cnt = pstmt.executeUpdate() ; 
			
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			try {
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt ;
	}
	
	public int InsertData(Product bean) {
		System.out.println(bean) ;		
		
		Connection conn = null ;
		PreparedStatement pstmt = null ; 
		int cnt = -999 ; 

		String sql = " insert into products(num, name, image, stock, price, gram, category, point, inputdate) " ;
		sql += " values(seqprod.nextval, ?, ?, ?, ?, ?, ?, ?, ?) " ; 
		
		try {
			conn = super.getConnection() ;
			conn.setAutoCommit(false);  
			
			pstmt = conn.prepareStatement(sql) ; 
			
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getImage());
			pstmt.setInt(3, bean.getStock());
			pstmt.setInt(4, bean.getPrice());
			pstmt.setInt(5, bean.getGram());
			pstmt.setString(6, bean.getCategory());
			pstmt.setInt(7, bean.getPoint());
			pstmt.setString(8, bean.getInputdate());
			
			cnt = pstmt.executeUpdate() ;
			
			conn.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
						
		} finally {
			try {
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return cnt  ;
	}

	public int DeleteData(int num) {
		/*
		 	< 상품이 제거되는 경우 해야 할 일 >
		 	1. 주문 상세 테이블의 remark 컬럼 업데이트
		 	2. 상품 테이블에 해당 행을 삭제
		 */
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		
		int cnt = -999 ; 
		
		try {
			conn = super.getConnection() ;
			conn.setAutoCommit(false);
			
			String sql = "";
			
			Product bean = this.SelectOne(num);
			
			String imsi = "상품 " + bean.getName() + "(" + num + ")은(는) 더이상 판매되지 않습니다." ;
			
//			//1. 주문 상세 테이블의 remark 컬럼 업데이트
//			sql = " update orderdetails set remark = ? " ;
//			sql += " where pnum = ? " ;
//			
//			pstmt = conn.prepareStatement(sql) ;
//			pstmt.setString(1, imsi);
//			pstmt.setInt(2, num);
//			cnt = pstmt.executeUpdate() ;
//			
//			if(pstmt != null) {pstmt.close();}
			
			// 2. 상품 테이블에 해당 행을 삭제
			sql = " delete from products where num = ? " ;
			
			pstmt = conn.prepareStatement(sql) ;
			pstmt.setInt(1, num);
			cnt = pstmt.executeUpdate() ;
			
			
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			try {
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt ;
	}


	public Product SelectOne(int num) {
		// 1건의 데이터를 조회합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		String sql = " select * from products where num = ? " ; 
		
		Product bean = null ; 
		
		try {
			conn = this.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setInt(1, num); 
			
			rs = pstmt.executeQuery() ;
			if (rs.next()) {
				bean = new Product();
				
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setImage(rs.getString("image"));
				bean.setStock(rs.getInt("stock"));
				bean.setPrice(rs.getInt("price"));
				bean.setGram(rs.getInt("gram"));
				bean.setCategory(rs.getString("category"));
				bean.setPoint(rs.getInt("point"));
				bean.setInputdate(String.valueOf(rs.getDate("inputdate")));
				bean.setRemark(rs.getString("remark"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		System.out.println("bean 객체를 불러옵니다.." + bean);
		return bean;
	}

	public List<Product> PagingInfo(int beginRow, int endRow) {
		// 페이징 처리 결과를 리턴합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		List<Product> lists = new ArrayList<Product>() ;
		
		String sql = " select num, name, company, image, stock, price, category, contents, point, inputdate";
		sql += " from (";
		sql += " select rank() over(order by num desc) as ranking, num, name, company, image, stock, price, category, point, inputdate";
		sql += " from products";
		sql += " )";
		sql += " where ranking between ? and ?" ; 
		
		try {
			conn = this.getConnection() ; 
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setInt(1, beginRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery() ;
			
			while (rs.next()) {
				Product bean = new Product();
				
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setImage(rs.getString("image"));
				bean.setStock(rs.getInt("stock"));
				bean.setPrice(rs.getInt("price"));
				bean.setGram(rs.getInt("gram"));
				bean.setCategory(rs.getString("category"));
				bean.setPoint(rs.getInt("point"));
				bean.setInputdate(String.valueOf(rs.getDate("inputdate")));
				bean.setRemark(rs.getString("remark"));
				
				lists.add(bean) ;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return lists ;
	}

	public int GetTotalCount() {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		String sql = " select count(*) as cnt from products " ; 
		int cnt = -999 ; // 조회된 데이터 건수
		
		try {
			conn = this.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			
			rs = pstmt.executeQuery() ;
			
			if (rs.next()) {
				cnt = rs.getInt("cnt") ;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return cnt ;
	}
}