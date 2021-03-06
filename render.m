function render()
%RENDER Runs in an infinite loop
%   The render function is run in an infinite loop at a specified update
%   rate. Use the render function to make updates to graphics and dom
%   objects. You can also use the render() function to perform simple
%   polling of data. The render function takes zero inputs and zero
%   outputs.

%
% Copyright 2019 The MathWorks, Inc.
%

webcoder.console.log('... Updating the display ...');
attitude = StoreData.getAttitude();
rollElem = webcoder.dom.Element('roll');
rollElem.setInnerText(sprintf('%f',attitude(1)));
pitchElem = webcoder.dom.Element('pitch');
pitchElem.setInnerText(sprintf('%f',attitude(2)));
yawElem = webcoder.dom.Element('yaw');
yawElem.setInnerText(sprintf('%f',attitude(3)));

end