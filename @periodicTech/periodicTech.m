classdef periodicTech < smoothfun % (Abstract) 
%PERIODICTECH   Approximate periodic smooth functions on [-1,1].
%   Abstract (interface) class for approximating periodic functions on the 
%   interval [-1,1], with a basis of periodic functions.
%
% See also SMOOTHFUN, FOURTECH.

% Copyright 2014 by The University of Oxford and The Chebfun Developers.
% See http://www.chebfun.org/ for Chebfun information.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PERIODICTECH Class Description:
%
% The PERIODICTECH class is an abstract class for representations of periodic 
% functions on the interval [-1,1], with a basis of periodic functions.
%
% The current instance of PERIODICTECH is FOURTECH.
%
% Class diagram: [<<SMOOTHFUN>>] <-- [<<PERIODICTECH>>] <-- [FOURTECH]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Copyright 2014 by The University of Oxford and The Chebfun Developers. 
% See http://www.chebfun.org/ for Chebfun information.

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% METHODS IMPLEMENTED IN THIS M-FILE:
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    methods ( Access = public, Static = false )
        
        function out = isperiodic(f)
        %ISPERIODIC    Test if the objtect is is constructed with a basis of
        %periodic functions. 
        %    Returns 1 for PERIODICTECH.
            out = 1;
        end
        
    end
    
end
