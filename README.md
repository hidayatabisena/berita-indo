
# Portal Berita Indo

Aplikasi yang menampilkan berita Indonesia dari beberapa situs berita lokal


## Screenshots

![App Screenshot](https://res.cloudinary.com/moyadev/image/upload/v1692065616/sena/CleanShot_2023-08-15_at_09.13.13_2x_c81hzi.png)


## API Reference

#### Get Kumparan News

```http
  GET /api/kumparan-news
```

#### Response
```json
{
    "messages": "Result of all news in Kumparan News",
    "total": 25,
    "data": [
        {
            "creator": "kumparanFOOD",
            "title": "Polusi Udara Jakarta Buruk, 5 Makanan Ini Bantu Jaga Kesehatan Paru-paru",
            "link": "https://kumparan.com/kumparanfood/polusi-udara-jakarta-buruk-5-makanan-ini-bantu-jaga-kesehatan-paru-paru-20zRvUh20ka",
            "author": "Azalia Amadea",
            "categories": [
                "Food & Travel"
            ],
            "isoDate": "2023-08-15T02:10:22.000Z",
            "description": "Lindungi paru-paru dari risiko penyakit akibat polusi Jakarta yang memburuk, dengan makanan dan minuman ini! #kumparanFOOD #newsupdate",
            "image": {
                "small": "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_240,f_jpg/v1634025439/01h282pxr8yvwb0ytnq3ker145.jpg",
                "medium": "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_480,f_jpg/v1634025439/01h282pxr8yvwb0ytnq3ker145.jpg",
                "large": "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_720,f_jpg/v1634025439/01h282pxr8yvwb0ytnq3ker145.jpg",
                "extraLarge": "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_1080,f_jpg/v1634025439/01h282pxr8yvwb0ytnq3ker145.jpg"
            }
        }
}
```


*Example response*

