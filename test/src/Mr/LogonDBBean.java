package Mr;

import java.sql.*;
import java.util.Vector;

public class LogonDBBean {
		//SingleTon Pattern 싱글싱글싱글톤
		private static LogonDBBean instance = new LogonDBBean();
		
		public static LogonDBBean getInstance() {
			return instance;
		}
		private LogonDBBean() {
		}
		private Connection getConnection() throws Exception {
			String jdbcDriver = "jdbc:apache:commons:dbcp:/pool";
			return DriverManager.getConnection(jdbcDriver);
		}
		// inputPro.jsp 에서 회원가입할떄 사용.
		public void insertMember(LogonDataBean member) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = getConnection();
				
				pstmt = conn.prepareStatement(
						"insert into MEMBERS values(?,?,?,?,?,?,?,?,?,?,?)");
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPasswd());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getJumin1());
				pstmt.setString(5, member.getJumin2());
				pstmt.setString(6, member.getEmail());
				pstmt.setString(7, member.getBlog());
				pstmt.setString(8, member.getSns());
				pstmt.setTimestamp(9, member.getReg_date());
				pstmt.setString(10, member.getZipcode());
				pstmt.setString(11, member.getAddress());
				pstmt.executeUpdate();
			} catch(Exception ex) {
				ex.printStackTrace();
			} finally {
				if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			}
		}
		//loginPro.jsp 에서 로그인 시도할떄 호출됨.
		public int userCheck(String id, String passwd) throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;    
	        ResultSet rs= null;
	        String dbpasswd="";
	        int x=-1;
	        
	        try {
	            conn = getConnection();
	           
	            pstmt = conn.prepareStatement(
	            "select passwd from MEMBERS where id = ?");
	            pstmt.setString(1, id);
	            rs= pstmt.executeQuery();

	            if(rs.next()){
					dbpasswd= rs.getString("passwd");
					if(dbpasswd.equals(passwd))
						x= 1; //인증 성공
					else
						x= 0; //비밀번호 틀림
				}else
						x= -1;//해당 아이디 없음

	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	        return x;
		}
		
		public int confirmId(String id) throws Exception {
			Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs= null;
		    String dbpasswd="";
		    int x=-1;
		       
		    try {
	            conn = getConnection();
	           
	            pstmt = conn.prepareStatement("select id from MEMBERS where id = ?");
	            pstmt.setString(1, id);
	            rs= pstmt.executeQuery();

				if(rs.next())
					x= 1; //해당 아이디 있음
				else
					x= -1;//해당 아이디 없음
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
		return x;
		}
//		
		// updateMember.jsp 에서 수정폼에 가입된 회원의 정보를 보여줄떄 사용
		public LogonDataBean getMember(String id) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt= null;
			ResultSet rs = null;
			LogonDataBean member = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(
						"select * from MEMBERS where id = ?");
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					member = new LogonDataBean();
					member.setId(rs.getString("id"));
					member.setPasswd(rs.getString("passwd"));
					member.setName(rs.getString("name"));
					member.setJumin1(rs.getString("jumin1"));
					member.setJumin2(rs.getString("jumin2"));
					member.setEmail(rs.getString("email"));
					member.setBlog(rs.getString("blog"));
					member.setSns(rs.getString("sns"));
					member.setReg_date(rs.getTimestamp("reg_date"));
					member.setZipcode(rs.getString("zipcode"));
					member.setAddress(rs.getString("address"));
				}
			} catch(Exception ex) {
				ex.printStackTrace();
			} finally {
				if(rs != null) try { rs.close(); } catch(SQLException ex) {}
				if(pstmt != null) try { pstmt.close();} catch(SQLException ex) {}
				if(conn != null) try { conn.close(); } catch(SQLException ex) {}
			
			}
			return member;
		}
		
		public void updateMember(LogonDataBean member) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = getConnection();
				
				pstmt = conn.prepareStatement(
						"update MEMBERS set passwd=?,name=?,email=?,blog=?, sns=? ,zipcode=?, address=?"
						+ "where id=?");
				pstmt.setString(1, member.getPasswd());
				pstmt.setString(2, member.getName());
				pstmt.setString(3, member.getEmail());
				pstmt.setString(4, member.getBlog());
				pstmt.setString(5, member.getSns());
				pstmt.setString(6, member.getZipcode());
				pstmt.setString(7, member.getAddress());
				pstmt.setString(8, member.getId());
				
				pstmt.executeUpdate();
			} catch(Exception ex) {
				ex.printStackTrace();
			} finally {
				if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			}
		}
		
		public int deleteMember(String id, String passwd) throws Exception{
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String dbpasswd = "";
			int x = -1;
			
			try {
				conn = getConnection();
				
				pstmt = conn.prepareStatement("select passwd from MEMBERS where id = ?");
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					dbpasswd = rs.getString("passwd");
					if(dbpasswd.equals(passwd)) {
						pstmt = conn.prepareStatement("delete from MEMBERS where id = ?");
						pstmt.setString(1, id);
						pstmt.executeUpdate();
						x = 1; // 회원탈퇴 성공
					} else 
						x = 0; // 비밀번호 틀림
					}
				} catch(Exception ex) {
					ex.printStackTrace();
				} finally {
					if (rs != null) try { rs.close(); } catch(SQLException ex) {}
					if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
					if (conn != null) try { conn.close(); } catch(SQLException ex) {}
				}
				return x;
			}
		public Vector zipcodeRead(String area3) {
		       Connection conn =null;
		       PreparedStatement pstmt = null;
		       ResultSet rs = null;
		       Vector vecList = new Vector();

		       try {
		           conn = getConnection();
		           String strQuery = "select * from zipcode where area3 like '"+area3+"%'";

		           pstmt = conn.prepareStatement(strQuery);
		           rs = pstmt.executeQuery();

		           while(rs.next()) {
		               ZipcodeBean tempZipcode = new ZipcodeBean();
		               tempZipcode.setZipcode(rs.getString("zipcode"));
		               tempZipcode.setArea1(rs.getString("area1"));
		               tempZipcode.setArea2(rs.getString("area2"));
		               tempZipcode.setArea3(rs.getString("area3"));
		               tempZipcode.setArea4(rs.getString("area4"));
		               vecList.addElement(tempZipcode);
		           }
		       }catch(Exception ex) {
		           ex.printStackTrace();
		       } finally {
		           if(rs!=null) try { rs.close();}catch(SQLException ex) {}
		           if(pstmt!=null) try { pstmt.close();}catch(SQLException ex) {}
		           if(conn!=null) try { conn.close();}catch(SQLException ex) {}
		       }
		       return vecList;
		   }
}
