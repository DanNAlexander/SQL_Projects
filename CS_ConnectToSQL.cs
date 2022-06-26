
// Copy and paste, change DB info such as the ConVal as needed
// This is a closed connection for security


using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.ConVal("SampleDB")))
    {

    }