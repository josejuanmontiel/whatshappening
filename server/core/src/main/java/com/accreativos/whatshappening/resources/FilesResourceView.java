package com.accreativos.whatshappening.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.accreativos.whatshappening.core.File;
import com.accreativos.whatshappening.db.FileDAO;
import com.accreativos.whatshappening.view.FilesView;

@Path("/list")
@Produces(MediaType.TEXT_HTML)
public class FilesResourceView {
	
	private final FileDAO dao;

	public FilesResourceView(FileDAO dao) {
		this.dao = dao;
	}

	@GET
	public FilesView getList() {
		List<File> files = dao.findLastTen();
		return new FilesView(files);
	}
}
