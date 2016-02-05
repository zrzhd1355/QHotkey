CONFIG += C++11

HEADERS += $$PWD/qhotkey.h \
    $$PWD/qhotkey_p.h

SOURCES += $$PWD/qhotkey.cpp

mac {
	SOURCES +=
	LIBS += -framework Carbon
} else:win32 {
	SOURCES += $$PWD/qhotkey_win.cpp
	LIBS += -lUser32
} else:unix {
	SOURCES +=
	QT += x11extras
	LIBS += -lX11
}

INCLUDEPATH += $$PWD
