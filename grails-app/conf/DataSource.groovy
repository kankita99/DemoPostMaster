dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'org.hibernate.cache.SingletonEhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
    jdbc.use_get_generated_keys = true
}
oracleProperties {
    // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
    jmxEnabled = true
    initialSize = 5
    maxActive = 50
    minIdle = 5
    maxIdle = 25
    maxWait = 10000
    maxAge = 10 * 60000
    timeBetweenEvictionRunsMillis = 5000
    minEvictableIdleTimeMillis = 60000
    validationQuery = "SELECT 1 FROM DUAL"
    validationQueryTimeout = 3
    validationInterval = 15000
    testOnBorrow = true
    testWhileIdle = true
    testOnReturn = false
    ignoreExceptionOnPreLoad = true
    abandonWhenPercentageFull = 75 // settings are active only when pool is 75% full
    removeAbandonedTimeout = 120
    removeAbandoned = true
    // use JMX console to change this setting at runtime
    logAbandoned = true // causes stacktrace recording overhead, use only for debugging
    // http://tomcat.apache.org/tomcat-7.0-doc/jdbc-pool.html#JDBC_interceptors
    jdbcInterceptors = "ConnectionState;StatementCache(max=200)"
    defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
    dbProperties {
        connectTimeout = 15000
        socketTimeout = 120000
        maintainTimeStats = false
        enableQueryTimeouts = false
    }
}
// environment specific settings
environments {
    development {
        dataSource {
            driverClassName = 'oracle.jdbc.OracleDriver'
            dialect = "org.hibernate.dialect.Oracle10gDialect"
            url = "jdbc:oracle:thin:@127.0.0.1:1521/orcl"
            username = 'pvr'
            password = 'pvr'
            dbCreate = 'create-drop'
            //passwordEncryptionCodec="com.rxlogix.RxCodec"
            properties = oracleProperties
        }
    }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            properties {
               // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 5000
               minEvictableIdleTimeMillis = 60000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = false
               jdbcInterceptors = "ConnectionState"
               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }

