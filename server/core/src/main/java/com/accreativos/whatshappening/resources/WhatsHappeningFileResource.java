package com.accreativos.whatshappening.resources;

import com.accreativos.whatshappening.core.Saying;
import com.google.common.base.Optional;
import com.codahale.metrics.annotation.Timed;

import com.google.common.io.Files;
import com.google.common.io.InputSupplier;
import com.sun.jersey.multipart.FormDataParam;
import com.sun.jersey.core.header.FormDataContentDisposition;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import static javax.ws.rs.core.MediaType.*;

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
    public String uploadFile(@FormDataParam("image") final InputStream stream,  @FormDataParam("image") FormDataContentDisposition fileDetail) throws Exception {

        String tempname = UUID.randomUUID().toString();
        final String outputPath = UPLOAD_DIR + File.separator + tempname;
        Files.copy(new InputSupplier<InputStream>() {
            @Override
            public InputStream getInput() throws IOException {
                return stream;
            }
        }, new File(outputPath));

        return tempname;
    }

}
