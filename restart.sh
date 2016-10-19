mvn -Pgsp generate-resources
mvn -DskipTests=true clean package
mvn dependency:copy-dependencies -DoutputDirectory=target/dependency
java -cp "target/batch-sample-0.1-dev.jar:target/dependency/*" nablarch.fw.launcher.Main -diConfig classpath:batch-boot.xml -requestPath SampleBatch/SampleBatch -userId batch_user
