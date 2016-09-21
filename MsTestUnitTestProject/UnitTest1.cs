using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace MsTestUnitTestProject
{
    [TestClass]
    public class MsTestUnitTests
    {
        [TestMethod]
        public void MsTestMethod1()
        {
            Assert.AreEqual(1, 1);
        }

        [TestMethod]
        public void MsTestMethod2()
        {
            Assert.AreNotEqual(1, 2);
        }
    }
}
