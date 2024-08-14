#include <gtkmm/main.h>
#include <gtkmm/application.h>
#include "GTKTemplate.h"

int main(int argc, char* argv[])
{
    auto app = Gtk::Application::create(argc, argv, "org.gtkmm.GTK Template");
    GTKTemplate tmp;
    return app->run(tmp);
}