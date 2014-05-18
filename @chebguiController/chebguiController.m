classdef chebguiController
%CHEBGUICONTROLLER   Control the layout of CHEBGUI.
%   This class is not intended to be called directly by the end user.
%
%   See also CHEBGUI.

% Developers note:
%   The CHEBGUICONTROLLER class implements a number of methods, used to control
%   the look of CHEBGUI. In v4, this functionality used to live in the @chebgui
%   folder, but to increase modularity, it has be spun off to its own class.

% Copyright 2014 by The University of Oxford and The Chebfun Developers.
% See http://www.chebfun.org/ for Chebfun information.
    
    methods (Access = public)
        
        function A = chebguiController(varargin)
            % We never construct objects of this type, so the constructor is
            % trivial
        end
        
    end
    
    methods ( Static = true )
        
        % Clear everything in the CHEBGUI window
        handles = clear(handles)
    end
    
end