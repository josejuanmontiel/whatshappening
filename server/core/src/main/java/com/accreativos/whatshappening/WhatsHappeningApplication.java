package com.accreativos.whatshappening;

import io.dropwizard.Application;
import io.dropwizard.jdbi.DBIFactory;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import io.dropwizard.views.ViewBundle;

import org.skife.jdbi.v2.DBI;

import com.accreativos.whatshappening.db.FileDAO;
import com.accreativos.whatshappening.health.TemplateHealthCheck;
import com.accreativos.whatshappening.resources.FilesResourceView;
import com.accreativos.whatshappening.resources.WhatsHappeningFileResource;
import com.accreativos.whatshappening.resources.WhatsHappeningResource;

public class WhatsHappeningApplication extends Application<WhatsHappeningConfiguration> {

    public static void main(String[] args) throws Exception {
        new WhatsHappeningApplication().run(args);
    }

    @Override
    public String getName() {
        return "WhatsHappening";
    }

    @Override
    public void initialize(Bootstrap<WhatsHappeningConfiguration> bootstrap) {
    	 bootstrap.addBundle(new ViewBundle());
    }

    @Override
    public void run(WhatsHappeningConfiguration configuration, Environment environment) {
	    final DBIFactory factory = new DBIFactory();
	    FileDAO dao = null;
		try {
			DBI jdbi = factory.build(environment, configuration.getDataSourceFactory(), "postgresql");
		    dao = jdbi.onDemand(FileDAO.class);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    
	    final WhatsHappeningFileResource resourceFile = new WhatsHappeningFileResource(dao);
	    environment.jersey().register(resourceFile);

		final FilesResourceView resourceView = new FilesResourceView(dao);
	    environment.jersey().register(resourceView);

	    final TemplateHealthCheck healthCheck = new TemplateHealthCheck(configuration.getTemplate());
	    environment.healthChecks().register("template", healthCheck);

    
    }

}
