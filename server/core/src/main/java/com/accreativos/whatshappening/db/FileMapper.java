package com.accreativos.whatshappening.db;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.joda.time.DateTime;
import org.skife.jdbi.v2.StatementContext;
import org.skife.jdbi.v2.tweak.ResultSetMapper;

import com.accreativos.whatshappening.core.File;

public class FileMapper implements ResultSetMapper<File> {
	public File map(int index, ResultSet r, StatementContext ctx)
			throws SQLException {
		return new File(
				r.getString("fileName"), 
				r.getString("pathToFile"),
				r.getString("ip"), 
				new DateTime(r.getTime("time").getTime()),
				r.getBytes("surfinterestpoint"),
				r.getInt("repeated"));
	}
}
