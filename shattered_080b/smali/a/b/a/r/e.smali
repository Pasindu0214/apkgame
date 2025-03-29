.class public La/b/a/r/e;
.super Ljava/lang/Object;
.source "I18NBundle.java"


# static fields
.field public static final d:Ljava/util/Locale;

.field public static e:Z

.field public static f:Z


# instance fields
.field public a:La/b/a/r/e;

.field public b:Ljava/util/Locale;

.field public c:La/b/a/r/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, La/b/a/r/e;->d:Ljava/util/Locale;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, La/b/a/r/e;->e:Z

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, La/b/a/r/e;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(La/b/a/n/a;Ljava/util/Locale;)La/b/a/n/a;
    .locals 6

    .line 41
    new-instance v0, La/b/a/r/r;

    invoke-virtual {p0}, La/b/a/n/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/a/r/r;-><init>(Ljava/lang/String;)V

    .line 42
    sget-object v1, La/b/a/r/e;->d:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 43
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v3, :cond_3

    :cond_0
    const/16 v4, 0x5f

    .line 49
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(C)V

    if-nez v3, :cond_1

    .line 50
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(C)V

    .line 52
    invoke-virtual {v0, v2}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(C)V

    .line 54
    invoke-virtual {v0, p1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    .line 55
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(C)V

    .line 57
    invoke-virtual {v0, v2}, La/b/a/r/r;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string p1, ".properties"

    .line 59
    invoke-virtual {v0, p1}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/a/n/a;->c(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(La/b/a/n/a;Ljava/lang/String;Ljava/util/List;ILa/b/a/r/e;)La/b/a/r/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/n/a;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;I",
            "La/b/a/r/e;",
            ")",
            "La/b/a/r/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-eq p3, v1, :cond_0

    add-int/2addr p3, v2

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, La/b/a/r/e;->a(La/b/a/n/a;Ljava/lang/String;Ljava/util/List;ILa/b/a/r/e;)La/b/a/r/e;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    sget-object p2, La/b/a/r/e;->d:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p4

    :cond_1
    move-object p2, v3

    .line 5
    :goto_0
    :try_start_0
    invoke-static {p0, v0}, La/b/a/r/e;->a(La/b/a/n/a;Ljava/util/Locale;)La/b/a/n/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p3, 0x1

    goto :goto_1

    :catch_0
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 7
    :try_start_2
    new-instance p3, La/b/a/r/e;

    invoke-direct {p3}, La/b/a/r/e;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, La/b/a/n/a;->b(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    .line 9
    invoke-virtual {p3, v3}, La/b/a/r/e;->a(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_2
    move-object p3, v3

    :goto_2
    if-eqz v3, :cond_3

    .line 10
    :try_start_3
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    :cond_3
    :goto_3
    if-eqz p3, :cond_4

    .line 11
    iput-object v0, p3, La/b/a/r/e;->b:Ljava/util/Locale;

    .line 12
    sget-boolean p0, La/b/a/r/e;->e:Z

    xor-int/2addr p0, v2

    .line 13
    new-instance p1, La/b/a/r/r;

    invoke-direct {p1}, La/b/a/r/r;-><init>()V

    if-eqz p0, :cond_4

    .line 14
    new-instance p0, Ljava/text/MessageFormat;

    const-string p1, ""

    invoke-direct {p0, p1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 15
    iput-object p2, p3, La/b/a/r/e;->a:La/b/a/r/e;

    return-object p3

    :cond_5
    return-object p2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 16
    :try_start_4
    new-instance p1, La/b/a/r/d;

    invoke-direct {p1, p0}, La/b/a/r/d;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v3, :cond_6

    .line 17
    :try_start_5
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 18
    :catchall_2
    :cond_6
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, La/b/a/r/e;->c:La/b/a/r/j;

    invoke-virtual {v0, p1}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 62
    iget-object v1, p0, La/b/a/r/e;->a:La/b/a/r/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, La/b/a/r/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 63
    sget-boolean v0, La/b/a/r/e;->f:Z

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Can\'t find bundle key "

    invoke-static {v1, p1}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, La/b/a/r/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public a(Ljava/io/Reader;)V
    .locals 16

    move-object/from16 v0, p1

    .line 19
    new-instance v1, La/b/a/r/j;

    invoke-direct {v1}, La/b/a/r/j;-><init>()V

    move-object/from16 v2, p0

    iput-object v1, v2, La/b/a/r/e;->c:La/b/a/r/j;

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_29

    const/16 v3, 0x28

    new-array v3, v3, [C

    .line 20
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x1

    .line 21
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v15

    if-ne v15, v7, :cond_6

    if-ne v12, v8, :cond_2

    if-le v5, v9, :cond_1

    goto :goto_2

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    if-ne v13, v7, :cond_3

    if-lez v11, :cond_3

    move v13, v11

    :cond_3
    if-ltz v13, :cond_5

    .line 23
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 24
    invoke-virtual {v4, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-ne v12, v10, :cond_4

    const-string v4, "\u0000"

    .line 26
    invoke-static {v3, v4}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_4
    invoke-virtual {v1, v0, v3}, La/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    int-to-char v15, v15

    .line 28
    array-length v7, v3

    if-ne v11, v7, :cond_7

    .line 29
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [C

    .line 30
    invoke-static {v3, v0, v7, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    :cond_7
    const/16 v7, 0xa

    if-ne v12, v8, :cond_c

    const/16 v8, 0x10

    .line 31
    invoke-static {v15, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-ltz v8, :cond_8

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v9, :cond_9

    const/4 v8, 0x2

    :goto_3
    const/4 v7, -0x1

    goto :goto_1

    :cond_8
    if-le v5, v9, :cond_b

    :cond_9
    add-int/lit8 v8, v11, 0x1

    int-to-char v12, v6

    .line 32
    aput-char v12, v3, v11

    if-eq v15, v7, :cond_a

    move v11, v8

    goto/16 :goto_5

    :cond_a
    const/4 v12, 0x0

    move v11, v8

    goto :goto_4

    .line 33
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_4
    const/16 v8, 0xd

    if-ne v12, v10, :cond_14

    if-eq v15, v7, :cond_25

    if-eq v15, v8, :cond_13

    const/16 v7, 0x62

    if-eq v15, v7, :cond_12

    const/16 v7, 0x66

    if-eq v15, v7, :cond_11

    const/16 v7, 0x6e

    if-eq v15, v7, :cond_10

    const/16 v7, 0x72

    if-eq v15, v7, :cond_f

    const/16 v7, 0x74

    if-eq v15, v7, :cond_e

    const/16 v7, 0x75

    if-eq v15, v7, :cond_d

    goto/16 :goto_8

    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v12, 0x2

    goto :goto_3

    :cond_e
    const/16 v15, 0x9

    goto/16 :goto_8

    :cond_f
    const/16 v15, 0xd

    goto/16 :goto_8

    :cond_10
    const/16 v15, 0xa

    goto/16 :goto_8

    :cond_11
    const/16 v15, 0xc

    goto/16 :goto_8

    :cond_12
    const/16 v15, 0x8

    goto/16 :goto_8

    :cond_13
    const/4 v8, 0x2

    const/4 v12, 0x3

    goto :goto_3

    :cond_14
    if-eq v15, v7, :cond_24

    if-eq v15, v8, :cond_26

    const/16 v10, 0x21

    if-eq v15, v10, :cond_18

    const/16 v10, 0x23

    if-eq v15, v10, :cond_18

    const/16 v7, 0x3a

    if-eq v15, v7, :cond_17

    const/16 v7, 0x3d

    if-eq v15, v7, :cond_17

    const/16 v7, 0x5c

    if-eq v15, v7, :cond_15

    goto :goto_6

    :cond_15
    if-ne v12, v9, :cond_16

    move v13, v11

    :cond_16
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x1

    goto :goto_3

    :cond_17
    const/4 v7, -0x1

    if-ne v13, v7, :cond_1b

    move v13, v11

    :goto_5
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_18
    if-eqz v14, :cond_1b

    .line 34
    :cond_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v10

    const/4 v15, -0x1

    if-ne v10, v15, :cond_1a

    goto :goto_7

    :cond_1a
    int-to-char v10, v10

    if-eq v10, v8, :cond_1e

    if-ne v10, v7, :cond_19

    goto :goto_7

    .line 35
    :cond_1b
    :goto_6
    invoke-static {v15}, Ljava/lang/Character;->isSpace(C)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x3

    if-ne v12, v7, :cond_1c

    const/4 v12, 0x5

    :cond_1c
    if-eqz v11, :cond_1e

    if-eq v11, v13, :cond_1e

    const/4 v7, 0x5

    if-ne v12, v7, :cond_1d

    goto :goto_7

    :cond_1d
    const/4 v8, -0x1

    if-ne v13, v8, :cond_20

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x4

    goto/16 :goto_3

    :cond_1e
    :goto_7
    const/4 v8, 0x2

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_1f
    const/4 v7, 0x5

    :cond_20
    if-eq v12, v7, :cond_21

    const/4 v7, 0x3

    if-ne v12, v7, :cond_22

    :cond_21
    :goto_8
    const/4 v12, 0x0

    :cond_22
    if-ne v12, v9, :cond_23

    const/4 v7, 0x0

    move v13, v11

    const/4 v12, 0x0

    :cond_23
    add-int/lit8 v7, v11, 0x1

    .line 36
    aput-char v15, v3, v11

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v14, 0x0

    move v11, v7

    goto/16 :goto_3

    :cond_24
    const/4 v7, 0x3

    if-ne v12, v7, :cond_26

    :cond_25
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x5

    goto/16 :goto_3

    :cond_26
    if-gtz v11, :cond_27

    if-nez v11, :cond_0

    if-nez v13, :cond_0

    :cond_27
    const/4 v7, -0x1

    if-ne v13, v7, :cond_28

    move v13, v11

    .line 37
    :cond_28
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 38
    invoke-virtual {v7, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, La/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 39
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Reader cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ObjectMap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
