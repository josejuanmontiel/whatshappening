package com.accreativos.whatshappening.resources.view;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.accreativos.whatshappening.core.Upload;
import com.accreativos.whatshappening.db.UploadDAO;
import com.accreativos.whatshappening.view.UploadView;

@Path("/view")
@Produces(MediaType.TEXT_HTML)
public class UploadResourceView {
	
	private final UploadDAO dao;

	public UploadResourceView(UploadDAO dao) {
		this.dao = dao;
	}

	@GET
	@Path("/list")
	public UploadView getList() {
		List<Upload> files = dao.findLastTen();
		return new UploadView(files);
	}
}
