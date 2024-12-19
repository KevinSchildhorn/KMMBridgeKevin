// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: packageName,
            type: .static,
            targets: ["S3"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "S3",
            path: "https://kevins-kmm-bucket.s3.us-east-2.amazonaws.com/breeds-0.3.0-1734619493907-54cd3c2e-c278-4228-b07a-ccc216a326a7.xcframework.zip?response-content-disposition=inline&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEK%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMiJIMEYCIQCVSZJdMLiBFYupZnABIQcBXqTKhLunnq8BDVRR77jX%2BwIhAKDQXGg5%2Fc53Gtecce2Dc98CjfOudaYk0mxXGHFfaNxCKt4DCHkQABoMNjM0NDg0MTI3MTQ3IgyKOZdpqQytYgcePHsquwNtvMJB3KGjFjPzxZ1O7jTld6LAhPVCQZxuYMJ%2BYlnl6rBkrc%2BVRqFG7fkmAsqiGnWer4fRheZwt9%2BjrLNwj1cm4Yik1tsQggGwW4E6YNvY%2B6Q9ztnOzNaI%2FSQtRTNAEBAP1ckR%2FQb0DpCu4CqYrwH3URC434CAmGFhuXFLQgnbj3%2Fjgci1ZWzvZmisHMpL9bljaezAS%2FuoWgrXHNuxQ%2Bv20Cb2U3%2FbWSVbAjUnh3XtuhYMTnemz4rwP5HhXtM0phQVTovkuXuzbszHMDMBznIkZxsJTZA21VBZF7qpouzjX8muRJSQLZzEPzUGDR31TpKw3oC1moLXYMbIUAYOJmq0WCVOSY1kM8L0nPDzOtpzMYchEjHXdRlidk18%2F7fzjbHw4HL1omh42fUlxqOoFCULtFenCEDjD9RQ%2FJO3L1o8zrAz6v31oMMk9JOB6MjYt9ntRhjrYiZF09CO2s27mFvpZ0Hgu8BfBQxGr7O%2FLVB6DCG02xp4H5KfXDPDYdd1yJLfm%2BbaBnD26N1QM%2Bvw3ClJOC9QWgDeSKYdv4UkQ8QLn2jjqZMmJo2SXV3i0KNM%2BrnYOjNRpDS1efdvxzCH3pC7BjrjAua%2BHAKh72H2dxKkKpXa%2BfvSIEzfX3TCE0OWjSLh0fFAT64EjTyKFZONylBOL79mNOV%2F7Ufpv7yJDfoJymifZcjEwEt4iRtQvbZs7gYjJ4E2NZ7XlROTW2BV4vjAcEez2r4jFIB1CuUUwES2SFjGhyfHVDygRILCLLZYC4W%2Fxm%2F2ziEum61E3mP1Z3byjMYEY4TZ8OsPzNH6IJJ1wzhUJoer9uC%2Bm2UK1Ra6zYLw4BugnuLHQjxJa3Gzsqns36jaonjHh8%2F4EsQi27ISZdsNrXHRKJptwO3VKVAnEAto5vU0elAgqBBTTQZH46gjPBLKQqKFOEejqh9Sti%2B2yvNRmPfy7WNh2GP5X7sXHCbIaIuqdI%2BUAQXU97CIUYUPea6fsewwYHgIwCd4JIg9gMJ20ubyaKiaMY1z1rDQCSdBF2IqxuZ0cwUeT7RU%2F5ruoqVJEg5qGgfDJJrlGGgm8Kctk7Db%2FC4%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAZHORTOWV2CRBTT24%2F20241219%2Fus-east-2%2Fs3%2Faws4_request&X-Amz-Date=20241219T152826Z&X-Amz-Expires=300&X-Amz-SignedHeaders=host&X-Amz-Signature=32c4de90fbb83bb5a86d41f2c06ea5249804adf6d4c1165d11a6c7d7cc2b565b"
        ),
    ]
)