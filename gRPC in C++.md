---
tags:
  - grpc
  - cpp
link: 
aliases:
---


gRPC (Google Remote Procedure Call) in C++ is a powerful framework that allows developers to build distributed systems where different services can communicate with each other over the network. It is particularly useful for creating high-performance, scalable microservices and supports multiple communication patterns such as unary, client-streaming, server-streaming, and bidirectional streaming.


### 1. **Service Definition:**

- gRPC services are defined using Protocol Buffers (protobuf), a language-agnostic interface definition language (IDL). You create a `.proto` file that describes the service's methods and the message types they use.
- Example

```proto
syntax = "proto3";

service Greeter {
  rpc SayHello (HelloRequest) returns (HelloReply);
}

message HelloRequest {
  string name = 1;
}

message HelloReply {
  string message = 1;
}
```

- In this example, `Greeter` is a service with a single method `SayHello` that takes a `HelloRequest` and returns a `HelloReply`.


### **Protocol Buffers (Protobuf):**

- Protobuf is the serialization format used by gRPC to efficiently encode and decode messages. It is both language-neutral and platform-neutral.

- After defining your `.proto` file, you use the `protoc` compiler to generate C++ code. This code includes message classes (for `HelloRequest` and `HelloReply`) and an abstract service class that you will implement.


### **Stub Generation:**

- The `protoc` compiler generates C++ code that includes the client and server stubs. The client stub provides a type-safe way for clients to call the remote methods, while the server stub is the base class that the server must implement.

- Running `protoc` on the above `.proto` file will generate `greeter.pb.h` and `greeter.grpc.pb.h` files containing the necessary classes and methods.

### **Server Implementation:**

- The server side implements the service by inheriting from the generated base class and overriding the methods to provide the desired functionality.
- Example:

```cpp
class GreeterServiceImpl final : public Greeter::Service {
  grpc::Status SayHello(grpc::ServerContext* context, const HelloRequest* request,
                        HelloReply* reply) override {
    std::string prefix("Hello ");
    reply->set_message(prefix + request->name());
    return grpc::Status::OK;
  }
};
```


### **Client Implementation:**

- The client uses the generated stub to make calls to the server.
- Example:

```cpp
void RunClient() {
  auto channel = grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials());
  std::unique_ptr<Greeter::Stub> stub = Greeter::NewStub(channel);

  HelloRequest request;
  request.set_name("World");

  HelloReply reply;
  grpc::ClientContext context;
  grpc::Status status = stub->SayHello(&context, request, &reply);

  if (status.ok()) {
    std::cout << "Greeter received: " << reply.message() << std::endl;
  } else {
    std::cerr << "gRPC call failed" << std::endl;
  }
}
```


### **Server Setup and Execution:**

- After implementing the service, you need to set up and start the gRPC server to listen for incoming requests.
- Example:

```cpp
void RunServer() {
  std::string server_address("0.0.0.0:50051");
  GreeterServiceImpl service;

  grpc::ServerBuilder builder;
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
  builder.RegisterService(&service);
  std::unique_ptr<grpc::Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;
  server->Wait();
}
```

### **Client-Side Usage:**
- The client creates a connection to the server and uses the generated stub to call remote methods.

### **Advanced Features:**
- **Streaming:** gRPC supports streaming RPCs where either the client or the server (or both) can send a stream of messages.
- **Authentication:** gRPC provides built-in support for authentication, including SSL/TLS and token-based authentication.
- **Load Balancing:** gRPC can work with load balancers to distribute requests across multiple server instances.
- **Deadlines and Timeouts:** gRPC allows you to set deadlines for RPCs to prevent them from hanging indefinitely.

### gRPC Workflow in C++:

1. **Define the service** in a `.proto` file using Protocol Buffers.
2. **Generate C++ code** using the `protoc` compiler.
3. **Implement the server** by extending the generated service class and overriding its methods.
4. **Set up the server** to listen for client requests.
5. **Implement the client** using the generated stub to make RPCs.
6. **Run the server and client**, making sure they can communicate over the network.

### gRPC Usage Example

Here's a summary example of how gRPC is used in C++:

1. Define your service in a `.proto` file.
2. Generate the necessary C++ code using `protoc`.
3. Implement the server logic.
4. Create a client that communicates with the server.
5. Handle errors, retries, and any other client-server communication nuances.

### Conclusion

gRPC in C++ provides a robust, high-performance, and easy-to-use framework for building distributed systems and microservices. It abstracts much of the complexity involved in network communication, making it easier to focus on the business logic of your applications. By leveraging Protocol Buffers, gRPC ensures efficient serialization, allowing for fast and reliable data transmission across network boundaries.




















