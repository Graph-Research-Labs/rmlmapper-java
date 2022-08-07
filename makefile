
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

run:
	java -jar target/rmlmapper-*-all.jar  -m branches.rml -o ./branches.ttl -f ttl branches.json -s ttl

s:
	# java -jar target/rmlmapper-*-all.jar -m "mapping.rml.ttl" "<LogicalSource1> rml:source \"https://biblio.ugent.be/publication/{publication_id}.json\"; rml:referenceFormulation ql:CSV ."
	java -jar target/rmlmapper-*-all.jar -m "mapping.rml.ttl" "<LogicalSource1> rml:source \"https://biblio.ugent.be/publication/${publication_id}.json\"; rml:referenceFormulation ql:CSV ."

t:
	java -jar target/rmlmapper-*-all.jar -m ./mapping2.rml.ttl -o ./out.ttl -p publication_id=8551871

u:
	java -jar target/rmlmapper-*-all.jar -m src/test/resources/test-cases/RMLTC0000-JSON/mapping.ttl -o ./out.ttl 

v:
	java -jar target/rmlmapper-*-all.jar -m src/test/resources/test-cases/RMLTC0001a-JSON/mapping.ttl -o ./out.ttl 

w:
	java -jar target/rmlmapper-*-all.jar -m src/test/resources/test-cases/RMLTC0007c-JSON/mapping.ttl -o ./out.ttl

x:
	java -jar target/rmlmapper-*-all.jar -m src/test/resources/test-cases/RMLTC0008a-JSON/mapping.ttl  -o ./out.ttl -s turtle
