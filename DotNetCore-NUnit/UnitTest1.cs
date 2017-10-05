using System;
using NUnit.Framework;

namespace NunitDotNetCore
{
    [TestFixture]
    public class UnitTest1
    {
        [Test]
        public void NunitTest1()
        {
            Assert.IsTrue(1 == 1);
        }

        [Test, Category("CategoryA")]
        public void NunitTestA()
        {
            Assert.IsTrue(1 == 1);
        }

        [Test]
        [Category("CategoryB")]
        public void NunitTestB()
        {
            Assert.IsTrue(1 == 1);
        }
    }
}
