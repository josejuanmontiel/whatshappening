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

	@SqlUpdate("CREATE TABLE file (id SERIAL, fileName character varying, pathToFile character varying, ip character varying, time timestamp with time zone, surfinterestpoint bytea, repeated numeric)")
	void createFileTable();

	@SqlUpdate("INSERT INTO file(fileName, pathToFile, ip, time, surfinterestpoint, repeated) VALUES (:fileName, :pathToFile, :ip, :time, :surfinterestpoint, :repeated)")
	void insert(@Bind("fileName") String fileName, @Bind("pathToFile") String pathToFile, @Bind("ip") String ip, @Bind("time") DateTime time, @Bind("surfinterestpoint") byte[] surfinterestpoint, @Bind("repeated") int repeated);

	@SqlQuery("select fileName, pathToFile, ip, time, surfinterestpoint, repeated from file")
	List<File> findAll();
	
	@SqlQuery("select fileName, pathToFile, ip, time, surfinterestpoint, repeated from file order by time desc OFFSET 0 LIMIT 10")
	List<File> findLastTen();

	@SqlQuery("select fileName, pathToFile, ip, time, surfinterestpoint, repeated from file order by time desc OFFSET 0 LIMIT 100")
	List<File> findLastHundred();

	@SqlUpdate("update file set repeated=(repeated+1) where pathToFile=:pathToFile")
	void increment(@Bind("pathToFile") String pathToFile);	
	
}
