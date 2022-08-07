
run:
	java -jar target/rmlmapper-*-all.jar -m roman-emperors.rml -o ./roman-emperors.ttl
	cat roman-emperors.ttl

build:
	mvn clean install -DskipTests

buildWithoutOracle:
	mvn test -Dtest=!Mapper_OracleDB_Test


runB:
	# ttl, turtle, ntriples, nquads, rdfxml, rdfjson, jsonld
	java -jar ./rmlmapper-*-all.jar  -m branches.rml -o branches.ttl -f ttl
	cat branches.ttl

runC:
	java -jar ./rmlmapper-*-all.jar  -m characters.rml -o characters.ttl
	cat characters.ttl
