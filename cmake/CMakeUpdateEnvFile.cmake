set(SourceEnvFiles
    "colors/.env"
    "cursors/.env"
    "desktoptheme/.env"
    "icons/.env"
    "konsole/.env"
    "launcher/.env"
    "mozilla/.env"
    "sddm/.env"
    "splash/.env"
    "wallpapers/.env"
    "plasma/layout-templates/.env"
    "plasma/look-and-feel/.env"
)

foreach(ENV_FILE ${SourceEnvFiles})
    FILE(WRITE ${CMAKE_SOURCE_DIR}/${ENV_FILE} "# This file was auto-generated. Please do not edit.\n\n")
    FILE(APPEND ${CMAKE_SOURCE_DIR}/${ENV_FILE} "PLASMA_VERSION=${PROJECT_VERSION}\n")
    FILE(APPEND ${CMAKE_SOURCE_DIR}/${ENV_FILE} "PLASMA_MIN_VERSION=${PLASMA_MIN_VERSION}\n")
    FILE(APPEND ${CMAKE_SOURCE_DIR}/${ENV_FILE} "QT_MIN_VERSION=${QT_MIN_VERSION}\n")
    FILE(APPEND ${CMAKE_SOURCE_DIR}/${ENV_FILE} "KF6_MIN_VERSION=${KF6_MIN_VERSION}\n")
endforeach(ENV_FILE)
