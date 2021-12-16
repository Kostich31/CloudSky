#include "TCPClientSocket.h"
#include "constants.h"

constexpr bool debug = true;

TCPClient::TCPClientSocket::TCPClientSocket(const int port, const char* ip)
{
    PORT = port;
    IP = ip;
    address.sin_family = AF_INET;
    address.sin_port = htons(PORT);
    addressLength = sizeof(address);
}

TCPClient::TCPClientSocket::~TCPClientSocket()
{
    if (file.is_open())
        file.close();
    close(generalSocketDescriptor);
}

void TCPClient::TCPClientSocket::activateSocket()
{   
    try {
        createSocket();
        if (inet_pton(AF_INET, IP, &address.sin_addr) <= 0) {
            if (debug)
                std::cout << "[ERROR] : TCP Invalid address\n";
        } else
            createConnection();
    }
    catch (const std::invalid_argument& e) {
        std::cerr << e.what() << std::endl;
    }
}

void TCPClient::TCPClientSocket::createSocket()
{
    if ((generalSocketDescriptor = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == 0) {
        if (debug)
            std::cout << "[ERROR] : TCP Socket failed"  << std::endl;
        throw std::invalid_argument("[ERROR] : TCP Socket failed");
    }
    if (debug)
        std::cout << "[LOG] : TCP Socket Created Successfully.\n";
}

void TCPClient::TCPClientSocket::createConnection()
{
    if (connect(generalSocketDescriptor, (struct sockaddr*)&address, sizeof(address)) < 0) {
        if (debug)
            perror("[ERROR] : TCP connection attempt failed.\n");
        throw std::invalid_argument("[ERROR] : TCP connection attempt failed.");
    }
    if (debug)
        std::cout << "[LOG] : TCP Connection Successfull.\n";
}

int TCPClient::TCPClientSocket::receivePortNumber()
{
    int port = -1;
    std::string portString;
    char buffer[1024] = {};
    char message[10] = "Start";
    int length = 6;
    send(generalSocketDescriptor, message, length, 0);

    int valread = read(generalSocketDescriptor, buffer, 1024);
    if (debug) {
        std::cout << "[LOG] : TCP Data received " << valread << " bytes\n";
    }
    if (valread > 0 && valread < 15) {
        for (int i = 0; i < valread; i++)
            portString.push_back(buffer[i]);
        port = std::stoi(portString);
    }
    return port;
}

void TCPClient::TCPClientSocket::changePort(int newPort)
{
    PORT = newPort;
    address.sin_port = htons(PORT);
    try {
        createConnection();
    }
    catch (const std::invalid_argument& e) {
        std::cerr << e.what() << std::endl;
    }
}

void TCPClient::TCPClientSocket::transmitFile(std::string filename)
{
    file.open(filename, std::ios::in | std::ios::binary);
    if (file.is_open()) {
        if (debug)
            std::cout << "[LOG] : TCP File is ready to Transmit." << std::endl;
    } else {
        if (debug)
            std::cout << "[ERROR] : TCP File loading failed. Maybe I should exit..." << std::endl;
        throw std::invalid_argument("[ERROR] : TCP File loading failed. Maybe I should exit...");
    }
    char buffer[1024] = {};
    int length = 0;
    while (!file.eof()) {
        file.get(buffer[length]);
        length++;
    }
    if (debug)
        std::cout << "[LOG] : TCP Sending...\n";

    int bytes_sent = send(generalSocketDescriptor, buffer, length - 1, 0);
    file.close();
    if (debug) {
        std::cout << "[LOG] : TCP Transmitted Data Size " << bytes_sent << " Bytes.\n";
        std::cout << "[LOG] : TCP File Transfer Complete.\n";
    }
}