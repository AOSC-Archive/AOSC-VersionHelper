#include <QApplication>
#include <QWidget>
#include "qmlapplicationviewer.h"
#include "i18n.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    I18N i18n("translations", "UTF-8");
    i18n.translate();

    QmlApplicationViewer viewer;
    viewer.addImportPath(QLatin1String("modules"));
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/AOSC-VersionHelper/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
