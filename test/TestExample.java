package dao;

import static org.junit.Assert.*;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

public class TestExample {

	@Test
	public void test() {
		/*UserBean user=new UserBean();
		user.setUserName("root");
		user.setPassword("root");*/
		/*String uname=user.getUsername();*/
		String pasword="root";
		assertEquals(pasword,"root");
		
	}

}
