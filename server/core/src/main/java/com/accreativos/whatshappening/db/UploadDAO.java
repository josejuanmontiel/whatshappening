package com.accreativos.whatshappening.db;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Array;
import java.util.List;

import org.joda.time.DateTime;
import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import org.skife.jdbi.v2.sqlobject.SqlUpdate;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapper;

import com.accreativos.whatshappening.core.Upload;
import com.accreativos.whatshappening.core.api.UploadJson;

@RegisterMapper(UploadMapper.class)
public interface UploadDAO {

	
	// CREATE TABLE file (id SERIAL, fileName character varying, pathToFile character varying, ip character varying, time timestamp with time zone, surfinterestpoint bytea, repeated numeric, idsCompared bigint[], verified boolean)
	
	@SqlUpdate("CREATE TABLE file " +
				"(id SERIAL, " +
				"fileName character varying, " +
				"pathToFile character varying, " +
				"ip character varying, " +
				"time timestamp with time zone, " +
				"surfinterestpoint bytea, " +
				"repeated numeric," +
				"idsCompared bigint[]," +
				"verified boolean)")
	void createFileTable();

	@SqlUpdate("INSERT INTO file(fileName, pathToFile, ip, time, surfinterestpoint, repeated, verified) VALUES (:fileName, :pathToFile, :ip, :time, :surfinterestpoint, :repeated, false)")
	void insert(@Bind("fileName") String fileName, @Bind("pathToFile") String pathToFile, @Bind("ip") String ip, @Bind("time") DateTime time, @Bind("surfinterestpoint") byte[] surfinterestpoint, @Bind("repeated") int repeated);

	@SqlQuery("select id, fileName, pathToFile, ip, time, surfinterestpoint, repeated, verified from file")
	List<Upload> findAll();
	
	@SqlQuery("select id, fileName, pathToFile, ip, time, surfinterestpoint, repeated, verified from file order by time desc OFFSET 0 LIMIT 10")
	List<Upload> findLastTen();

	@SqlQuery("select id, fileName, pathToFile, ip, time, surfinterestpoint, repeated, verified from file order by time desc OFFSET 0 LIMIT 100")
	List<Upload> findLastHundred();

	@SqlUpdate("update file set repeated=(repeated+1) where pathToFile=:pathToFile")
	void increment(@Bind("pathToFile") String pathToFile);	

	@SqlUpdate("update file set idsCompared=:idsCompared where id=:id")
	void setListIdsCompared(@Bind("idsCompared") Array idsCompared, @Bind("id") BigInteger id);		
}
