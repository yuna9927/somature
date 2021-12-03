package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import model.Message;

public class MessageDAO {
	
	private static final Logger log = LoggerFactory.getLogger(MessageDAO.class);
	private JDBCUtil jdbcUtil = null;
		
	public MessageDAO() {			
		jdbcUtil = new JDBCUtil();
	}
	
	// 메세지 전송 시
	public int create(Message message) throws SQLException {

		String sql = "INSERT INTO MESSAGE VALUES (id_seq.nextva, ?, DEFAULT, ?)";
		Object[] param = new Object[] { message.getContent(),message.getRoomId()};		
		
		System.out.println("sql: " + sql);
		System.out.println("param: " + param);
		
		for (Object p : param) {
			System.out.println(p);
		}

		jdbcUtil.setSqlAndParameters(sql, param);	
		try {
			int result = jdbcUtil.executeUpdate();
			return result;
		} catch (Exception ex) {
			jdbcUtil.rollback();
			ex.printStackTrace();
		} finally {	 
			jdbcUtil.commit();
			jdbcUtil.close();
		}
		return 0;			
	}
	
	// 메세지 리스트 반환
	public List<Message> findMessageList() throws SQLException {
        String sql = "SELECT messengeId, messageContent, createdTime, roomId " 
        		   + "FROM MESSAGE "
        		   + "ORDER BY createdTime";
		jdbcUtil.setSqlAndParameters(sql, null);	
					
		try {
			ResultSet rs = jdbcUtil.executeQuery();					
			List<Message> messageList = new ArrayList<Message>();	
			while (rs.next()) {
				Message message = new Message(
						rs.getInt("messengeId"),
						rs.getString("content"),
						rs.getTimestamp("createdTime"),
						rs.getInt("messengerId"));
//					System.out.println("cTime: " + message.getcTime());
				messageList.add(message);	
			}
			return messageList;					
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();	
		}
		return null;
	}
		

}
