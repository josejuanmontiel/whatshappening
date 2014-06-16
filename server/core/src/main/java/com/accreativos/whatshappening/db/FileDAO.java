package com.accreativos.whatshappening.db;

import java.util.List;

import org.joda.time.DateTime;
import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import org.skife.jdbi.v2.sqlobject.SqlUpdate;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapper;

import com.accreativos.whatshappening.core.File;

@RegisterMapper(FileMapper.class)
public interface FileDAO {

	@SqlUpdate("CREATE TABLE file (fileName character varying, pathToFile character varying, ip character varying, time timestamp with time zone, repeated numeric)")
	void createFileTable();

	@SqlUpdate("INSERT INTO file(fileName, pathToFile, ip, time, repeated) VALUES (:fileName, :pathToFile, :ip, :time, :repeated)")
	void insert(@Bind("fileName") String fileName, @Bind("pathToFile") String pathToFile, @Bind("ip") String ip, @Bind("time") DateTime time, @Bind("repeated") int repeated);

	@SqlQuery("select fileName, pathToFile, ip, time, repeated from file")
	List<File> findByAll();
	
}
