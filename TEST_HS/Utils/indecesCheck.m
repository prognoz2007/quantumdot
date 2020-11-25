function  varargout = indecesCheck(Array,varargin)
%INECESCHECK Summary of this function goes here
%   Detailed explanation goes here
    if nargin==0||nargin==1
        error('northing 2 check')
    end

    Dimensions  = size(Array);

    numberOfDimensions = length(Dimensions);

    if numberOfDimensions<length(varargin)
        error('array dimension are not equal to smthng')
    end

    for i=1:length(varargin)
 
         if max(varargin{i})>Dimensions(i)
             maxDim = Dimensions(i);
         else
             maxDim  = max(varargin{i});
         end

         if min(varargin{i})<1
             minDim = 1;
         else
             minDim = min(varargin{i});
         end
         varargout{i} = minDim:maxDim;
    end

end

