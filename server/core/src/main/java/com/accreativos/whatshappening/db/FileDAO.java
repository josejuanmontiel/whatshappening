package com.accreativos.whatshappening.db;

import org.joda.time.DateTime;
import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import org.skife.jdbi.v2.sqlobject.SqlUpdate;

public interface FileDAO {

	@SqlUpdate("CREATE TABLE file (fileName character varying, pathToFile character varying, ip character varying, time timestamp with time zone, repeated numeric)")
	void createFileTable();

	@SqlUpdate("INSERT INTO File(fileName, pathToFile, ip, time, repeated) VALUES (:fileName, :pathToFile, :ip, :time, :repeated)")
	void insert(@Bind("fileName") String fileName, @Bind("pathToFile") String pathToFile, @Bind("ip") String ip, @Bind("time") DateTime time, @Bind("repeated") int repeated);

}
