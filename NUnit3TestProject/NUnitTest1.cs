using System;
using MySql.Data.MySqlClient;
using NUnit.Framework;

namespace MySqlTest
{
    [TestFixture]
    public class DatabaseTest
    {
        private MySqlConnection connection;

        [SetUp]
        public void Setup()
        {
            string connectionString = "server=localhost;user=root;port=3306;password=Password12!;SslMode=Required";
            connection = new MySqlConnection(connectionString);
            connection.Open();
        }

        [Test]
        public void TestConnection()
        {
            Assert.That(connection.State, Is.EqualTo(System.Data.ConnectionState.Open));
        }

        [TearDown]
        public void Teardown()
        {
            connection.Close();
        }
    }
}
