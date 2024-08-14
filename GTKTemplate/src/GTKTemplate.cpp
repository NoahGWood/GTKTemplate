#include "GTKTemplate.h"
#include <iostream>

GTKTemplate::GTKTemplate()
    : m_Button("Hello, World!")
{
    // Set the border width of the window.
    set_border_width(10);
    m_Button.signal_clicked().connect(sigc::mem_fun(*this,
    &GTKTemplate::on_click));

    add(m_Button);
    m_Button.show();
}

void GTKTemplate::on_click()
{
    std::cout << "Hello, World!" << std::endl;
}
