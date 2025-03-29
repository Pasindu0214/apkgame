.class public La/b/a/o/m/b$a;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:La/b/a/n/a;

.field public d:Z

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:Z

.field public final r:[[La/b/a/o/m/b$b;

.field public s:La/b/a/o/m/b$b;

.field public t:F

.field public u:F

.field public v:[C

.field public w:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, La/b/a/o/m/b$a;->j:F

    .line 3
    iput v0, p0, La/b/a/o/m/b$a;->n:F

    .line 4
    iput v0, p0, La/b/a/o/m/b$a;->o:F

    iput v0, p0, La/b/a/o/m/b$a;->p:F

    const/16 v1, 0x80

    new-array v1, v1, [[La/b/a/o/m/b$b;

    .line 5
    iput-object v1, p0, La/b/a/o/m/b$a;->r:[[La/b/a/o/m/b$b;

    .line 6
    iput v0, p0, La/b/a/o/m/b$a;->u:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    .line 7
    fill-array-data v0, :array_0

    iput-object v0, p0, La/b/a/o/m/b$a;->v:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 8
    fill-array-data v0, :array_1

    iput-object v0, p0, La/b/a/o/m/b$a;->w:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>(La/b/a/n/a;Z)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, La/b/a/o/m/b$a;->j:F

    .line 11
    iput v0, p0, La/b/a/o/m/b$a;->n:F

    .line 12
    iput v0, p0, La/b/a/o/m/b$a;->o:F

    iput v0, p0, La/b/a/o/m/b$a;->p:F

    const/16 v1, 0x80

    new-array v1, v1, [[La/b/a/o/m/b$b;

    .line 13
    iput-object v1, p0, La/b/a/o/m/b$a;->r:[[La/b/a/o/m/b$b;

    .line 14
    iput v0, p0, La/b/a/o/m/b$a;->u:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    .line 15
    fill-array-data v0, :array_0

    iput-object v0, p0, La/b/a/o/m/b$a;->v:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 16
    fill-array-data v0, :array_1

    iput-object v0, p0, La/b/a/o/m/b$a;->w:[C

    .line 17
    iput-object p1, p0, La/b/a/o/m/b$a;->c:La/b/a/n/a;

    .line 18
    iput-boolean p2, p0, La/b/a/o/m/b$a;->d:Z

    .line 19
    invoke-virtual {p0, p1, p2}, La/b/a/o/m/b$a;->a(La/b/a/n/a;Z)V

    return-void

    nop

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method


# virtual methods
.method public a()La/b/a/o/m/b$b;
    .locals 9

    .line 174
    iget-object v0, p0, La/b/a/o/m/b$a;->r:[[La/b/a/o/m/b$b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_3

    .line 175
    :cond_0
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    .line 176
    iget v8, v7, La/b/a/o/m/b$b;->e:I

    if-eqz v8, :cond_2

    iget v8, v7, La/b/a/o/m/b$b;->d:I

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    return-object v7

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_4
    new-instance v0, La/b/a/r/d;

    const-string v1, "No glyphs found."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public a(C)La/b/a/o/m/b$b;
    .locals 2

    .line 178
    iget-object v0, p0, La/b/a/o/m/b$a;->r:[[La/b/a/o/m/b$b;

    div-int/lit16 v1, p1, 0x200

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x1ff

    .line 179
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILa/b/a/o/m/b$b;)V
    .locals 3

    .line 171
    iget-object v0, p0, La/b/a/o/m/b$a;->r:[[La/b/a/o/m/b$b;

    div-int/lit16 v1, p1, 0x200

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [La/b/a/o/m/b$b;

    .line 172
    aput-object v2, v0, v1

    :cond_0
    and-int/lit16 p1, p1, 0x1ff

    .line 173
    aput-object p2, v2, p1

    return-void
.end method

.method public a(La/b/a/n/a;Z)V
    .locals 22

    move-object/from16 v1, p0

    .line 30
    iget-object v2, v1, La/b/a/o/m/b$a;->b:[Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 31
    invoke-virtual/range {p1 .. p1}, La/b/a/n/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, La/b/a/o/m/b$a;->a:Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 33
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    const-string v4, "padding="

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 36
    array-length v5, v3

    if-ne v5, v7, :cond_29

    .line 37
    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, v1, La/b/a/o/m/b$a;->e:F

    const/4 v5, 0x1

    .line 38
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v1, La/b/a/o/m/b$a;->f:F

    const/4 v7, 0x2

    .line 39
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v1, La/b/a/o/m/b$a;->g:F

    const/4 v8, 0x3

    .line 40
    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, La/b/a/o/m/b$a;->h:F

    .line 41
    iget v3, v1, La/b/a/o/m/b$a;->e:F

    iget v9, v1, La/b/a/o/m/b$a;->g:F

    add-float/2addr v3, v9

    .line 42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_28

    const-string v10, " "

    const/16 v11, 0x9

    .line 43
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 44
    array-length v10, v9

    if-lt v10, v8, :cond_27

    .line 45
    aget-object v8, v9, v5

    const-string v10, "lineHeight="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 46
    aget-object v8, v9, v5

    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v1, La/b/a/o/m/b$a;->i:F

    .line 47
    aget-object v8, v9, v7

    const-string v10, "base="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 48
    aget-object v7, v9, v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 49
    array-length v10, v9

    const/4 v11, 0x6

    if-lt v10, v11, :cond_0

    aget-object v10, v9, v8

    if-eqz v10, :cond_0

    aget-object v10, v9, v8

    const-string v12, "pages="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    .line 50
    :try_start_1
    aget-object v8, v9, v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v8, 0x1

    .line 51
    :goto_0
    :try_start_2
    new-array v9, v8, [Ljava/lang/String;

    iput-object v9, v1, La/b/a/o/m/b$a;->b:[Ljava/lang/String;

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    .line 52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v11, ".*id=(\\d+)"

    .line 53
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 54
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 55
    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v9, :cond_1

    goto :goto_2

    .line 57
    :cond_1
    new-instance v3, La/b/a/r/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Page IDs must be indices starting at 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 58
    :try_start_4
    new-instance v4, La/b/a/r/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid page id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    :goto_2
    const-string v11, ".*file=\"?([^\"]+)\"?"

    .line 59
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 60
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 61
    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    iget-object v11, v1, La/b/a/o/m/b$a;->b:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, La/b/a/n/a;->g()La/b/a/n/a;

    move-result-object v12

    invoke-virtual {v12, v10}, La/b/a/n/a;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v10

    invoke-virtual {v10}, La/b/a/n/a;->h()Ljava/lang/String;

    move-result-object v10

    const-string v12, "\\\\"

    const-string v13, "/"

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 63
    :cond_3
    new-instance v3, La/b/a/r/d;

    const-string v4, "Missing: file"

    invoke-direct {v3, v4}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_4
    new-instance v3, La/b/a/r/d;

    const-string v4, "Missing additional page definitions."

    invoke-direct {v3, v4}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v8, 0x0

    .line 65
    iput v8, v1, La/b/a/o/m/b$a;->l:F

    .line 66
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v10, "metrics "

    const v11, 0xffff

    const-string v12, " ="

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    :try_start_5
    const-string v13, "kernings "

    .line 67
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_4

    .line 68
    :cond_7
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 69
    :goto_4
    iget v9, v1, La/b/a/o/m/b$a;->l:F

    iget v13, v1, La/b/a/o/m/b$a;->g:F

    add-float/2addr v9, v13

    iput v9, v1, La/b/a/o/m/b$a;->l:F

    .line 70
    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    const-string v13, "kerning "

    .line 71
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1b

    :goto_6
    if-eqz v9, :cond_9

    .line 72
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 73
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 75
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 76
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 77
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 78
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 79
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 80
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 81
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 82
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 83
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 84
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 85
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 86
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 87
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 88
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    move/from16 v21, v9

    move v9, v8

    move/from16 v8, v21

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 89
    :goto_7
    invoke-virtual {v1, v4}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v15

    if-nez v15, :cond_b

    .line 90
    new-instance v15, La/b/a/o/m/b$b;

    invoke-direct {v15}, La/b/a/o/m/b$b;-><init>()V

    .line 91
    iput v4, v15, La/b/a/o/m/b$b;->a:I

    const/16 v6, 0x6c

    .line 92
    invoke-virtual {v1, v6}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v6

    if-nez v6, :cond_a

    .line 93
    invoke-virtual/range {p0 .. p0}, La/b/a/o/m/b$a;->a()La/b/a/o/m/b$b;

    move-result-object v6

    .line 94
    :cond_a
    iget v6, v6, La/b/a/o/m/b$b;->l:I

    iput v6, v15, La/b/a/o/m/b$b;->l:I

    .line 95
    invoke-virtual {v1, v4, v15}, La/b/a/o/m/b$a;->a(ILa/b/a/o/m/b$b;)V

    .line 96
    :cond_b
    iget v4, v15, La/b/a/o/m/b$b;->d:I

    if-nez v4, :cond_c

    .line 97
    iget v4, v1, La/b/a/o/m/b$a;->h:F

    iget v6, v15, La/b/a/o/m/b$b;->l:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, v1, La/b/a/o/m/b$a;->f:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v15, La/b/a/o/m/b$b;->d:I

    .line 98
    iget v4, v1, La/b/a/o/m/b$a;->h:F

    neg-float v4, v4

    float-to-int v4, v4

    iput v4, v15, La/b/a/o/m/b$b;->j:I

    .line 99
    :cond_c
    iget v4, v15, La/b/a/o/m/b$b;->l:I

    int-to-float v4, v4

    iput v4, v1, La/b/a/o/m/b$a;->t:F

    .line 100
    iget-object v4, v1, La/b/a/o/m/b$a;->v:[C

    array-length v6, v4

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_8
    if-ge v15, v6, :cond_e

    move/from16 v18, v6

    aget-char v6, v4, v15

    .line 101
    invoke-virtual {v1, v6}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v17

    if-eqz v17, :cond_d

    goto :goto_9

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v18

    goto :goto_8

    :cond_e
    :goto_9
    if-nez v17, :cond_f

    .line 102
    invoke-virtual/range {p0 .. p0}, La/b/a/o/m/b$a;->a()La/b/a/o/m/b$b;

    move-result-object v17

    :cond_f
    move-object/from16 v4, v17

    .line 103
    iget v4, v4, La/b/a/o/m/b$b;->e:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, v1, La/b/a/o/m/b$a;->u:F

    .line 104
    iget-object v4, v1, La/b/a/o/m/b$a;->w:[C

    array-length v6, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v15, v6, :cond_11

    move/from16 v17, v6

    aget-char v6, v4, v15

    .line 105
    invoke-virtual {v1, v6}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v16

    if-eqz v16, :cond_10

    goto :goto_b

    :cond_10
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v17

    goto :goto_a

    :cond_11
    :goto_b
    move-object/from16 v15, v16

    if-nez v15, :cond_18

    .line 106
    iget-object v4, v1, La/b/a/o/m/b$a;->r:[[La/b/a/o/m/b$b;

    array-length v6, v4

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v6, :cond_17

    move/from16 v16, v6

    aget-object v6, v4, v15

    if-nez v6, :cond_12

    move-object/from16 v18, v2

    move-object/from16 v17, v4

    goto :goto_f

    :cond_12
    move-object/from16 v17, v4

    .line 107
    array-length v4, v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v4, :cond_16

    move/from16 v19, v4

    :try_start_6
    aget-object v4, v6, v2

    if-eqz v4, :cond_14

    move-object/from16 v20, v6

    .line 108
    iget v6, v4, La/b/a/o/m/b$b;->e:I

    if-eqz v6, :cond_15

    iget v6, v4, La/b/a/o/m/b$b;->d:I

    if-nez v6, :cond_13

    goto :goto_e

    .line 109
    :cond_13
    iget v6, v1, La/b/a/o/m/b$a;->j:F

    iget v4, v4, La/b/a/o/m/b$b;->e:I

    int-to-float v4, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, La/b/a/o/m/b$a;->j:F

    goto :goto_e

    :cond_14
    move-object/from16 v20, v6

    :cond_15
    :goto_e
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v19

    move-object/from16 v6, v20

    goto :goto_d

    :cond_16
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto :goto_c

    :cond_17
    move-object/from16 v18, v2

    goto :goto_10

    :cond_18
    move-object/from16 v18, v2

    .line 110
    iget v2, v15, La/b/a/o/m/b$b;->e:I

    int-to-float v2, v2

    iput v2, v1, La/b/a/o/m/b$a;->j:F

    .line 111
    :goto_10
    iget v2, v1, La/b/a/o/m/b$a;->j:F

    sub-float/2addr v2, v3

    iput v2, v1, La/b/a/o/m/b$a;->j:F

    sub-float/2addr v7, v2

    .line 112
    iput v7, v1, La/b/a/o/m/b$a;->k:F

    .line 113
    iget v2, v1, La/b/a/o/m/b$a;->i:F

    neg-float v2, v2

    iput v2, v1, La/b/a/o/m/b$a;->m:F

    if-eqz p2, :cond_19

    neg-float v3, v7

    .line 114
    iput v3, v1, La/b/a/o/m/b$a;->k:F

    neg-float v2, v2

    .line 115
    iput v2, v1, La/b/a/o/m/b$a;->m:F

    :cond_19
    if-eqz v5, :cond_1a

    .line 116
    iput v8, v1, La/b/a/o/m/b$a;->k:F

    .line 117
    iput v10, v1, La/b/a/o/m/b$a;->l:F

    .line 118
    iput v11, v1, La/b/a/o/m/b$a;->m:F

    .line 119
    iput v12, v1, La/b/a/o/m/b$a;->j:F

    .line 120
    iput v13, v1, La/b/a/o/m/b$a;->i:F

    .line 121
    iput v14, v1, La/b/a/o/m/b$a;->t:F

    .line 122
    iput v9, v1, La/b/a/o/m/b$a;->u:F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 123
    :cond_1a
    invoke-static/range {v18 .. v18}, La/b/a/r/q;->a(Ljava/io/Closeable;)V

    return-void

    :cond_1b
    move-object/from16 v18, v2

    .line 124
    :try_start_7
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 126
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 127
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 128
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 129
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ltz v6, :cond_1d

    if-gt v6, v11, :cond_1d

    if-ltz v9, :cond_1d

    if-le v9, v11, :cond_1c

    goto :goto_11

    :cond_1c
    int-to-char v6, v6

    .line 130
    invoke-virtual {v1, v6}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v6

    .line 131
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 132
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v6, :cond_1d

    .line 133
    invoke-virtual {v6, v9, v2}, La/b/a/o/m/b$b;->a(II)V

    :cond_1d
    :goto_11
    move-object/from16 v2, v18

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v18, v2

    const-string v2, "char "

    .line 134
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    :goto_12
    move-object/from16 v2, v18

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 135
    :cond_20
    new-instance v2, La/b/a/o/m/b$b;

    invoke-direct {v2}, La/b/a/o/m/b$b;-><init>()V

    .line 136
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 138
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 139
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_21

    .line 140
    iput-object v2, v1, La/b/a/o/m/b$a;->s:La/b/a/o/m/b$b;

    goto :goto_13

    :cond_21
    if-gt v9, v11, :cond_1f

    .line 141
    invoke-virtual {v1, v9, v2}, La/b/a/o/m/b$a;->a(ILa/b/a/o/m/b$b;)V

    .line 142
    :goto_13
    iput v9, v2, La/b/a/o/m/b$b;->a:I

    .line 143
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 144
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, La/b/a/o/m/b$b;->b:I

    .line 145
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 146
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, La/b/a/o/m/b$b;->c:I

    .line 147
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 148
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, La/b/a/o/m/b$b;->d:I

    .line 149
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 150
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, La/b/a/o/m/b$b;->e:I

    .line 151
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 152
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, La/b/a/o/m/b$b;->j:I

    .line 153
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    if-eqz p2, :cond_22

    .line 154
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, La/b/a/o/m/b$b;->k:I

    goto :goto_14

    .line 155
    :cond_22
    iget v9, v2, La/b/a/o/m/b$b;->e:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    neg-int v9, v9

    iput v9, v2, La/b/a/o/m/b$b;->k:I

    .line 156
    :goto_14
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 157
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, La/b/a/o/m/b$b;->l:I

    .line 158
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 159
    :cond_23
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v9, :cond_24

    .line 160
    :try_start_8
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, La/b/a/o/m/b$b;->o:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 161
    :catch_2
    :cond_24
    :try_start_9
    iget v6, v2, La/b/a/o/m/b$b;->d:I

    if-lez v6, :cond_1f

    iget v6, v2, La/b/a/o/m/b$b;->e:I

    if-lez v6, :cond_1f

    iget v2, v2, La/b/a/o/m/b$b;->k:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget v6, v1, La/b/a/o/m/b$a;->l:F

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, La/b/a/o/m/b$a;->l:F

    goto/16 :goto_12

    :cond_25
    move-object/from16 v18, v2

    .line 162
    new-instance v2, La/b/a/r/d;

    const-string v3, "Missing: base"

    invoke-direct {v2, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    move-object/from16 v18, v2

    .line 163
    new-instance v2, La/b/a/r/d;

    const-string v3, "Missing: lineHeight"

    invoke-direct {v2, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    move-object/from16 v18, v2

    .line 164
    new-instance v2, La/b/a/r/d;

    const-string v3, "Invalid common header."

    invoke-direct {v2, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    move-object/from16 v18, v2

    .line 165
    new-instance v2, La/b/a/r/d;

    const-string v3, "Missing common header."

    invoke-direct {v2, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    move-object/from16 v18, v2

    .line 166
    new-instance v2, La/b/a/r/d;

    const-string v3, "Invalid padding."

    invoke-direct {v2, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a
    move-object/from16 v18, v2

    .line 167
    new-instance v2, La/b/a/r/d;

    const-string v3, "File is empty."

    invoke-direct {v2, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_3
    move-exception v0

    goto :goto_16

    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    :goto_15
    move-object v2, v0

    goto :goto_17

    :catch_4
    move-exception v0

    move-object/from16 v18, v2

    :goto_16
    move-object v2, v0

    .line 168
    :try_start_a
    new-instance v3, La/b/a/r/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading font file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_15

    .line 169
    :goto_17
    invoke-static/range {v18 .. v18}, La/b/a/r/q;->a(Ljava/io/Closeable;)V

    throw v2

    .line 170
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already loaded."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :goto_18
    throw v2

    :goto_19
    goto :goto_18
.end method

.method public a(La/b/a/o/m/b$b;La/b/a/o/m/h;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, La/b/a/o/m/h;->a:La/b/a/o/i;

    .line 2
    invoke-virtual {v2}, La/b/a/o/i;->d()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 3
    invoke-virtual {v2}, La/b/a/o/i;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 4
    iget v2, v1, La/b/a/o/m/h;->b:F

    .line 5
    iget v5, v1, La/b/a/o/m/h;->c:F

    .line 6
    iget v6, v1, La/b/a/o/m/h;->d:I

    int-to-float v6, v6

    .line 7
    iget v7, v1, La/b/a/o/m/h;->e:I

    int-to-float v7, v7

    .line 8
    instance-of v8, v1, La/b/a/o/m/g;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 9
    check-cast v1, La/b/a/o/m/g;

    .line 10
    iget v8, v1, La/b/a/o/m/g;->f:F

    .line 11
    iget v10, v1, La/b/a/o/m/g;->i:I

    iget v11, v1, La/b/a/o/m/g;->h:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v1, v1, La/b/a/o/m/g;->g:F

    sub-float/2addr v10, v1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 12
    :goto_0
    iget v1, v0, La/b/a/o/m/b$b;->b:I

    int-to-float v11, v1

    .line 13
    iget v12, v0, La/b/a/o/m/b$b;->d:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    .line 14
    iget v13, v0, La/b/a/o/m/b$b;->c:I

    int-to-float v14, v13

    .line 15
    iget v15, v0, La/b/a/o/m/b$b;->e:I

    add-int/2addr v13, v15

    int-to-float v13, v13

    cmpl-float v15, v8, v9

    if-lez v15, :cond_2

    sub-float/2addr v11, v8

    cmpg-float v15, v11, v9

    if-gez v15, :cond_1

    int-to-float v12, v12

    add-float/2addr v12, v11

    float-to-int v12, v12

    .line 16
    iput v12, v0, La/b/a/o/m/b$b;->d:I

    .line 17
    iget v12, v0, La/b/a/o/m/b$b;->j:I

    int-to-float v12, v12

    sub-float/2addr v12, v11

    float-to-int v11, v12

    iput v11, v0, La/b/a/o/m/b$b;->j:I

    const/4 v11, 0x0

    :cond_1
    sub-float/2addr v1, v8

    cmpl-float v8, v1, v6

    if-lez v8, :cond_2

    .line 18
    iget v8, v0, La/b/a/o/m/b$b;->d:I

    int-to-float v8, v8

    sub-float/2addr v1, v6

    sub-float/2addr v8, v1

    float-to-int v1, v8

    iput v1, v0, La/b/a/o/m/b$b;->d:I

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    cmpl-float v1, v10, v9

    if-lez v1, :cond_6

    sub-float/2addr v14, v10

    cmpg-float v1, v14, v9

    if-gez v1, :cond_3

    .line 19
    iget v1, v0, La/b/a/o/m/b$b;->e:I

    int-to-float v1, v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, La/b/a/o/m/b$b;->e:I

    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 20
    iput v1, v0, La/b/a/o/m/b$b;->e:I

    goto :goto_2

    :cond_3
    move v9, v14

    :cond_4
    :goto_2
    sub-float/2addr v13, v10

    cmpl-float v1, v13, v7

    if-lez v1, :cond_5

    sub-float/2addr v13, v7

    .line 21
    iget v1, v0, La/b/a/o/m/b$b;->e:I

    int-to-float v1, v1

    sub-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, La/b/a/o/m/b$b;->e:I

    .line 22
    iget v1, v0, La/b/a/o/m/b$b;->k:I

    int-to-float v1, v1

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, La/b/a/o/m/b$b;->k:I

    move v14, v9

    goto :goto_3

    :cond_5
    move v14, v9

    :cond_6
    move v7, v13

    :goto_3
    mul-float v11, v11, v3

    add-float/2addr v11, v2

    .line 23
    iput v11, v0, La/b/a/o/m/b$b;->f:F

    mul-float v6, v6, v3

    add-float/2addr v6, v2

    .line 24
    iput v6, v0, La/b/a/o/m/b$b;->h:F

    move-object/from16 v1, p0

    .line 25
    iget-boolean v2, v1, La/b/a/o/m/b$a;->d:Z

    if-eqz v2, :cond_7

    mul-float v14, v14, v4

    add-float/2addr v14, v5

    .line 26
    iput v14, v0, La/b/a/o/m/b$b;->g:F

    mul-float v7, v7, v4

    add-float/2addr v7, v5

    .line 27
    iput v7, v0, La/b/a/o/m/b$b;->i:F

    goto :goto_4

    :cond_7
    mul-float v14, v14, v4

    add-float/2addr v14, v5

    .line 28
    iput v14, v0, La/b/a/o/m/b$b;->i:F

    mul-float v7, v7, v4

    add-float/2addr v7, v5

    .line 29
    iput v7, v0, La/b/a/o/m/b$b;->g:F

    :goto_4
    return-void
.end method

.method public a(La/b/a/o/m/d$a;Ljava/lang/CharSequence;IILa/b/a/o/m/b$b;)V
    .locals 9

    .line 180
    iget v0, p0, La/b/a/o/m/b$a;->o:F

    .line 181
    iget-object v1, p0, La/b/a/o/m/b$a;->s:La/b/a/o/m/b$b;

    .line 182
    iget-object v2, p1, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 183
    iget-object p1, p1, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    sub-int v3, p4, p3

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    const-string v5, "additionalCapacity must be >= 0: "

    if-ltz v3, :cond_d

    .line 184
    iget v6, v2, La/b/a/r/a;->b:I

    add-int/2addr v6, v3

    .line 185
    iget-object v7, v2, La/b/a/r/a;->a:[Ljava/lang/Object;

    array-length v7, v7

    const/16 v8, 0x8

    if-le v6, v7, :cond_0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v2, v6}, La/b/a/r/a;->b(I)[Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    if-eqz p1, :cond_c

    if-ltz v3, :cond_b

    .line 186
    iget v4, p1, La/b/a/r/b;->b:I

    add-int/2addr v4, v3

    .line 187
    iget-object v3, p1, La/b/a/r/b;->a:[F

    array-length v3, v3

    if-le v4, v3, :cond_1

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, La/b/a/r/b;->b(I)[F

    :cond_1
    :goto_0
    if-ge p3, p4, :cond_8

    add-int/lit8 v3, p3, 0x1

    .line 188
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 v4, 0xd

    if-ne p3, v4, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {p0, p3}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v4

    if-nez v4, :cond_4

    if-nez v1, :cond_3

    :goto_1
    move p3, v3

    goto :goto_0

    :cond_3
    move-object v4, v1

    .line 190
    :cond_4
    invoke-virtual {v2, v4}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    if-nez p5, :cond_6

    .line 191
    iget-boolean p3, v4, La/b/a/o/m/b$b;->n:Z

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    goto :goto_2

    :cond_5
    iget p3, v4, La/b/a/o/m/b$b;->j:I

    neg-int p3, p3

    int-to-float p3, p3

    mul-float p3, p3, v0

    iget p5, p0, La/b/a/o/m/b$a;->h:F

    sub-float/2addr p3, p5

    :goto_2
    invoke-virtual {p1, p3}, La/b/a/r/b;->a(F)V

    goto :goto_4

    .line 192
    :cond_6
    iget v5, p5, La/b/a/o/m/b$b;->l:I

    .line 193
    iget-object p5, p5, La/b/a/o/m/b$b;->m:[[B

    if-eqz p5, :cond_7

    ushr-int/lit8 v6, p3, 0x9

    .line 194
    aget-object p5, p5, v6

    if-eqz p5, :cond_7

    and-int/lit16 p3, p3, 0x1ff

    .line 195
    aget-byte p3, p5, p3

    goto :goto_3

    :cond_7
    const/4 p3, 0x0

    :goto_3
    add-int/2addr v5, p3

    int-to-float p3, v5

    mul-float p3, p3, v0

    .line 196
    invoke-virtual {p1, p3}, La/b/a/r/b;->a(F)V

    :goto_4
    move p3, v3

    move-object p5, v4

    goto :goto_0

    :cond_8
    if-eqz p5, :cond_a

    .line 197
    iget-boolean p2, p5, La/b/a/o/m/b$b;->n:Z

    if-eqz p2, :cond_9

    iget p2, p5, La/b/a/o/m/b$b;->l:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    goto :goto_5

    :cond_9
    iget p2, p5, La/b/a/o/m/b$b;->d:I

    iget p3, p5, La/b/a/o/m/b$b;->j:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    mul-float p2, p2, v0

    iget p3, p0, La/b/a/o/m/b$a;->f:F

    sub-float/2addr p2, p3

    .line 198
    :goto_5
    invoke-virtual {p1, p2}, La/b/a/r/b;->a(F)V

    :cond_a
    return-void

    .line 199
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5, v3}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_c
    throw v4

    .line 201
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5, v3}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_e
    goto :goto_7

    :goto_6
    throw v4

    :goto_7
    goto :goto_6
.end method

.method public b(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/m/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
