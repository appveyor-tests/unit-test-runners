using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace DotNetCore_MSTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod()
        {
            Assert.IsTrue(1 == 1);
        }

        [TestCategory("CategoryA")]
        [TestMethod]
        public void TestMethodA()
        {
            Assert.IsTrue(1 == 1);
        }

        [TestCategory("CategoryB")]
        [TestMethod]
        public void TestMethodB()
        {
            Assert.IsTrue(1 == 1);
        }
    }
}
