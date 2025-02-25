import ballerina/log;
import ballerinax/github;

@display {
    label: "HelloAutomation"
}
public function main() returns error? {
    do {
        json jsonResult = check httpClient->get("/zvdz/mi-qsg/v1.0");
        log:printInfo(jsonResult.toString());
        github:MinimalRepository[] githubMinimalrepository = check githubClient->/orgs/["wso2"]/repos.get();
        log:printInfo(githubMinimalrepository.toString());

    } on fail error e {
        log:printError("Error: ", 'error = e);
        return e;
    }
}
