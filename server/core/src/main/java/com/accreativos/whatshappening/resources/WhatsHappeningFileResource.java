package com.accreativos.whatshappening.resources;

import static javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA;
import static javax.ws.rs.core.MediaType.TEXT_PLAIN;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import org.joda.time.DateTime;

import com.accreativos.whatshappening.db.FileDAO;
import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataParam;

@Path("/image")
@Produces(MediaType.APPLICATION_JSON)
public class WhatsHappeningFileResource {

	public static final String UPLOAD_DIR = "/home/whatshappening/uploads";

	private final FileDAO dao;
	
	public WhatsHappeningFileResource(FileDAO dao) {
		this.dao = dao;
	}

	@POST
	@Path("/attached")
	@Produces(TEXT_PLAIN)
	@Consumes(MULTIPART_FORM_DATA)
	public String uploadFile(@FormDataParam("image") final InputStream stream,
			@FormDataParam("image") FormDataContentDisposition fileDetail,
			@Context HttpServletRequest request)
			throws Exception {

		String tempname = UUID.randomUUID().toString();
		final String outputPath = UPLOAD_DIR + File.separator + tempname;
		
		String ip = request.getRemoteAddr();
		String fileName = fileDetail.getFileName();
		
		dao.insert(fileName, outputPath, ip, DateTime.now(), 1);

		copyCompletely(stream, new FileOutputStream(outputPath));

		return tempname;
	}

	public static void copyCompletely(InputStream input, OutputStream output)
			throws IOException {
		 ReadableByteChannel source = Channels.newChannel(input);
	        WritableByteChannel target = Channels.newChannel(output);

	        ByteBuffer buffer = ByteBuffer.allocate(16 * 1024);
	        while (source.read(buffer) != -1) {
	            buffer.flip(); // Prepare the buffer to be drained
	            while (buffer.hasRemaining()) {
	                target.write(buffer);
	            }
	            buffer.clear(); // Empty buffer to get ready for filling
	        }

	        source.close();
	        target.close();
	}

}
