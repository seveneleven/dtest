unit {name}TestSuite;

interface

uses TestFramework{usesFiles};

type
  T{name}TestSuite = class(TTestSuite)
  public
    class function suite(): ITestSuite;
  end;

implementation

{ T{name}TestSuite }

class function T{name}TestSuite.suite: ITestSuite;
begin
  Result:= TTestSuite.Create('{name} Test Suite');{testSuites}
end;

initialization
  RegisterTest(T{name}TestSuite.suite);


end.