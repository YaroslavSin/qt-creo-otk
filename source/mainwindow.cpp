#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QMessageBox>

#include <ciplib.h>
#include <ciptype.h>
#include <pfcExceptions.h>
#include <xstring.h>
#include <xstring_c.h>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QObject::connect(ui->pushButton, &QPushButton::clicked,
                            this, &MainWindow::connectAndGetModelName);
}

MainWindow::~MainWindow()
{
    if(!connection.isnull())
        connection->Disconnect(10);
    delete ui;
}

void MainWindow::connectAndGetModelName()
{
    connection = pfcAsyncConnection::Connect("", "", "", 10);
    if(!connection){
       QMessageBox::warning(this, "Warning", "Connection failed!");
    }else{
       pfcSession_ptr session = connection->GetSession();

       pfcModel_ptr mdl = session->GetCurrentModel();
       xstring name = mdl->GetFullName();
       QMessageBox::information(this, "Current model name", name.getxstring_c().mbstr);
    }
}

