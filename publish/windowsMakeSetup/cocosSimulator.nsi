; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "CocosSimulator"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "Chukong Technologies Inc."
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\CocosSimulator.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\resources\chromium.ico"
!define MUI_UNICON "${NSISDIR}\resources\chromium.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "resources\license.txt"
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\CocosSimulator.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "SimpChinese"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "${PRODUCT_NAME}Setup.exe"
InstallDir "$PROGRAMFILES\CocosSimulator"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "I:\chrome\chromium\publish\ReleaseTemp\42.0.2311.90.manifest"
  File "I:\chrome\chromium\publish\ReleaseTemp\accessibility.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\app_list.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ash.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ash_with_content.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\aura.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\aura_extra.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\base.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\base_i18n.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\base_i18n_nacl_win64.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\base_prefs.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\base_win64.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\blink_common.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\blink_platform.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\blink_web.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\boringssl.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\browser_ui_views.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\captive_portal.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\cc.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\cc_blink.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\cc_surfaces.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\chrome.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\chrome_100_percent.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\chrome_200_percent.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\chrome_elf.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\chrome_watcher.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\cloud_policy_proto.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\cloud_policy_proto_generated_compile.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\CocosSimulator.exe"
  CreateDirectory "$SMPROGRAMS\CocosSimulator"
  CreateShortCut "$SMPROGRAMS\CocosSimulator\CocosSimulator.lnk" "$INSTDIR\CocosSimulator.exe"
  CreateShortCut "$DESKTOP\CocosSimulator.lnk" "$INSTDIR\CocosSimulator.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\compositor.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\content.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\content_resources.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\crcrypto.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\crypto_nacl_win64.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\d3dcompiler_47.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\delegate_execute.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\delegate_execute_unittests.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\device_battery.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\device_bluetooth.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\device_event_log_component.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\device_vibration.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\domain_reliability.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\environment.x64"
  File "I:\chrome\chromium\publish\ReleaseTemp\environment.x86"
  File "I:\chrome\chromium\publish\ReleaseTemp\events.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\events_base.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\events_devices.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\events_ipc.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\events_platform.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ffmpegsumo.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\First Run"
  File "I:\chrome\chromium\publish\ReleaseTemp\gcm.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\genmacro.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\genmodule.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\genperf.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\genstring.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\genversion.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\gesture_detection.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gfx.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gfx_geometry.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gfx_ipc.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gin.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gles2_c_lib.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gles2_implementation.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gles2_utils.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gl_in_process_context.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gl_wrapper.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gpu.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gpu_blink.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\gyp-win-tool"
  File "I:\chrome\chromium\publish\ReleaseTemp\icudtl.dat"
  File "I:\chrome\chromium\publish\ReleaseTemp\icui18n.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\icuuc.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ipc.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ipc_mojo.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ipc_win64.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\keyboard.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\keyboard_resources.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\keyed_service_content.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\keyed_service_core.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\latency_info_nacl_win64.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\libEGL.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\libGLESv2.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\libpng.dll"
  SetOutPath "$INSTDIR\locales"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\am.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ar.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\bg.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\bn.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ca.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\cs.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\da.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\de.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\el.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\en-GB.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\en-US.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\es-419.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\es.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\et.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\fa.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\fi.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\fil.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\fr.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\gu.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\he.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\hi.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\hr.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\hu.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\id.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\it.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ja.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\kn.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ko.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\lt.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\lv.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ml.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\mr.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ms.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\nb.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\nl.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\pl.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\pt-BR.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\pt-PT.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ro.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ru.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\sk.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\sl.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\sr.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\sv.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\sw.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\ta.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\te.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\th.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\tr.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\uk.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\vi.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\zh-CN.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\locales\zh-TW.pak"
  SetOutPath "$INSTDIR"
  File "I:\chrome\chromium\publish\ReleaseTemp\Logo.png"
  File "I:\chrome\chromium\publish\ReleaseTemp\media.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\media_blink.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\message_center.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\metro_driver.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\metro_viewer.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\mksnapshot.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\mojo_common_lib.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\mojo_environment_chromium_impl.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\mojo_system_impl.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\mojo_system_impl_win64.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\nacl64.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\nacl_irt_x86_32.nexe"
  File "I:\chrome\chromium\publish\ReleaseTemp\nacl_irt_x86_32.nexe.cmd"
  File "I:\chrome\chromium\publish\ReleaseTemp\nacl_irt_x86_64.nexe"
  File "I:\chrome\chromium\publish\ReleaseTemp\nacl_irt_x86_64.nexe.cmd"
  File "I:\chrome\chromium\publish\ReleaseTemp\natives_blob.bin"
  File "I:\chrome\chromium\publish\ReleaseTemp\native_theme.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\net.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\net_with_v8.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\onc_component.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\policy_component.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ppapi_host.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ppapi_proxy.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ppapi_shared.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ppapi_shared_win64.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\pref_registry.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\printing.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\protobuf_lite.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\protoc.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\re2c.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\remoting_resources_verified.stamp"
  File "I:\chrome\chromium\publish\ReleaseTemp\resources.pak"
  File "I:\chrome\chromium\publish\ReleaseTemp\SecondaryTile.png"
  File "I:\chrome\chromium\publish\ReleaseTemp\sessions_content.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\shared_memory_support.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\shell_dialogs.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\skia.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\SmallLogo.png"
  File "I:\chrome\chromium\publish\ReleaseTemp\snapshot.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\snapshot_blob.bin"
  File "I:\chrome\chromium\publish\ReleaseTemp\splash-620x300.png"
  File "I:\chrome\chromium\publish\ReleaseTemp\sql.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\storage.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\storage_common.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\surface.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\sync_core.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\sync_proto.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\tls_edit.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\translator.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ui_base.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ui_base_ime.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\ui_touch_selection.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\url_lib.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\url_matcher.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\user_manager.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\user_prefs.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\v8.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\views.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\VisualElementsManifest.xml"
  File "I:\chrome\chromium\publish\ReleaseTemp\wallpaper.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\webdata_common.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\webkit_gpu.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\webview.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\web_dialogs.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\wifi_component.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\win_window.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\wm.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\wow_helper.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\wtf.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\wtf_unittest_helpers.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\yasm.exe"
  File "I:\chrome\chromium\publish\ReleaseTemp\msvcp100.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\msvcp110.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\msvcp120.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\msvcr100.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\msvcr110.dll"
  File "I:\chrome\chromium\publish\ReleaseTemp\msvcr120.dll"
