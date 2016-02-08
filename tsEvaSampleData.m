function pointData = tsEvaSampleData(ms, varargin)
  pctsDesired=[90 95 99 99.9];

  args.meanEventsPerYear = 5;
  %args.pcts = [50 70 85:2:99 99.1:0.1:99.9 99.91:0.01:99.99];
  args.pcts = [50 70 85:2:97];
  args = tsEasyParseNamedArgs(varargin, args);
  meanEventsPerYear = args.meanEventsPerYear;
  pcts = args.pcts;

  [POTData,rLargestData]=tsGetPOTAndRlargest(ms, pcts, meanEventsPerYear, varargin{:});

  vals=prctile(ms(:,2), pctsDesired);
  percentiles.precentiles=pctsDesired;
  percentiles.values=vals;
  
  pointData.completeSeries = ms;
  pointData.POT = POTData;
  pointData.Rlargest = rLargestData;
  pointData.annualMax = rLargestData.peaks(:,1)';
  pointData.annualMaxTimeStamp = rLargestData.sdpeaks(:,1)';
  [pointData.monthlyMax, pointData.monthlyMaxTimeStamp, pointData.monthlyMaxIndexes] = tsEvaComputeMonthlyMaxima(ms);
  
  yrs = unique(year(ms(:,1)));
  yrs = yrs - min(yrs);
  pointData.years = (nanmin(yrs):1:nanmax(yrs))';
  
  pointData.Percentiles = percentiles;
end
