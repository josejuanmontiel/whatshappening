package com.accreativos.whatshappening.resources;

import static javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA;
import static javax.ws.rs.core.MediaType.TEXT_PLAIN;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.util.UUID;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.common.io.Files;
import com.google.common.io.InputSupplier;
import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataParam;

@Path("/image")
@Produces(MediaType.APPLICATION_JSON)
public class WhatsHappeningFileResource {

	public static final String UPLOAD_DIR = "/tmp";

	public WhatsHappeningFileResource() {
	}

	@POST
	@Path("/attached")
	@Produces(TEXT_PLAIN)
	@Consumes(MULTIPART_FORM_DATA)
	public String uploadFile(@FormDataParam("image") final InputStream stream,
			@FormDataParam("image") FormDataContentDisposition fileDetail)
			throws Exception {

		String tempname = UUID.randomUUID().toString();
		final String outputPath = UPLOAD_DIR + File.separator + tempname;

		copyCompletely(stream, new FileOutputStream(outputPath));

		return tempname;
	}

	public static void copyCompletely(InputStream input, OutputStream output)
			throws IOException {
		// if both are file streams, use channel IO
		if ((output instanceof FileOutputStream)
				&& (input instanceof FileInputStream)) {
			try {
				FileChannel target = ((FileOutputStream) output).getChannel();
				FileChannel source = ((FileInputStream) input).getChannel();

				source.transferTo(0, Integer.MAX_VALUE, target);

				source.close();
				target.close();

				return;
			} catch (Exception e) { /* failover to byte stream version */
			}
		}
	}

}