SectionEnd

Section -AdditionalIcons
  CreateShortCut "$SMPROGRAMS\CocosSimulator\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\CocosSimulator.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\CocosSimulator.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) 已成功地从你的计算机移除。"
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "你确实要完全移除 $(^Name) ，其及所有的组件？" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\yasm.exe"
  Delete "$INSTDIR\wtf_unittest_helpers.dll"
  Delete "$INSTDIR\wtf.dll"
  Delete "$INSTDIR\wow_helper.exe"
  Delete "$INSTDIR\wm.dll"
  Delete "$INSTDIR\win_window.dll"
  Delete "$INSTDIR\wifi_component.dll"
  Delete "$INSTDIR\web_dialogs.dll"
  Delete "$INSTDIR\webview.dll"
  Delete "$INSTDIR\webkit_gpu.dll"
  Delete "$INSTDIR\webdata_common.dll"
  Delete "$INSTDIR\wallpaper.dll"
  Delete "$INSTDIR\VisualElementsManifest.xml"
  Delete "$INSTDIR\views.dll"
  Delete "$INSTDIR\v8.dll"
  Delete "$INSTDIR\user_prefs.dll"
  Delete "$INSTDIR\user_manager.dll"
  Delete "$INSTDIR\url_matcher.dll"
  Delete "$INSTDIR\url_lib.dll"
  Delete "$INSTDIR\ui_touch_selection.dll"
  Delete "$INSTDIR\ui_base_ime.dll"
  Delete "$INSTDIR\ui_base.dll"
  Delete "$INSTDIR\translator.dll"
  Delete "$INSTDIR\tls_edit.exe"
  Delete "$INSTDIR\temp"
  Delete "$INSTDIR\sync_proto.dll"
  Delete "$INSTDIR\sync_core.dll"
  Delete "$INSTDIR\surface.dll"
  Delete "$INSTDIR\storage_common.dll"
  Delete "$INSTDIR\storage.dll"
  Delete "$INSTDIR\sql.dll"
  Delete "$INSTDIR\splash-620x300.png"
  Delete "$INSTDIR\snapshot_blob.bin"
  Delete "$INSTDIR\snapshot.dll"
  Delete "$INSTDIR\SmallLogo.png"
  Delete "$INSTDIR\skia.dll"
  Delete "$INSTDIR\shell_dialogs.dll"
  Delete "$INSTDIR\shared_memory_support.dll"
  Delete "$INSTDIR\sessions_content.dll"
  Delete "$INSTDIR\SecondaryTile.png"
  Delete "$INSTDIR\resources.pak"
  Delete "$INSTDIR\remoting_resources_verified.stamp"
  Delete "$INSTDIR\re2c.exe"
  Delete "$INSTDIR\protoc.exe"
  Delete "$INSTDIR\protobuf_lite.dll"
  Delete "$INSTDIR\printing.dll"
  Delete "$INSTDIR\pref_registry.dll"
  Delete "$INSTDIR\ppapi_shared_win64.dll"
  Delete "$INSTDIR\ppapi_shared.dll"
  Delete "$INSTDIR\ppapi_proxy.dll"
  Delete "$INSTDIR\ppapi_host.dll"
  Delete "$INSTDIR\policy_component.dll"
  Delete "$INSTDIR\onc_component.dll"
  Delete "$INSTDIR\net_with_v8.dll"
  Delete "$INSTDIR\net.dll"
  Delete "$INSTDIR\native_theme.dll"
  Delete "$INSTDIR\natives_blob.bin"
  Delete "$INSTDIR\nacl_irt_x86_64.nexe.cmd"
  Delete "$INSTDIR\nacl_irt_x86_64.nexe"
  Delete "$INSTDIR\nacl_irt_x86_32.nexe.cmd"
  Delete "$INSTDIR\nacl_irt_x86_32.nexe"
  Delete "$INSTDIR\nacl64.exe"
  Delete "$INSTDIR\mojo_system_impl_win64.dll"
  Delete "$INSTDIR\mojo_system_impl.dll"
  Delete "$INSTDIR\mojo_environment_chromium_impl.dll"
  Delete "$INSTDIR\mojo_common_lib.dll"
  Delete "$INSTDIR\mksnapshot.exe"
  Delete "$INSTDIR\metro_viewer.dll"
  Delete "$INSTDIR\metro_driver.dll"
  Delete "$INSTDIR\message_center.dll"
  Delete "$INSTDIR\media_blink.dll"
  Delete "$INSTDIR\media.dll"
  Delete "$INSTDIR\Logo.png"
  Delete "$INSTDIR\locales\zh-TW.pak"
  Delete "$INSTDIR\locales\zh-CN.pak"
  Delete "$INSTDIR\locales\vi.pak"
  Delete "$INSTDIR\locales\uk.pak"
  Delete "$INSTDIR\locales\tr.pak"
  Delete "$INSTDIR\locales\th.pak"
  Delete "$INSTDIR\locales\te.pak"
  Delete "$INSTDIR\locales\ta.pak"
  Delete "$INSTDIR\locales\sw.pak"
  Delete "$INSTDIR\locales\sv.pak"
  Delete "$INSTDIR\locales\sr.pak"
  Delete "$INSTDIR\locales\sl.pak"
  Delete "$INSTDIR\locales\sk.pak"
  Delete "$INSTDIR\locales\ru.pak"
  Delete "$INSTDIR\locales\ro.pak"
  Delete "$INSTDIR\locales\pt-PT.pak"
  Delete "$INSTDIR\locales\pt-BR.pak"
  Delete "$INSTDIR\locales\pl.pak"
  Delete "$INSTDIR\locales\nl.pak"
  Delete "$INSTDIR\locales\nb.pak"
  Delete "$INSTDIR\locales\ms.pak"
  Delete "$INSTDIR\locales\mr.pak"
  Delete "$INSTDIR\locales\ml.pak"
  Delete "$INSTDIR\locales\lv.pak"
  Delete "$INSTDIR\locales\lt.pak"
  Delete "$INSTDIR\locales\ko.pak"
  Delete "$INSTDIR\locales\kn.pak"
  Delete "$INSTDIR\locales\ja.pak"
  Delete "$INSTDIR\locales\it.pak"
  Delete "$INSTDIR\locales\id.pak"
  Delete "$INSTDIR\locales\hu.pak"
  Delete "$INSTDIR\locales\hr.pak"
  Delete "$INSTDIR\locales\hi.pak"
  Delete "$INSTDIR\locales\he.pak"
  Delete "$INSTDIR\locales\gu.pak"
  Delete "$INSTDIR\locales\fr.pak"
  Delete "$INSTDIR\locales\fil.pak"
  Delete "$INSTDIR\locales\fi.pak"
  Delete "$INSTDIR\locales\fa.pak"
  Delete "$INSTDIR\locales\et.pak"
  Delete "$INSTDIR\locales\es.pak"
  Delete "$INSTDIR\locales\es-419.pak"
  Delete "$INSTDIR\locales\en-US.pak"
  Delete "$INSTDIR\locales\en-GB.pak"
  Delete "$INSTDIR\locales\el.pak"
  Delete "$INSTDIR\locales\de.pak"
  Delete "$INSTDIR\locales\da.pak"
  Delete "$INSTDIR\locales\cs.pak"
  Delete "$INSTDIR\locales\ca.pak"
  Delete "$INSTDIR\locales\bn.pak"
  Delete "$INSTDIR\locales\bg.pak"
  Delete "$INSTDIR\locales\ar.pak"
  Delete "$INSTDIR\locales\am.pak"
  Delete "$INSTDIR\libpng.dll"
  Delete "$INSTDIR\libGLESv2.dll"
  Delete "$INSTDIR\libEGL.dll"
  Delete "$INSTDIR\latency_info_nacl_win64.dll"
  Delete "$INSTDIR\keyed_service_core.dll"
  Delete "$INSTDIR\keyed_service_content.dll"
  Delete "$INSTDIR\keyboard_resources.pak"
  Delete "$INSTDIR\keyboard.dll"
  Delete "$INSTDIR\ipc_win64.dll"
  Delete "$INSTDIR\ipc_mojo.dll"
  Delete "$INSTDIR\ipc.dll"
  Delete "$INSTDIR\icuuc.dll"
  Delete "$INSTDIR\icui18n.dll"
  Delete "$INSTDIR\icudtl.dat"
  Delete "$INSTDIR\gyp-win-tool"
  Delete "$INSTDIR\gpu_blink.dll"
  Delete "$INSTDIR\gpu.dll"
  Delete "$INSTDIR\gl_wrapper.dll"
  Delete "$INSTDIR\gl_in_process_context.dll"
  Delete "$INSTDIR\gles2_utils.dll"
  Delete "$INSTDIR\gles2_implementation.dll"
  Delete "$INSTDIR\gles2_c_lib.dll"
  Delete "$INSTDIR\gin.dll"
  Delete "$INSTDIR\gfx_ipc.dll"
  Delete "$INSTDIR\gfx_geometry.dll"
  Delete "$INSTDIR\gfx.dll"
  Delete "$INSTDIR\gesture_detection.dll"
  Delete "$INSTDIR\genversion.exe"
  Delete "$INSTDIR\genstring.exe"
  Delete "$INSTDIR\genperf.exe"
  Delete "$INSTDIR\genmodule.exe"
  Delete "$INSTDIR\genmacro.exe"
  Delete "$INSTDIR\gcm.dll"
  Delete "$INSTDIR\First Run"
  Delete "$INSTDIR\ffmpegsumo.dll"
  Delete "$INSTDIR\events_platform.dll"
  Delete "$INSTDIR\events_ipc.dll"
  Delete "$INSTDIR\events_devices.dll"
  Delete "$INSTDIR\events_base.dll"
  Delete "$INSTDIR\events.dll"
  Delete "$INSTDIR\environment.x86"
  Delete "$INSTDIR\environment.x64"
  Delete "$INSTDIR\domain_reliability.dll"
  Delete "$INSTDIR\device_vibration.dll"
  Delete "$INSTDIR\device_event_log_component.dll"
  Delete "$INSTDIR\device_bluetooth.dll"
  Delete "$INSTDIR\device_battery.dll"
  Delete "$INSTDIR\delegate_execute_unittests.exe"
  Delete "$INSTDIR\delegate_execute.exe"
  Delete "$INSTDIR\d3dcompiler_47.dll"
  Delete "$INSTDIR\crypto_nacl_win64.dll"
  Delete "$INSTDIR\crcrypto.dll"
  Delete "$INSTDIR\content_resources.pak"
  Delete "$INSTDIR\content.dll"
  Delete "$INSTDIR\compositor.dll"
  Delete "$INSTDIR\CocosSimulator.exe"
  Delete "$INSTDIR\cloud_policy_proto_generated_compile.dll"
  Delete "$INSTDIR\cloud_policy_proto.dll"
  Delete "$INSTDIR\chrome_watcher.dll"
  Delete "$INSTDIR\chrome_elf.dll"
  Delete "$INSTDIR\chrome_200_percent.pak"
  Delete "$INSTDIR\chrome_100_percent.pak"
  Delete "$INSTDIR\chrome.dll"
  Delete "$INSTDIR\cc_surfaces.dll"
  Delete "$INSTDIR\cc_blink.dll"
  Delete "$INSTDIR\cc.dll"
  Delete "$INSTDIR\captive_portal.dll"
  Delete "$INSTDIR\browser_ui_views.dll"
  Delete "$INSTDIR\boringssl.dll"
  Delete "$INSTDIR\blink_web.dll"
  Delete "$INSTDIR\blink_platform.dll"
  Delete "$INSTDIR\blink_common.dll"
  Delete "$INSTDIR\base_win64.dll"
  Delete "$INSTDIR\base_prefs.dll"
  Delete "$INSTDIR\base_i18n_nacl_win64.dll"
  Delete "$INSTDIR\base_i18n.dll"
  Delete "$INSTDIR\base.dll"
  Delete "$INSTDIR\aura_extra.dll"
  Delete "$INSTDIR\aura.dll"
  Delete "$INSTDIR\ash_with_content.dll"
  Delete "$INSTDIR\ash.dll"
  Delete "$INSTDIR\app_list.dll"
  Delete "$INSTDIR\accessibility.dll"
  Delete "$INSTDIR\42.0.2311.90.manifest"
  Delete "$INSTDIR\msvcp100.dll"
  Delete "$INSTDIR\msvcp110.dll"
  Delete "$INSTDIR\msvcp120.dll"
  Delete "$INSTDIR\msvcr100.dll"
  Delete "$INSTDIR\msvcr110.dll"
  Delete "$INSTDIR\msvcr120.dll"

  Delete "$SMPROGRAMS\CocosSimulator\Uninstall.lnk"
  Delete "$DESKTOP\CocosSimulator.lnk"
  Delete "$SMPROGRAMS\CocosSimulator\CocosSimulator.lnk"

  RMDir "$SMPROGRAMS\CocosSimulator"
  RMDir "$INSTDIR\locales"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
