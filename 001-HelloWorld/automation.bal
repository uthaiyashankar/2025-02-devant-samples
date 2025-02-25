import ballerina/http;
import ballerina/log;

@display {
    label: "HelloAutomation"
}
public function main() returns error? {
    do {
        json jsonResult = check httpClient->get("/zvdz/mi-qsg/v1.0");
        log:printInfo(jsonResult.toString());

    } on fail error e {
        log:printError("Error: ", 'error = e);
        return e;
    }
}
