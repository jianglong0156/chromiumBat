set GYP_GENERATORS=msvs-ninja,ninja
set GYP_DEFINES=component=shared_library
set GYP_MSVS_VERSION=2013
set DEPOT_TOOLS_WIN_TOOLCHAIN=0
python src\build\gyp_chromium -Dgoogle_api_key='AIzaSyBN0lw6YmExMZpXnZ9WLGJjX5CYgPwMoTs' -Dgoogle_default_client_id='1077794207526-m59mciblhf5jlcnou33gki3prhu6r17p.apps.googleusercontent.com' -Dgoogle_default_client_secret='7f4d5ce93ed1afa7a8b83a4b817a0bfc7a0a60e0'
pause