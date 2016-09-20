using NUnit.Framework;

namespace UnitTestProjects
{
    [TestFixture]
    public class NUnitTests
    {
        [Test]
        public void NunitTestMethod1()
        {
            Assert.AreEqual(1, 1);
        }

        [Test]
        public void NunitTestMethod2()
        {
            Assert.AreEqual(1, 2);
        }
    }
}