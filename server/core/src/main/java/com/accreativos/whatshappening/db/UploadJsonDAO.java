package com.accreativos.whatshappening.db;

import java.util.List;

import org.skife.jdbi.v2.sqlobject.SqlQuery;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapper;

import com.accreativos.whatshappening.core.api.UploadJson;

@RegisterMapper(UploadJsonMapper.class)
public interface UploadJsonDAO {

	@SqlQuery("select fileName, pathToFile, repeated from file")
	List<UploadJson> findAll();
	
	@SqlQuery("select fileName, pathToFile, repeated from file order by time desc OFFSET 0 LIMIT 10")
	List<UploadJson> findLastTen();

	@SqlQuery("select fileName, pathToFile, repeated from file order by time desc OFFSET 0 LIMIT 100")
	List<UploadJson> findLastHundred();
}
