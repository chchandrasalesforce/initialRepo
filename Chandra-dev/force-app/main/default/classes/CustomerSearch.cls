public class CustomerSearch { 
    public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://my-json-server.typicode.com/chandra381/Customer/customers');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            List<Object> customers = (List<Object>) results.get('Id');
            System.debug('Received the following Contacts:');
            for (Object Customer: customers) {
                System.debug(customer);
            }
        }
        return response;
    }        

}