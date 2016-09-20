using NUnit.Framework;

namespace NUnit3TestProject
{
    [TestFixture]
    public class NUnit3Tests
    {
        [Test]
        public void Nunit3TestMethod1()
        {
            Assert.AreEqual(1, 1);
        }

        [Test]
        public void Nunit3TestMethod2()
        {
            Assert.AreEqual(1, 2);
        }
    }
}