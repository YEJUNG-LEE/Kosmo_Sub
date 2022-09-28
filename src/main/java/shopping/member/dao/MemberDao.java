package shopping.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shopping.member.bean.Member;

/*
DAO(Data Access Object)
데이터 베이스와 연동하여 sql 작업을 수행해주는 대행자 클래스
통상적으로 단위 업무는 메소드 단위로 처리합니다.
*/
public class MemberDao {
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url = "jdbc:oracle:thin:@localhost:1521:xe" ;
	String id = "subproject" ;
	String password = "oracle" ;
	
	public MemberDao() {
		try {
			Class.forName(driver) ;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private Connection getConnection() {
		Connection conn = null ;
		try {
			conn = DriverManager.getConnection(url, id, password) ;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn ;
	}
	
	public List<Member> SelectAll() {
		// 회원 전체 목록을 반환해 줍니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		String sql = " select * from customers " ;
		
		List<Member> lists = new ArrayList<Member>() ;
		System.out.println("1");
		try {
			System.out.println("2");
			Class.forName(driver) ;
			conn = DriverManager.getConnection(url, this.id, password) ;
			pstmt = conn.prepareStatement(sql) ;
			System.out.println("3");
			rs = pstmt.executeQuery();				
			System.out.println("4");
			// while 구문을 사용하여 데이터 넣어 주기
			while(rs.next()) {
				System.out.println("5");
				Member bean = new Member(); // 100번지	
				System.out.println("6");
				bean.setcId(rs.getString("cId"));
				bean.setcPassword(rs.getString("cPassword"));
				bean.setcName(rs.getString("cName"));
				bean.setcGender(rs.getString("cGender"));
				System.out.println("7");
				// 날짜 형식은 다음과 같이 처리하도록 합니다.
				bean.setcBirth(String.valueOf(rs.getDate("cBirth")));
				System.out.println("8");
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
	
	
	public int UpdateData(Member bean) {
		// 특정 회원에 대한 정보를 수정합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		
		String sql = " update customers set " ;
		sql += " cPassword=?, cName=?, cGender=?, cBirth=?" ;
		sql += " where cId = ? " ;
		
		int cnt = -999 ; 
		
		try {
			Class.forName(driver) ;
			conn = DriverManager.getConnection(url, this.id, password) ;
			conn.setAutoCommit(false);
			
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, bean.getcPassword()) ;
			pstmt.setString(2, bean.getcName()) ;
			pstmt.setString(3, bean.getcGender()) ;
			pstmt.setString(4, bean.getcBirth()) ;
			pstmt.setString(5, bean.getcId()) ; 			
			
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
	
	public int InsertData(Member bean) {
		// 회원 1명을 추가합니다.
		System.out.println(bean) ;		
		
		Connection conn = null ;
		PreparedStatement pstmt = null ; 
		int cnt = -999 ; 

		// Statememt
		String sql = " insert into customers (cid, cpassword, cname, cgender, cbirth) " ;
		sql += " values(?, ?, ?, ?, ?)  " ; 
		
		try {
			Class.forName(driver) ;

			conn = DriverManager.getConnection(url, this.id, password) ;
			conn.setAutoCommit(false); // 트랜잭션 기능 잠시 off			

			pstmt = conn.prepareStatement(sql) ; 
			
			// id, password, name, gender, birth 
			pstmt.setString(1, bean.getcId());
			pstmt.setString(2, bean.getcPassword());
			pstmt.setString(3, bean.getcName());
			pstmt.setString(4, bean.getcGender());
			pstmt.setString(5, bean.getcBirth());
			
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

	public int DeleteData(String id) {
		/*
		 	회원 탈퇴시 처리해야 할 일
		 	1. 게시물에 remark 컬럼 업데이트 
		 	2. 주문 테이블에 remark 컬럼 업데이트
		 	3. 회원 테이블에 해당 행을 삭제  
		 */
		
		// 기본 키를 사용하여 회원을 목록에서 삭제합니다.
		Connection conn = null ;		
		PreparedStatement pstmt = null ;
		
		int cnt = -999 ; 
		
		try {
			Class.forName(driver) ;
			conn = DriverManager.getConnection(url, this.id, password) ;
			conn.setAutoCommit(false);
			
			String sql = " delete from customers where cId = ?" ;
			
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, id);
			
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


	public Member SelectOne(String id) {
		// 1건의 데이터를 조회합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		String sql = " select * from customers where cId = ? " ; 
		
		Member bean = null ; 
		
		try {
			conn = this.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, id); 
			
			rs = pstmt.executeQuery() ;
			
			if (rs.next()) {
				bean = new Member();
						
				bean.setcId(rs.getString("cId"));
				bean.setcPassword(rs.getString("cPassword"));
				bean.setcName(rs.getString("cName"));
				bean.setcGender(rs.getString("cGender"));
				
				// 날짜 형식은 다음과 같이 처리하도록 합니다.
				java.sql.Date date = rs.getDate("cBirth") ;
				if(date == null) {
					bean.setcBirth("");
				}else {
					bean.setcBirth(String.valueOf(date));	
				}
				
				
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
		
		return bean;
	}

	public Member LoginCheck(String id, String password) {
		// 아이디와 비밀 번호를 이용하여 로그인 테스트를 수행합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		String sql = " select * from customers " ;
		sql += " where cId = ? and cPassword = ? " ;
		
		Member bean = null ;

		try {
			conn = this.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			
			rs = pstmt.executeQuery() ;
			
			if (rs.next()) {
				bean = new Member();
						
				bean.setcId(rs.getString("cId"));
				bean.setcPassword(rs.getString("cPassword"));
				bean.setcName(rs.getString("cName"));
				bean.setcGender(rs.getString("cGender"));
				
				// 날짜 형식은 다음과 같이 처리하도록 합니다.
				System.out.println("birth1");
				java.sql.Date date = rs.getDate("cBirth") ;

				System.out.println("birth2");
				if(date == null) {
					System.out.println("birth3");
					bean.setcBirth("");
					System.out.println("birth4");
				}else {
					System.out.println("birth5");
					bean.setcBirth(String.valueOf(date));	
					System.out.println("birth6");
				}
				System.out.println("birth7");
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null){rs.close();}
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return bean;
	}

	public List<Member> PagingInfo(int beginRow, int endRow) {
		// 페이징 처리 결과를 리턴합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		List<Member> lists = new ArrayList<Member>() ;
		
		String sql = " select id, name, password, gender, birth, marriage, salary, address, manager";
		sql += " from (";
		sql += " select rank() over(order by name asc) as ranking,id, name, password, gender, birth, marriage, salary, address, manager";
		sql += " from members";
		sql += " )";
		sql += " where ranking between ? and ?" ;
		
		try {
			conn = this.getConnection() ; 
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setInt(1, beginRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery() ;
			
			while (rs.next()) {
				Member bean = new Member();
								
				bean.setcId(rs.getString("id"));
				bean.setcPassword(rs.getString("password"));
				bean.setcName(rs.getString("name"));
				bean.setcGender(rs.getString("gender"));
				
				bean.setcBirth(String.valueOf(rs.getDate("birth")));
				
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
		String sql = " select count(*) as cnt from members " ; 
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

















