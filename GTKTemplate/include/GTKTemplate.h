#include <gtkmm/button.h>
#include <gtkmm/window.h>

class GTKTemplate : public Gtk::Window
{
    public:
        GTKTemplate();
        ~GTKTemplate(){}
    protected:
        void on_click();
        Gtk::Button m_Button;
};