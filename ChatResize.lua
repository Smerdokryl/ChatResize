local ResizeButton = ChatFrame1.EditModeResizeButton;
local baseAlpha = 0.25;

ResizeButton:SetScript('OnEnter', function(self, motion)
	if not motion then return end;
	self:SetAlpha(1.0);
end);

ResizeButton:SetScript('OnLeave', function(self, motion)
	if not motion then return end;
	self:SetAlpha(baseAlpha);
end);

ResizeButton:SetScript('OnHide', function(self)
	self:Show();
	self:GetScript('OnLeave')(self, true);
end);

ResizeButton:GetScript('OnHide')(ResizeButton);
