module RedmineUserSpecificTheme
end

require File.dirname(__FILE__) + '/redmine_user_specific_theme/hooks/view_hooks'
require File.dirname(__FILE__) + '/redmine_user_specific_theme/patches/user_preference_patch'
require File.dirname(__FILE__) + '/redmine_user_specific_theme/patches/application_helper_patch'

unless UserPreference.included_modules.include?(RedmineUserSpecificTheme::Patches::UserPreferencePatch)
  UserPreference.send :prepend, RedmineUserSpecificTheme::Patches::UserPreferencePatch
end
unless ApplicationHelper.included_modules.include?(RedmineUserSpecificTheme::Patches::ApplicationHelperPatch)
  ApplicationHelper.send :include, RedmineUserSpecificTheme::Patches::ApplicationHelperPatch
end
