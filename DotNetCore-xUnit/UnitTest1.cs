using System;
using Xunit;

namespace DotNetCore_xUnit
{
    public class UnitTest1
    {
        [Fact]
        public void Test()
        {
            Assert.Equal(1, 1);
        }

        [Trait("Category", "CategoryA")]
        [Fact]
        public void TestA()
        {
            Assert.Equal(1, 1);
        }

        [Trait("Category", "CategoryB")]
        [Fact]
        public void TestB()
        {
            Assert.Equal(1, 1);
        }
    }
}
