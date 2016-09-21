using Xunit;

namespace XUnitTestProject
{
    public class XUnitTestProject
    {
        [Fact]
        public void XUnitTestMethod1()
        {
            Assert.Equal(1, 1);
        }

        [Fact]
        public void XUunitTestMethod2()
        {
            Assert.NotEqual(1, 2);
        }

    }
}
