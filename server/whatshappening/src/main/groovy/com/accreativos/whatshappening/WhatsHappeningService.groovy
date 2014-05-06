package com.accreativos.whatshappening

import com.yammer.dropwizard.Service
import com.yammer.dropwizard.assets.AssetsBundle
import com.yammer.dropwizard.config.Bootstrap
import com.yammer.dropwizard.config.Environment
import com.yammer.dropwizard.db.DatabaseConfiguration
import com.yammer.dropwizard.hibernate.HibernateBundle
import com.yammer.dropwizard.migrations.MigrationsBundle

class WhatsHappeningService extends Service<WhatsHappeningConfiguration> {
    public static void main(String[] args) throws Exception {
        new WhatsHappeningService().run(args)
    }

    HibernateBundle<WhatsHappeningConfiguration> hibernateBundle =
        new HibernateBundle<WhatsHappeningConfiguration>([]) {
            @Override
            public DatabaseConfiguration getDatabaseConfiguration(WhatsHappeningConfiguration configuration) {
                return configuration.databaseConfiguration
            }
        }

    MigrationsBundle<WhatsHappeningConfiguration> migrationsBundle =
        new MigrationsBundle<WhatsHappeningConfiguration>() {
            @Override
            public DatabaseConfiguration getDatabaseConfiguration(WhatsHappeningConfiguration configuration) {
                return configuration.databaseConfiguration
            }
        }

    AssetsBundle assetsBundle = new AssetsBundle()

    @Override
    public void initialize(Bootstrap<WhatsHappeningConfiguration> bootstrap) {
        bootstrap.with {
            name = 'WhatsHappening'
            addBundle migrationsBundle
            addBundle hibernateBundle
        }
    }

    @Override
    public void run(WhatsHappeningConfiguration configuration,
                    Environment environment) throws ClassNotFoundException {
    }
}
