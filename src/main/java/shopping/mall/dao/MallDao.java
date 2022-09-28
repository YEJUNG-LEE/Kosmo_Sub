package shopping.mall.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shopping.common.dao.SuperDao;
import shopping.mall.cart.ShoppingInfo;
import shopping.member.bean.Member;
import shopping.product.bean.Product;
import shopping.product.dao.ProductDao;

public class MallDao extends SuperDao{
	ShoppingInfo bean = null;

	public List<ShoppingInfo> SelectAll(String id) {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		String sql = " select * from shoppinginfos " ;
		sql += " where id = ? ";	   // 현재 로그인한 id와 맞는 장바구니만 select
		sql += " order by mid desc " ; // 최근 게시물이 위로 오도록 ...
		
		List<ShoppingInfo> lists = new ArrayList<ShoppingInfo>() ;
		
		try {			
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();				
			
			// while 구문을 사용하여 데이터 넣어 주기
			while(rs.next()) {
				ShoppingInfo bean = new ShoppingInfo(); 
				
				bean.setId(rs.getString("id"));
				bean.setMid(rs.getInt("mid"));
				bean.setPnum(rs.getInt("pnum"));
				bean.setPname(rs.getString("pname"));
				bean.setQty(rs.getInt("qty"));
				bean.setPrice(rs.getInt("price"));
				bean.setImage(rs.getString("image"));
				bean.setPoint(rs.getInt("point"));
				bean.setGram(rs.getInt("gram"));
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

	public void DeleteOrder(int pnum) {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		
		String sql = " delete from shoppinginfos " ;
		sql += " where mid = ? ";
		
		int cnt = -999;
		
		try {
			conn = super.getConnection() ;
			conn.setAutoCommit(false);
			
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setInt(1, pnum);
			
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
	}

	public void MinusOrder(int mid) {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null;
		String sql = null;
		int qty = 0;
		int cnt = -999;
		
		try {
			// 1. mid를 통해 qty의 데이터를 가져옵니다.  
			conn = super.getConnection() ;
			conn.setAutoCommit(false);
			sql = " select * from shoppinginfos where mid = ? ";
			pstmt = conn.prepareStatement(sql) ;
			pstmt.setInt(1, mid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				qty = rs.getInt("qty");
			}
			if(pstmt!=null) {pstmt.close();}
			if(rs!=null) {rs.close();}
			// minus이기 때문에, qty에 -1을 빼줍니다.
			if(qty >= 2) {
				qty--;
				sql = " update shoppinginfos set qty = ? " ;
				sql += " where mid = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, qty);
				pstmt.setInt(2, mid);
				cnt = pstmt.executeUpdate() ;
			}
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
	}

	public void PlusOrder(int mid) {
				// minusOrder와 거의 비슷 
				Connection conn = null ;
				PreparedStatement pstmt = null ;
				ResultSet rs = null;
				String sql = null;
				int qty = 0;
				int cnt = -999;
				
				try {
					conn = super.getConnection() ;
					conn.setAutoCommit(false);
					sql = " select * from shoppinginfos where mid = ? ";
					pstmt = conn.prepareStatement(sql) ;
					pstmt.setInt(1, mid);
					rs = pstmt.executeQuery();
					if (rs.next()) {
						qty = rs.getInt("qty");
					}
					if(pstmt!=null) {pstmt.close();}
					if(rs!=null) {rs.close();}
					// --만 ++로 변경하였습니다. 
					qty++;
					sql = " update shoppinginfos set qty = ? " ;
					sql += " where mid = ? ";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, qty);
					pstmt.setInt(2, mid);
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
	}

	public void InsertOrder(String id, Product bean, int qty) {
		Connection conn = null ;
		PreparedStatement pstmt = null ; 
		ResultSet rs = null;
		int pnum = bean.getNum();
		int cnt = -999 ; 
		String sql = "";

		ShoppingInfo shop = null;
		
		try {
			conn = super.getConnection() ;
			conn.setAutoCommit(false);  
			
			sql = " select * from shoppinginfos ";
			sql += " where id = ? and pnum = ? ";
			pstmt = conn.prepareStatement(sql) ; 
			pstmt.setString(1, id);
			pstmt.setInt(2, pnum);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				shop = new ShoppingInfo();
				shop.setQty(rs.getInt("qty"));
			}
			if(rs!=null) {rs.close();}
			if(pstmt!=null) {pstmt.close();}
			
			if(shop != null) {
				sql = " update shoppinginfos set qty = ? ";
				sql	+= "where pnum = ? ";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, (qty+shop.getQty()) );
				pstmt.setInt(2, bean.getNum());
				
				cnt = pstmt.executeUpdate();
				
				
			}else {
				sql = " insert into shoppinginfos(mid, id, pnum, pname, qty, price, image, point, gram) ";
				sql += " values(seqshop.nextval, ?, ?, ?, ?, ?, ?, ?, ?) " ;
				
				pstmt = conn.prepareStatement(sql) ; 
				
				
				pstmt.setString(1, id);
				pstmt.setInt(2, bean.getNum());
				pstmt.setString(3, bean.getName());
				pstmt.setInt(4, qty);
				pstmt.setInt(5, bean.getPrice());
				pstmt.setString(6, bean.getImage());
				pstmt.setInt(7, bean.getPoint());
				pstmt.setInt(8, bean.getGram());
				
				cnt = pstmt.executeUpdate() ;
				
			}
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
	}

	public void AddOrder(String id, Product bean) {
		Connection conn = null ;
		PreparedStatement pstmt = null ; 
		ResultSet rs = null;
		int cnt = -999 ; 
		ProductDao pdao = new ProductDao();
		ShoppingInfo shop = null;
		
		String sql = "";
		
		try {
			conn = super.getConnection() ;
			conn.setAutoCommit(false);  
			
			sql = " select * from shoppinginfos ";
			sql += " where id = ? and pnum = ? ";
			pstmt = conn.prepareStatement(sql) ; 
			pstmt.setString(1, id);
			pstmt.setInt(2, bean.getNum());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop = new ShoppingInfo();
				shop.setQty(rs.getInt("qty"));
			}
			if(rs!=null) {rs.close();}
			if(pstmt!=null) {pstmt.close();}
			
			if(shop != null) {
				sql = " update shoppinginfos set qty = ? ";
				sql	+= "where pnum = ? ";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, (1 + shop.getQty()) );
				pstmt.setInt(2, bean.getNum());
				
				cnt = pstmt.executeUpdate();
			}else {
				sql = " insert into shoppinginfos(mid, id, pnum, pname, qty, price, image, point, gram) ";
				sql += " values(seqshop.nextval, ?, ?, ?, ?, ?, ?, ?, ?) " ;
				
				pstmt = conn.prepareStatement(sql) ; 
				
				
				pstmt.setString(1, id);
				pstmt.setInt(2, bean.getNum());
				pstmt.setString(3, bean.getName());
				pstmt.setInt(4, 1);
				pstmt.setInt(5, bean.getPrice());
				pstmt.setString(6, bean.getImage());
				pstmt.setInt(7, bean.getPoint());
				pstmt.setInt(8, bean.getGram());
				
				cnt = pstmt.executeUpdate() ;
			}
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
	}
}
