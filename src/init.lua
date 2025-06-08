--!strict

local packages = script.Parent.roblox_packages;
local Dialogue = require(packages.Dialogue);
local DialogueMakerTypes = require(packages.DialogueMakerTypes);

type DialogueConstructorProperties = DialogueMakerTypes.DialogueConstructorProperties;

local Redirect = {}

function Redirect.new(properties: DialogueConstructorProperties)

  return Dialogue.new({
    type = "Redirect" :: "Redirect";
    children = properties.children;
    getChildren = properties.getChildren;
    content = properties.content;
    getContent = properties.getContent;
    settings = properties.settings;
    runInitializationAction = properties.runInitializationAction;
    runCompletionAction = properties.runCompletionAction;
    verifyCondition = properties.verifyCondition;
  });

end;

return Redirect;