#ifndef SERVER_HPP_

#define SERVER_HPP_

#include <iostream>

class Server {
    public:

    uint16_t getPort()  const;
    uint16_t setPort(const uint16_t port);
    void stop();
    void start();
    void restart();
    void getInteraction();
    void sendGameScreen(char *data, size_t size);
    void setHostName();
    void sendGameAudio(char *data, size_t size);

    private:

    uint16_t TCPServerPort;
    uint16_t UDPServerPort;
    std::string hostName;

};

#endif