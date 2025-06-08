## Note 
### This is a work in progress and is not the final verison

~~~
books-dbms/
│
├── build.gradle
├── settings.gradle
├── README.md
├── .gitignore
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── example/
│   │   │           └── booksdbms/
│   │   │               ├── BooksDbmsApplication.java
│   │   │
│   │   │               ├── config/
│   │   │               │   └── DatabaseConfig.java
│   │   │
│   │   │               ├── controller/
│   │   │               │   ├── BookController.java
│   │   │               │   ├── AuthorController.java
│   │   │               │   ├── PublisherController.java
│   │   │               │   └── GenreController.java
│   │   │
│   │   │               ├── entity/
│   │   │               │   ├── Book.java
│   │   │               │   ├── Author.java
│   │   │               │   ├── Publisher.java
│   │   │               │   └── Genre.java
│   │   │
│   │   │               ├── repository/
│   │   │               │   ├── BookRepository.java
│   │   │               │   ├── AuthorRepository.java
│   │   │               │   ├── PublisherRepository.java
│   │   │               │   └── GenreRepository.java
│   │   │
│   │   │               ├── service/
│   │   │               │   ├── BookService.java
│   │   │               │   ├── AuthorService.java
│   │   │               │   ├── PublisherService.java
│   │   │               │   └── GenreService.java
│   │   │
│   │   │               └── dto/
│   │   │                   ├── BookDTO.java
│   │   │                   ├── AuthorDTO.java
│   │   │                   ├── PublisherDTO.java
│   │   │                   └── GenreDTO.java
│   │   │
│   │   └── resources/
│   │       ├── application.properties
│   │       ├── static/
│   │       └── templates/
│   │
│   └── test/
│       └── java/
│           └── com/
│               └── example/
│                   └── booksdbms/
│                       ├── BookServiceTest.java
│                       ├── AuthorServiceTest.java
│                       └── BooksDbmsApplicationTests.java
│
└── gradle/
    └── wrapper/
        ├── gradle-wrapper.jar
        └── gradle-wrapper.properties
~~~