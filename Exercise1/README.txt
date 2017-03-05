SOEN487 Winter 2017 Assignment 2 Excercise 1
Submitted by Samantha Graham #21120689

To run:

1. You need to run both WebServicesJSTest and CustomerDB on the Glassfish 4.1 server (NOT 4.1.1). There is a known bug with Glassfish 4.1.1 that throws a NoClassDefFoundError when trying to produce JSON (see http://stackoverflow.com/questions/33722764/glassfish-error-when-producing-json and https://java.net/jira/browse/JERSEY-2888).
2. Open WebServicesJSTest and CustomerDB in Netbeans.
3. Right-click + Deploy CustomerDB.
4. Right-click + run WebServicesJSTest. The customers and discount codes will be displayed in testStubs.html
5. To filter the customer results, either enter a customer ID, state, or discount code and click Filter. The filtered result table will display below the form.
6. Before performing each filter query you'll need to remove the '#filter' from the URL.