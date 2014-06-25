package com.accreativos.whatshappening;

import io.dropwizard.Application;
import io.dropwizard.jdbi.DBIFactory;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import io.dropwizard.views.ViewBundle;

import org.skife.jdbi.v2.DBI;

import com.accreativos.whatshappening.db.UploadDAO;
import com.accreativos.whatshappening.health.TemplateHealthCheck;
import com.accreativos.whatshappening.resources.api.WhatsHappeningUploadResource;
import com.accreativos.whatshappening.resources.view.UploadResourceView;
import com.bazaarvoice.dropwizard.assets.ConfiguredAssetsBundle;

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
    	bootstrap.addBundle(new ConfiguredAssetsBundle("/assets/", "/images/"));
    	bootstrap.addBundle(new ViewBundle());
    }

    @Override
    public void run(WhatsHappeningConfiguration configuration, Environment environment) {
	    final DBIFactory factory = new DBIFactory();
	    UploadDAO dao = null;
		try {
			DBI jdbi = factory.build(environment, configuration.getDataSourceFactory(), "postgresql");
		    dao = jdbi.onDemand(UploadDAO.class);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    
	    final WhatsHappeningUploadResource resourceFile = new WhatsHappeningUploadResource(dao);
	    environment.jersey().register(resourceFile);

		final UploadResourceView resourceView = new UploadResourceView(dao);
	    environment.jersey().register(resourceView);

	    final TemplateHealthCheck healthCheck = new TemplateHealthCheck(configuration.getTemplate());
	    environment.healthChecks().register("template", healthCheck);

    
    }

}
