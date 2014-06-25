package com.accreativos.whatshappening.db;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.skife.jdbi.v2.StatementContext;
import org.skife.jdbi.v2.tweak.ResultSetMapper;

import com.accreativos.whatshappening.core.api.UploadJson;

public class UploadJsonMapper implements ResultSetMapper<UploadJson> {
	public UploadJson map(int index, ResultSet r, StatementContext ctx)
			throws SQLException {
		return new UploadJson(
				r.getString("fileName"), 
				r.getString("pathToFile"),
				r.getInt("repeated"));
	}
}
