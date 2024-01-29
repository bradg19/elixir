component singleton{

    function init(){
        return this;
    }

    function getContactData(){
        var queryObj = new Query(
            name="contact",
            datasource="stout_db",
            sql = "SELECT *
                FROM stout_leads"
        );
        resultset=queryObj.execute().getResult();
        return resultset;
    }

}