classdef StoreData
    methods (Access = private, Static)
        function out = setgetAttitude(data)
            persistent attitude
            if isempty(attitude)
                 attitude = [NaN,NaN,NaN];
            end
            if nargin
                attitude = data;
            end
            out = attitude;
        end
    end
    
    methods (Static)
        function setAttitude(data)
            StoreData.setgetAttitude(data);
        end
        
        function data = getAttitude
            data = StoreData.setgetAttitude();
        end
    end
end