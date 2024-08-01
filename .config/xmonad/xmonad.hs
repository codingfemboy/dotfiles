import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

main :: IO()
main = xmonad
      . ewmh
      . withEasySB (statusBarProp "xmobar" (pure def)) defToggleStrutsKey
      $ myConfig

myKeys conf@(XConfig {modMask = modKey}) = [ ((modKey, xK_f), spawn "firefox") ]

myConfig = def
  { modMask       = mod4Mask
  , terminal      = "alacritty"
  , startupHook   = myStartupHook
  }
  `additionalKeysP` []

myStartupHook :: X ()
myStartupHook = do
  spawn "~/.config/scripts/xmonad-startup-hook.sh"

--main :: IO ()
--main = xmonad $ def
--  { modMask = mod4Mask,
--  terminal = "alacritty",
--  startupHook = myStartupHook
--  }
--  `additionalKeysP` []
